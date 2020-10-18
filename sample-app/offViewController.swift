//
//  offViewController.swift
//  sample-app
//
//  Created by takahiro on 2020/10/15.
//

import UIKit

class offViewController: UIViewController ,UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var clocktextField: UITextField!
    @IBOutlet weak var offreasonlabel: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    var timeInterval = TimeInterval()
    var dataList = ["AM","PM","1day"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        outputtime()
        pickerView.delegate = self
        pickerView.dataSource = self
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
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    // UIPickerViewの行数、リストの数
        func pickerView(_ pickerView: UIPickerView,
                        numberOfRowsInComponent component: Int) -> Int {
            return dataList.count
        }
        
        // UIPickerViewの最初の表示
        func pickerView(_ pickerView: UIPickerView,
                        titleForRow row: Int,
                        forComponent component: Int) -> String? {
            
            return dataList[row]
        }
        
        // UIPickerViewのRowが選択された時の挙動
        func pickerView(_ pickerView: UIPickerView,
                        didSelectRow row: Int,
                        inComponent component: Int) {
            
            offreasonlabel.text = dataList[row]
            
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
