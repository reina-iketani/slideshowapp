//
//  upimagesViewController.swift
//  SlideshowApp
//
//  Created by Reina Iketani on 2023/06/02.
//

import UIKit

class upimagesViewController: UIViewController {
    
    
    @IBOutlet weak var image: UIImageView!
    
    var nowIndex:Int = 0
    
    var imageArray:[UIImage] = [
            UIImage(named: "himawari.png")!,
            UIImage(named: "hatsuga.png")!,
            UIImage(named: "suikadaki.png")!,
            UIImage(named: "nikoniko-suika.png")!,
            UIImage(named: "suika-tane.png")!
        ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        image.image = imageArray[nowIndex]

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    
}
