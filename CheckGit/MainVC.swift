//  MainVC.swift
//  GitTest
//  Created by Ranjeet Raushan on 20/02/19.
//  Copyright © 2019 vaayoo. All rights reserved.

import UIKit

class MainVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        if (self.navigationController?.navigationBar) != nil {
        }
        self.navigationController?.navigationBar.topItem?.title = " "
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        //Below line shows -  how to set the  navigation Bar title 
        navigationItem.title = "MainVC"
   }
}
