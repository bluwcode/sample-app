//
//  ViewController.swift
//  sample-app
//
//  Created by takahiro on 2020/10/11.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var clocktextfield: UITextField!

    var timeInterval = TimeInterval()
    override func viewDidLoad() {
        super.viewDidLoad()
      
        // Do any additional setup after loading the view.
            _ = Timer.scheduledTimer(timeInterval:1, target:self,selector: #selector(outputtime),userInfo: nil, repeats: true)
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
            return 1
        }
   
    func gettoday(format:String = "yyyy/MM/dd HH:mm ss") -> String{
        let now = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = format
        return formatter.string(from:now as Date)
    }
    @objc func outputtime(){
     clocktextfield.text = gettoday()
    }

}
