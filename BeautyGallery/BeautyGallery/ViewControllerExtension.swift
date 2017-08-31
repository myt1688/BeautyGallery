//
//  ViewControllerExtension.swift
//  BeautyGallery
//
//  Created by yutaoma on 2017/8/30.
//  Copyright © 2017年 yutaoma. All rights reserved.
//

import UIKit

extension ViewController: UIPickerViewDataSource, UIPickerViewDelegate{
    
    //列数
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    //行数
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return beauties.count
    }
    
    //数据内容， component：列， row：行
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return beauties[row]
    }
}
