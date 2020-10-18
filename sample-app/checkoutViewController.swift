//
//  checkoutViewController.swift
//  sample-app
//
//  Created by takahiro on 2020/10/18.
//

import UIKit

class checkoutViewController: UIViewController {

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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
