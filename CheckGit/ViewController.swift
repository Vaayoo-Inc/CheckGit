//  ViewController.swift
//  GitTest
//  Created by Ranjeet Raushan on 20/02/19.
//  Copyright © 2019 vaayoo. All rights reserved.

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var name_TF: UITextField!
    @IBOutlet weak var mobileTF: UITextField!
    @IBOutlet weak var dpsitAmt_TF: UITextField!
    
    @IBOutlet weak var txtView: UITextView!{
        didSet{
            txtView.isSelectable = false
            txtView.isEditable  = false
            txtView.isUserInteractionEnabled = false 
        }
    }
    
    var maxValue = 10000 {
        didSet {
            dpsitAmt_TF?.text = nil
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dpsitAmt_TF.keyboardType = .numberPad

        if (self.navigationController?.navigationBar) != nil {
            }
        self.navigationController?.navigationBar.topItem?.title = " "
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }
    
    //Below method shows - while coming back , navigation bar  title was going to hide , to overcome this we put the navigation Bar title in ViewWillAppear
    
    override func viewWillAppear(_ animated: Bool) {
         navigationItem.title = "GitTest"
    }
    @IBAction func ClickMe(_ sender: UIButton) {
        let maInVC = storyboard?.instantiateViewController(withIdentifier: "main") as! MainVC
        navigationController?.pushViewController(maInVC, animated: true)
    }
}
extension ViewController: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let newText = NSString(string: dpsitAmt_TF.text!).replacingCharacters(in: range, with: string)
        if newText.isEmpty {
            return true
        }
        else if let intValue = Int(newText), intValue <= maxValue {
            return true
        }
        return false
    }
}


