//
//  SubscriptionPage.swift
//  CustomInstaKeyboard
//
//  Created by Lovepreet Singh on 20/05/21.
//

import UIKit

class SubscriptionPage: UIViewController {

    @IBOutlet weak var continueBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func `continue`(_ sender: Any) {
        
        let receiptURL = Bundle.main.appStoreReceiptURL
        let receipt = NSData(contentsOf: receiptURL!)
        let _: [String: Any] = [
            //"receipt-data": receipt!.base64EncodedString(options: []),
            "password": "your iTunes Connect shared secret"
        ]

        let appleServer = receiptURL?.lastPathComponent == "sandboxReceipt" ? "sandbox" : "buy"

        let stringURL = "https://\(appleServer).itunes.apple.com/verifyReceipt"

        print("Loading user receipt: \(stringURL)...")

//        Alamofire.request(stringURL, method: .post, parameters: requestContents, encoding: JSONEncoding.default)
//            .responseJSON { response in
//                if let value = response.result.value as? NSDictionary {
//                    print(value)
//                } else {
//                    print("Receiving receipt from App Store failed: \(response.result)")
//                }
//        }
        
        
    }
    
    
    
    @IBAction func privacy(_ sender: Any) {
        
        
        
        guard let url = URL(string: "http://165.227.76.44/politica_fonts") else {
          return //be safe
        }

        if #available(iOS 10.0, *) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        } else {
            UIApplication.shared.openURL(url)
        }
        
        
    }
    
    
    @IBAction func termCondition(_ sender: Any) {
        
        
        guard let url = URL(string: "http://165.227.76.44/termos_fonts") else {
          return //be safe
        }

        if #available(iOS 10.0, *) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        } else {
            UIApplication.shared.openURL(url)
        }
        
    }
    
    
    
}
