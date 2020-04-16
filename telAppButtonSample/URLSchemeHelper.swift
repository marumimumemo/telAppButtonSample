//
//  URLSchemeHelper.swift
//  telAppButtonSample
//
//  Created by satoshi.marumoto on 2020/04/16.
//  Copyright © 2020 satoshi.marumoto. All rights reserved.
//

import UIKit

struct URLSchemeHelper {
    
    /// 電話アプリを起動する
    static func tel(contactNumberStr: String?) {
        guard let contactNumberStr = contactNumberStr else {
            print("contactNumberStr is nil.")
            return
        }
        if contactNumberStr.isEmpty {
            print("contactNumberStr is empty.")
            return
        }
        guard let telURL = URL(string: "tel:\(contactNumberStr)") else {
            print("telURL is nil.")
            return
        }
        if UIApplication.shared.canOpenURL(telURL) {
            print("telURL: \(telURL)")
            UIApplication.shared.open(telURL, options: [:], completionHandler: nil)
        }
    }
    
}
