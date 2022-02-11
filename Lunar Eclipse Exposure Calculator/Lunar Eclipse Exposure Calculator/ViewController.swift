//
//  ViewController.swift
//  Lunar Eclipse Exposure Calculator
//
//  Created by Chris yang on 2022/2/1.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate, UIPickerViewDataSource {
    
    let stages = ["Full moon","(Penumbral LE) Mag = 1.00","(Partial LE) Mag = 0.00","(Partial LE) Mag = 0.30","(Partial LE) Mag = 0.60","(Partial LE) Mag = 0.80","(Partial LE) Mag = 0.90","(Partial LE) Mag = 0.95","(Total LE) Danjon: L = 4","(Total LE) Danjon: L = 3","(Total LE) Danjon: L = 2","(Total LE) Danjon: L = 1","(Total LE) Danjon: L = 0"]
    
    let iso = ["25","50","100","200","400","800","1600"]
    
    let aperture = ["f/1.4","f/2.0","f/2.8","f/4.0","f/5.6","f/8.0","f/11","f/16","f/22","f/32","f/44","f/64","f/88","f/128","f/176"]
    
    
    @IBOutlet weak var StageSelect: UIPickerView!
    @IBOutlet weak var IsoSelect: UIPickerView!
    @IBOutlet weak var ApertureSelect: UIPickerView!
    
    @IBOutlet weak var ShutterSpeed: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        StageSelect.delegate = self
        StageSelect.dataSource = self
        IsoSelect.delegate = self
        IsoSelect.dataSource = self
        ApertureSelect.delegate = self
        ApertureSelect.dataSource = self
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
        
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if (pickerView.tag == 1) {
            return stages.count
        }
        else if (pickerView.tag == 2) {
            return iso.count
        }
        else {
            return aperture.count
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if (pickerView.tag == 1) {
            return stages[row]
        }
        else if (pickerView.tag == 2) {
            return iso[row]
        }
        else {
            return aperture[row]
        }
    }
    
    var checka : Int = 0
    var checkb : Int = 0
    var checkc : Int = 0
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {

        if (pickerView.tag == 1) {
            if (row == 0) {
                checka = 0;
            }else if (row == 1) {
                checka = 1;
            }else if (row == 2) {
                checka = 2;
            }else if (row == 3) {
                checka = 3;
            }else if (row == 4) {
                checka = 4;
            }else if (row == 5) {
                checka = 5;
            }else if (row == 6) {
                checka = 6;
            }else if (row == 7) {
                checka = 7;
            }else if (row == 8) {
                checka = 8;
            }else if (row == 9) {
                checka = 9;
            }else if (row == 10) {
                checka = 10;
            }else if (row == 11) {
                checka = 11;
            }else if (row == 12) {
                checka = 12;
            }
        }
        
        if (pickerView.tag == 2) {
            if (row == 0) {
                checkb = 0;
            }else if (row == 1) {
                checkb = 1;
            }else if (row == 2) {
                checkb = 2;
            }else if (row == 3) {
                checkb = 3;
            }else if (row == 4) {
                checkb = 4;
            }else if (row == 5) {
                checkb = 5;
            }else if (row == 6) {
                checkb = 6;
            }
        }
                
                
        if (pickerView.tag == 3) {
            if (row == 0) {
                checkc = 0;
            }else if (row == 1) {
                checkc = 1;
            }else if (row == 2) {
                checkc = 2;
            }else if (row == 3) {
                checkc = 3;
            }else if (row == 4) {
                checkc = 4;
            }else if (row == 5) {
                checkc = 5;
            }else if (row == 6) {
                checkc = 6;
            }else if (row == 7) {
                checkc = 7;
            }else if (row == 8) {
                checkc = 8;
            }else if (row == 9) {
                checkc = 9;
            }else if (row == 10) {
                checkc = 10;
            }else if (row == 11) {
                checkc = 11;
            }else if (row == 12) {
                checkc = 12;
            }else if (row == 13) {
                checkc = 13;
            }else if (row == 14) {
                checkc = 14;
            }
        }
        
        
        
        if (checka == 0) {
            if (checkc == checkb) {
                self.ShutterSpeed.text = "1/4000 s"
            }else if (checkc == checkb+1) {
                self.ShutterSpeed.text = "1/2000 s"
            }else if (checkc == checkb+2) {
                self.ShutterSpeed.text = "1/1000 s"
            }else if (checkc == checkb+3) {
                self.ShutterSpeed.text = "1/500 s"
            }else if (checkc == checkb+4) {
                self.ShutterSpeed.text = "1/250 s"
            }else if (checkc == checkb+5) {
                self.ShutterSpeed.text = "1/125 s"
            }else if (checkc == checkb+6) {
                self.ShutterSpeed.text = "1/60 s"
            }else if (checkc == checkb+7) {
                self.ShutterSpeed.text = "1/30 s"
            }else if (checkc == checkb+8) {
                self.ShutterSpeed.text = "1/15 s"
            }else {
                self.ShutterSpeed.text = "Invalid"
            }
        }else if (checka == 1) {
            if (checkc == checkb) {
                self.ShutterSpeed.text = "1/2000 s"
            }else if (checkc == checkb+1) {
                self.ShutterSpeed.text = "1/1000 s"
            }else if (checkc == checkb+2) {
                self.ShutterSpeed.text = "1/500 s"
            }else if (checkc == checkb+3) {
                self.ShutterSpeed.text = "1/250 s"
            }else if (checkc == checkb+4) {
                self.ShutterSpeed.text = "1/125 s"
            }else if (checkc == checkb+5) {
                self.ShutterSpeed.text = "1/60 s"
            }else if (checkc == checkb+6) {
                self.ShutterSpeed.text = "1/30 s"
            }else if (checkc == checkb+7) {
                self.ShutterSpeed.text = "1/15 s"
            }else if (checkc == checkb+8) {
                self.ShutterSpeed.text = "1/8 s"
            }else {
                self.ShutterSpeed.text = "Invalid"
            }
        }else if (checka == 2) {
            if (checkc == checkb) {
                self.ShutterSpeed.text = "1/2000 s"
            }else if (checkc == checkb+1) {
                self.ShutterSpeed.text = "1/1000 s"
            }else if (checkc == checkb+2) {
                self.ShutterSpeed.text = "1/500 s"
            }else if (checkc == checkb+3) {
                self.ShutterSpeed.text = "1/250 s"
            }else if (checkc == checkb+4) {
                self.ShutterSpeed.text = "1/125 s"
            }else if (checkc == checkb+5) {
                self.ShutterSpeed.text = "1/60 s"
            }else if (checkc == checkb+6) {
                self.ShutterSpeed.text = "1/30 s"
            }else if (checkc == checkb+7) {
                self.ShutterSpeed.text = "1/15 s"
            }else if (checkc == checkb+8) {
                self.ShutterSpeed.text = "1/8 s"
            }else {
                self.ShutterSpeed.text = "Invalid"
            }
        }else if (checka == 3) {
            if (checkc == checkb) {
                self.ShutterSpeed.text = "1/1000 s"
            }else if (checkc == checkb+1) {
                self.ShutterSpeed.text = "1/500 s"
            }else if (checkc == checkb+2) {
                self.ShutterSpeed.text = "1/250 s"
            }else if (checkc == checkb+3) {
                self.ShutterSpeed.text = "1/125 s"
            }else if (checkc == checkb+4) {
                self.ShutterSpeed.text = "1/60 s"
            }else if (checkc == checkb+5) {
                self.ShutterSpeed.text = "1/30 s"
            }else if (checkc == checkb+6) {
                self.ShutterSpeed.text = "1/15 s"
            }else if (checkc == checkb+7) {
                self.ShutterSpeed.text = "1/8 s"
            }else if (checkc == checkb+8) {
                self.ShutterSpeed.text = "1/4 s"
            }else {
                self.ShutterSpeed.text = "Invalid"
            }
        }else if (checka == 4) {
            if (checkc == checkb) {
                self.ShutterSpeed.text = "1/500 s"
            }else if (checkc == checkb+1) {
                self.ShutterSpeed.text = "1/250 s"
            }else if (checkc == checkb+2) {
                self.ShutterSpeed.text = "1/125 s"
            }else if (checkc == checkb+3) {
                self.ShutterSpeed.text = "1/60 s"
            }else if (checkc == checkb+4) {
                self.ShutterSpeed.text = "1/30 s"
            }else if (checkc == checkb+5) {
                self.ShutterSpeed.text = "1/15 s"
            }else if (checkc == checkb+6) {
                self.ShutterSpeed.text = "1/8 s"
            }else if (checkc == checkb+7) {
                self.ShutterSpeed.text = "1/4 s"
            }else if (checkc == checkb+8) {
                self.ShutterSpeed.text = "1/2 s"
            }else {
                self.ShutterSpeed.text = "Invalid"
            }
        }else if (checka == 5) {
            if (checkc == checkb) {
                self.ShutterSpeed.text = "1/250 s"
            }else if (checkc == checkb+1) {
                self.ShutterSpeed.text = "1/125 s"
            }else if (checkc == checkb+2) {
                self.ShutterSpeed.text = "1/60 s"
            }else if (checkc == checkb+3) {
                self.ShutterSpeed.text = "1/30 s"
            }else if (checkc == checkb+4) {
                self.ShutterSpeed.text = "1/15 s"
            }else if (checkc == checkb+5) {
                self.ShutterSpeed.text = "1/8 s"
            }else if (checkc == checkb+6) {
                self.ShutterSpeed.text = "1/4 s"
            }else if (checkc == checkb+7) {
                self.ShutterSpeed.text = "1/2 s"
            }else if (checkc == checkb+8) {
                self.ShutterSpeed.text = "1 s"
            }else {
                self.ShutterSpeed.text = "Invalid"
            }
        }else if (checka == 6) {
            if (checkc == checkb) {
                self.ShutterSpeed.text = "1/125 s"
            }else if (checkc == checkb+1) {
                self.ShutterSpeed.text = "1/60 s"
            }else if (checkc == checkb+2) {
                self.ShutterSpeed.text = "1/30 s"
            }else if (checkc == checkb+3) {
                self.ShutterSpeed.text = "1/15 s"
            }else if (checkc == checkb+4) {
                self.ShutterSpeed.text = "1/8 s"
            }else if (checkc == checkb+5) {
                self.ShutterSpeed.text = "1/4 s"
            }else if (checkc == checkb+6) {
                self.ShutterSpeed.text = "1/2 s"
            }else if (checkc == checkb+7) {
                self.ShutterSpeed.text = "1 s"
            }else if (checkc == checkb+8) {
                self.ShutterSpeed.text = "2 s"
            }else {
                self.ShutterSpeed.text = "Invalid"
            }
        }else if (checka == 7) {
            if (checkc == checkb) {
                self.ShutterSpeed.text = "1/60 s"
            }else if (checkc == checkb+1) {
                self.ShutterSpeed.text = "1/630 s"
            }else if (checkc == checkb+2) {
                self.ShutterSpeed.text = "1/15 s"
            }else if (checkc == checkb+3) {
                self.ShutterSpeed.text = "1/8 s"
            }else if (checkc == checkb+4) {
                self.ShutterSpeed.text = "1/4 s"
            }else if (checkc == checkb+5) {
                self.ShutterSpeed.text = "1/2 s"
            }else if (checkc == checkb+6) {
                self.ShutterSpeed.text = "1 s"
            }else if (checkc == checkb+7) {
                self.ShutterSpeed.text = "2 s"
            }else if (checkc == checkb+8) {
                self.ShutterSpeed.text = "4 s"
            }else {
                self.ShutterSpeed.text = "Invalid"
            }
        }else if (checka == 8) {
            if (checkc == checkb) {
                self.ShutterSpeed.text = "1/2 s"
            }else if (checkc == checkb+1) {
                self.ShutterSpeed.text = "1 s"
            }else if (checkc == checkb+2) {
                self.ShutterSpeed.text = "2 s"
            }else if (checkc == checkb+3) {
                self.ShutterSpeed.text = "4 s"
            }else if (checkc == checkb+4) {
                self.ShutterSpeed.text = "8 s"
            }else if (checkc == checkb+5) {
                self.ShutterSpeed.text = "15 s"
            }else if (checkc == checkb+6) {
                self.ShutterSpeed.text = "30 s"
            }else if (checkc == checkb+7) {
                self.ShutterSpeed.text = "1 min"
            }else if (checkc == checkb+8) {
                self.ShutterSpeed.text = "2 min"
            }else {
                self.ShutterSpeed.text = "Invalid"
            }
        }else if (checka == 9) {
            if (checkc == checkb) {
                self.ShutterSpeed.text = "2 s"
            }else if (checkc == checkb+1) {
                self.ShutterSpeed.text = "4 s"
            }else if (checkc == checkb+2) {
                self.ShutterSpeed.text = "8 s"
            }else if (checkc == checkb+3) {
                self.ShutterSpeed.text = "15 s"
            }else if (checkc == checkb+4) {
                self.ShutterSpeed.text = "30 s"
            }else if (checkc == checkb+5) {
                self.ShutterSpeed.text = "1 min"
            }else if (checkc == checkb+6) {
                self.ShutterSpeed.text = "2 min"
            }else if (checkc == checkb+7) {
                self.ShutterSpeed.text = "4 min"
            }else if (checkc == checkb+8) {
                self.ShutterSpeed.text = "8 min"
            }else {
                self.ShutterSpeed.text = "Invalid"
            }
        }else if (checka == 10) {
            if (checkc == checkb) {
                self.ShutterSpeed.text = "8 s"
            }else if (checkc == checkb+1) {
                self.ShutterSpeed.text = "15 s"
            }else if (checkc == checkb+2) {
                self.ShutterSpeed.text = "30 s"
            }else if (checkc == checkb+3) {
                self.ShutterSpeed.text = "1 min"
            }else if (checkc == checkb+4) {
                self.ShutterSpeed.text = "2 min"
            }else if (checkc == checkb+5) {
                self.ShutterSpeed.text = "4 min"
            }else if (checkc == checkb+6) {
                self.ShutterSpeed.text = "8 min"
            }else if (checkc == checkb+7) {
                self.ShutterSpeed.text = "15 min"
            }else if (checkc == checkb+8) {
                self.ShutterSpeed.text = "30 min"
            }else {
                self.ShutterSpeed.text = "Invalid"
            }
        }else if (checka == 11) {
            if (checkc == checkb) {
                self.ShutterSpeed.text = "30 s"
            }else if (checkc == checkb+1) {
                self.ShutterSpeed.text = "1 min"
            }else if (checkc == checkb+2) {
                self.ShutterSpeed.text = "2 min"
            }else if (checkc == checkb+3) {
                self.ShutterSpeed.text = "4 min"
            }else if (checkc == checkb+4) {
                self.ShutterSpeed.text = "8 min"
            }else if (checkc == checkb+5) {
                self.ShutterSpeed.text = "15 min"
            }else if (checkc == checkb+6) {
                self.ShutterSpeed.text = "30 min"
            }else {
                self.ShutterSpeed.text = "Invalid"
            }
        }else if (checka == 12) {
            if (checkc == checkb) {
                self.ShutterSpeed.text = "2 min"
            }else if (checkc == checkb+1) {
                self.ShutterSpeed.text = "4 min"
            }else if (checkc == checkb+2) {
                self.ShutterSpeed.text = "8 min"
            }else if (checkc == checkb+3) {
                self.ShutterSpeed.text = "15 min"
            }else if (checkc == checkb+4) {
                self.ShutterSpeed.text = "30 min"
            }else {
                self.ShutterSpeed.text = "Invalid"
            }
        }
        
    }
    
    
}

