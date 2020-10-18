//
//  ViewController.swift
//  sample-app
//
//  Created by takahiro on 2020/10/11.
//

import UIKit

class checkinViewController: UIViewController {
    @IBOutlet weak var clocktextField: UITextField!
    var timeInterval = TimeInterval()
    override func viewDidLoad() {
        super.viewDidLoad()
      
        // Do any additional setup after loading the view.
        outputtime()
        _ = Timer.scheduledTimer(timeInterval:1, target:self,selector: #selector(outputtime),userInfo: nil, repeats: true)
    }
   
    func gettoday(format:String = "yyyy/MM/dd HH:mm ss") -> String{
        let now = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = format
        return formatter.string(from:now as Date)
    }
    @objc func outputtime(){
     clocktextField.text = gettoday()
    }

}
