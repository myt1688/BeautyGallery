//
//  GalleryViewController.swift
//  BeautyGallery
//
//  Created by yutaoma on 2017/8/30.
//  Copyright © 2017年 yutaoma. All rights reserved.
//

import UIKit
import Social

class GalleryViewController: UIViewController {
    
    var imageName: String?
    
    
    @IBOutlet weak var beautyImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if let name = imageName {
            beautyImage.image = UIImage(named: imageName!)
            
            switch name {
                case "fangbingbing":
                    navigationItem.title = "范冰冰"
                case "libingbing":
                    navigationItem.title = "李冰冰"
                case "wangfei":
                    navigationItem.title = "王菲"
                case "yangmi":
                    navigationItem.title = "杨幂"
                case "zhouxu":
                    navigationItem.title = "周迅"
                default:
                    navigationItem.title = "BeautyGallery"
                
            }
        }
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func share(_ sender: Any) {
        let controller: SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
        controller.setInitialText(" this is Beauty Gallery")
        controller.add(beautyImage.image)
        self.present(controller, animated: true, completion: nil)
    }
    
}




