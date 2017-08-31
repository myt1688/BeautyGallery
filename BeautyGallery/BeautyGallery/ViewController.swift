//
//  ViewController.swift
//  BeautyGallery
//
//  Created by yutaoma on 2017/8/30.
//  Copyright © 2017年 yutaoma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var beautyPicker: UIPickerView!
    var beauties = ["范冰冰", "李冰冰", "王菲", "杨幂", "周迅"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //数据从左到右传递时会调用此方法
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToGallery" {
            let index = beautyPicker.selectedRow(inComponent: 0) // 选择的为第 0 列 的 0-4 行
            
            var imageName : String?
            
            switch index {
            case 0:
                imageName = "fangbingbing"
            case 1:
                imageName = "libingbing"
            case 2:
                imageName = "wangfei"
            case 3:
                imageName = "yangmi"
            case 4:
                imageName = "zhouxu"
            default:
                imageName = nil

            }
            
            let vc  = segue.destination as! GalleryViewController
            vc.imageName = imageName
        }
    }
    
    @IBAction func close(segue: UIStoryboardSegue) {
        print("closed")
    }
}

