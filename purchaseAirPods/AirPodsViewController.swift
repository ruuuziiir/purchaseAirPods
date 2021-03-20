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
        
        // 設定 input 初始狀態為空字串
        inputLabel.text = ""
        
        // 設定「加上鐫刻」按鈕的框線以及圓角
        addWordButton.layer.borderColor = UIColor.lightGray.cgColor
        addWordButton.layer.borderWidth = 1
        addWordButton.layer.cornerRadius = 10
        
        // 設定「加入購物袋」按鈕的圓角
        addCartButton.layer.cornerRadius = 10
        
    }

    
    // 任命變數 count，用於計算加入購物車的按鈕被點擊的次數
    var count = 0

    @IBAction func addCartNumChange(_ sender: Any) {
        count = count + 1
        
        // tabBarController 中最後一個 item 的 badgeValue 改變
        tabBarController?.tabBar.items?.last?.badgeValue = String(count)

    }
    
    //
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

