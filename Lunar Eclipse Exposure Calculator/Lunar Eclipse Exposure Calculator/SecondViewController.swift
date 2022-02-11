//
//  SecondViewController.swift
//  Lunar Eclipse Exposure Calculator
//
//  Created by Chris yang on 2022/2/10.
//

import UIKit
import Foundation

class SecondViewController: UIViewController {

    @IBOutlet weak var aperture: UITextField!
    @IBOutlet weak var iso: UITextField!
    @IBOutlet weak var qvalue: UITextField!
    
    @IBOutlet weak var shutterspeed: UILabel!
    
    @IBAction func getresult(_ sender: Any) {
        
        if (aperture.text != "" && iso.text != "" && qvalue.text != ""){
            shutterspeed.text = "\(String(format: "%.7f", pow((Double(aperture.text!)!),2) / ((Double(iso.text!)!) * pow(2,(Double(qvalue.text!)!))))) s"
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        super.touchesBegan(touches, with: event)
    }

}


