//
//  SubscriptionPage.swift
//  CustomInstaKeyboard
//
//  Created by Lovepreet Singh on 20/05/21.
//

import UIKit
import StoreKit

class SubscriptionPage: UIViewController,SKPaymentTransactionObserver {

    let ProductID = "com.mobiledev.instafont.productid"
    
    @IBOutlet weak var continueBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        SKPaymentQueue.default().add(self)
    }
    

    @IBAction func `continue`(_ sender: Any) {
        
       /* let receiptURL = Bundle.main.appStoreReceiptURL
        let receipt = NSData(contentsOf: receiptURL!)
        let _: [String: Any] = [
            //"receipt-data": receipt!.base64EncodedString(options: []),
            "password": "your iTunes Connect shared secret"
        ]

        let appleServer = receiptURL?.lastPathComponent == "sandboxReceipt" ? "sandbox" : "buy"

        let stringURL = "https://\(appleServer).itunes.apple.com/verifyReceipt"

        print("Loading user receipt: \(stringURL)...") */
        
        if SKPaymentQueue.canMakePayments(){
            let paymentRequest = SKMutablePayment()
            paymentRequest.productIdentifier = ProductID
            SKPaymentQueue.default().add(paymentRequest)
        }else{
            print("User unable to make payments")
        }


        
    }
    
    func paymentQueue(_ queue: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction]) {
        
        for transaction in transactions{
            if transaction.transactionState == .purchased{
                
            }
        }
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
