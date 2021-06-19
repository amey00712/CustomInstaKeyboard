//
//  SubscriptionPage.swift
//  CustomInstaKeyboard
//
//  Created by Lovepreet Singh on 20/05/21.
//

import UIKit
import StoreKit

class SubscriptionPage: UIViewController,SKPaymentTransactionObserver, SKProductsRequestDelegate {

    let ProductID = "com.mobiledev.instafont.productid"
    
    var myProduct: SKProduct?
    
    @IBOutlet weak var continueBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.fetchProduct()
    }
    
    func fetchProduct(){
        let request = SKProductsRequest(productIdentifiers: [ProductID])
        request.delegate = self
        request.start()
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
        
        
        guard let myProduct = myProduct else {
            return
        }
        
        if SKPaymentQueue.canMakePayments(){
            let paymentRequest = SKPayment(product: myProduct)
            SKPaymentQueue.default().add(self)
            SKPaymentQueue.default().add(paymentRequest)
        }else{
            print("User unable to make payments")
        }

    }
    
    func productsRequest(_ request: SKProductsRequest, didReceive response: SKProductsResponse) {
    
        if let p = response.products.first{
            myProduct = p
            print(p.price)
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
