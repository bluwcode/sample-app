//
//  ViewController.swift
//  sample-app
//
//  Created by takahiro on 2020/10/11.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var clocktextfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        outputtoday()
    }
    func gettoday(format:String = "yyyy/mm/dd HH:MM ss") -> String{
        let now = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = format
        return formatter.string(from:now as Date)
    }
    func outputtoday(){
        clocktextfield.text = gettoday()
    }

}
