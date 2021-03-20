//
//  InputViewController.swift
//  purchaseAirPods
//
//  Created by 7 on 2021/3/20.
//

import UIKit

protocol saveDataDelegate {
    func replaceLabelName(inputLabelName: String)
}

class InputViewController: UIViewController {
    


    @IBOutlet weak var inputLabel: UILabel!
    @IBOutlet weak var inputTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        inputLabel.text = ""

    }

    // 將 label 內容同步為輸入的內容
    @IBAction func input(_ sender: Any) {
        
        inputLabel.text = inputTextField.text

    }
    
    
    var delegate: saveDataDelegate? = nil
    
    // 儲存按鈕
    @IBAction func saveChange(_ sender: Any) {
        
        // 檢查 delegate 以及 textField 是否為 nil
        // delegate 若為 nil 的，代表此 func 沒有取得代理資格，無法傳送資料
        if self.delegate != nil && self.inputTextField.text != nil {
            
            // 定義要回傳的 = textField 輸入內容
            let airPodsLabel = self.inputTextField.text
            
            // inputLabelName 是 airPodsLabel = airPodsLabel 內的值會回傳給 AirPodsVC
            self.delegate?.replaceLabelName(inputLabelName: airPodsLabel!)
            dismiss(animated: true, completion: nil)
        
        }
       
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    

}

