//
//  AirPodsViewController.swift
//  purchaseAirPods
//
//  Created by 7 on 2021/3/20.
//

import UIKit


class AirPodsViewController: UIViewController, saveDataDelegate {
    
    
    @IBOutlet weak var inputLabel: UILabel!
    
    @IBOutlet weak var addWordButton: UIButton!
    @IBOutlet weak var addCartButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        inputLabel.text = ""
        
        addWordButton.layer.borderColor = UIColor.lightGray.cgColor
        addWordButton.layer.borderWidth = 1
        addWordButton.layer.cornerRadius = 10
        
        addCartButton.layer.cornerRadius = 10
        

    }
    @IBAction func addLabel(_ sender: Any) {
        
    }
    
    var count = 0

    @IBAction func addCartNumChange(_ sender: Any) {
        count = count + 1
        tabBarController?.tabBar.items?.last?.badgeValue = String(count)

    }
    
    // Delegate Method
      func replaceLabelName(inputLabelName: String) {
          self.inputLabel.text = inputLabelName
      }
      
      override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
          if segue.identifier == "showAirPodsSegue" {
              let inputViewController: InputViewController = segue.destination as! InputViewController
              inputViewController.delegate = self
          }
      }


}

