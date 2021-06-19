//
//  StepsPage.swift
//  CustomInstaKeyboard
//
//  Created by Lovepreet Singh on 20/05/21.
//

import UIKit

class StepsPage: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        scrollView.contentSize = CGSize(width: self.view.frame.size.width, height: 2390)

        

    }
    

  
    @IBAction func openSetting(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "SubscriptionPage")
        self.present(controller, animated: (no_argument != 0), completion: nil)
        
    }
    
    @IBAction func fnish(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "SubscriptionPage")
        self.present(controller, animated: (no_argument != 0), completion: nil)
        
        
    }
}
