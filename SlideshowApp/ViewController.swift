//
//  ViewController.swift
//  SlideshowApp
//
//  Created by Reina Iketani on 2023/06/02.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var images: UIImageView!
    @IBOutlet weak var startButton: UIButton!
    
    @IBOutlet weak var nextbutton: UIButton!
    @IBOutlet weak var prevbutton: UIButton!
    
    var nowIndex:Int = 0
    
    var timer: Timer!
    
    var imageArray:[UIImage] = [
            UIImage(named: "himawari.png")!,
            UIImage(named: "hatsuga.png")!,
            UIImage(named: "suikadaki.png")!,
            UIImage(named: "nikoniko-suika.png")!,
            UIImage(named: "suika-tane.png")!
        ]
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        images.image = imageArray[nowIndex]
        
    }
    
    
    //再生ボタンを押したら
    
    @IBAction func slideShowButton(_ sender: Any) {
        if(timer == nil) {
            timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(changeImage), userInfo: nil, repeats: true)
            
            startButton.setTitle("停止", for: .normal)
            
            nextbutton.isHidden = true
            prevbutton.isHidden = true
            
        }else{
            timer.invalidate()
            timer = nil
            startButton.setTitle("再生", for: .normal)
            
            nextbutton.isHidden = false
            prevbutton.isHidden = false
        }
    }
    
    @objc func changeImage(){
        nowIndex += 1
        
        if(nowIndex == imageArray.count){
            nowIndex = 0
        }
        images.image = imageArray[nowIndex]
    }
    
    
    @IBAction func next(_ sender: Any) {
        nowIndex += 1
        if(nowIndex == imageArray.count){
            nowIndex = 0
        }
        images.image = imageArray[nowIndex]
        
    }
    
    @IBAction func prev(_ sender: Any) {
        nowIndex -= 1
        if(nowIndex < 0){
            nowIndex = imageArray.count - 1
        }
        images.image = imageArray[nowIndex]
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let upimagesViewContoroller:upimagesViewController = segue.destination as! upimagesViewController
        upimagesViewContoroller.nowIndex = nowIndex
    }
    
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
        }


}

