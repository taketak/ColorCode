//
//  ViewController.swift
//  ColorCode
//
//  Created by 武内駿 on 2015/07/14.
//  Copyright (c) 2015年 Syun Takeuchi. All rights reserved.
//  抵抗値をさっと調べる用アプリ。カラーコードがわからない内は便利

import UIKit

class ViewController: UIViewController ,UIPickerViewDataSource ,UIPickerViewDelegate {


    @IBOutlet weak var ColorsPicker: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ColorsPicker.dataSource=self
        ColorsPicker.delegate=self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //列数
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 4
    }
    //行数
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 2 {
            return 12
        }
        else if component == 3 {
        return 5
        }
        return 10
    }
    //表示するラベル
    func pickerView(pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusingView view: UIView?) -> UIView {
        //動作重視の実装。コードが汚いけど直すヒマなし
        //ラベル生成
        let lb1:UILabel=UILabel()
        lb1.textAlignment=NSTextAlignment.Center
        if component == 0 || component == 1 {
            switch row {
            case 0:
                lb1.text="黒:0"
                lb1.backgroundColor=UIColor.whiteColor()
            case 1:
                lb1.text="茶:1"
                lb1.backgroundColor=UIColor.brownColor()
            case 2:
                lb1.text="赤:2"
                lb1.backgroundColor=UIColor.redColor()
            case 3:
                lb1.text="橙:3"
                lb1.backgroundColor=UIColor.orangeColor()
            case 4:
                lb1.text="黄:4"
                lb1.backgroundColor=UIColor.yellowColor()
            case 5:
                lb1.text="緑:5"
                lb1.backgroundColor=UIColor.greenColor()
            case 6:
                lb1.text="青:6"
                lb1.backgroundColor=UIColor.blueColor()
            case 7:
                lb1.text="紫:7"
                lb1.backgroundColor=UIColor.purpleColor()
            case 8:
                lb1.text="灰:8"
                lb1.backgroundColor=UIColor.grayColor()
            case 9:
                lb1.text="白:9"
                lb1.backgroundColor=UIColor.whiteColor()
            default:
                break
            }
        }
            else if component == 2 {
            switch row {
                case 0:
                lb1.text="黒:0乗"
                lb1.backgroundColor=UIColor.whiteColor()
                case 1:
                lb1.text="茶:1乗"
                lb1.backgroundColor=UIColor.brownColor()
                case 2:
                lb1.text="赤:2乗"
                lb1.backgroundColor=UIColor.redColor()
                case 3:
                lb1.text="橙:3乗"
                lb1.backgroundColor=UIColor.orangeColor()
                case 4:
                lb1.text="黄:4乗"
                lb1.backgroundColor=UIColor.yellowColor()
                case 5:
                lb1.text="緑:5乗"
                lb1.backgroundColor=UIColor.greenColor()
                case 6:
                lb1.text="青:6乗"
                lb1.backgroundColor=UIColor.blueColor()
                case 7:
                lb1.text="紫:7乗"
                lb1.backgroundColor=UIColor.purpleColor()
                case 8:
                lb1.text="灰:8乗"
                lb1.backgroundColor=UIColor.grayColor()
                case 9:
                lb1.text="白:9乗"
                lb1.backgroundColor=UIColor.whiteColor()
                case 10:
                lb1.text="金:-1乗"
                lb1.backgroundColor=UIColor.yellowColor()
                case 11:
                lb1.text="銀:-2乗"
                lb1.backgroundColor=UIColor.grayColor()
                default:
                break
            }
        }
        else if component == 3 {
            switch row {
            case 0:
                lb1.text="茶:±1%"
                lb1.backgroundColor=UIColor.brownColor()
            case 1:
                lb1.text="赤:±2%"
                lb1.backgroundColor=UIColor.redColor()
            case 2:
                lb1.text="金:±5%"
                lb1.backgroundColor=UIColor.yellowColor()
            case 3:
                lb1.text="銀:±10%"
                lb1.backgroundColor=UIColor.grayColor()
            case 4:
                lb1.text="無:±20%"
                lb1.backgroundColor=UIColor.whiteColor()
            default:
                break
            }
        
        
        }
        
    return lb1
    }
    


}

