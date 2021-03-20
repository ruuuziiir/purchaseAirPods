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
    
    var delegate: saveDataDelegate? = nil


    @IBOutlet weak var inputLabel: UILabel!
    @IBOutlet weak var inputTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        inputLabel.text = ""

    }


    @IBAction func input(_ sender: Any) {
        
        inputLabel.text = inputTextField.text

    }
    
    
    @IBAction func saveChange(_ sender: Any) {
        
        if self.delegate != nil && self.inputTextField.text != nil {
                    
            let airPodsLabel = self.inputTextField.text
            self.delegate?.replaceLabelName(inputLabelName: airPodsLabel!)
            dismiss(animated: true, completion: nil)
        
        }
       
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    

}

