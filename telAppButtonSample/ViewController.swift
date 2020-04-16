//
//  ViewController.swift
//  telAppButtonSample
//
//  Created by satoshi.marumoto on 2020/04/16.
//  Copyright © 2020 satoshi.marumoto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func telButtonTapped() {
        let contactNumberStr = "0311111111"
        URLSchemeHelper.tel(contactNumberStr: contactNumberStr)
    }

}

