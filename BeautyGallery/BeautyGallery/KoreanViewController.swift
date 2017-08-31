//
//  KoreanViewController.swift
//  BeautyGallery
//
//  Created by yutaoma on 2017/8/31.
//  Copyright © 2017年 yutaoma. All rights reserved.
//

import UIKit
import Social

class KoreanViewController: UIViewController {
    
   
    @IBOutlet weak var beautyImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func facebookShare(_ sender: Any) {
        let controller: SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeFacebook)
        controller.setInitialText(" this is Beauty Gallery")
        controller.add(beautyImage.image)
        self.present(controller, animated: true, completion: nil)
    }
    
    @IBAction func twitterShare(_ sender: Any) {
        let controller: SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
        controller.setInitialText(" this is Beauty Gallery")
        controller.add(beautyImage.image)
        self.present(controller, animated: true, completion: nil)
    }

    @IBAction func weiboShare(_ sender: Any) {
        let controller: SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeSinaWeibo)
        controller.setInitialText(" this is Beauty Gallery")
        controller.add(beautyImage.image)
        self.present(controller, animated: true, completion: nil)
    }
    
}
