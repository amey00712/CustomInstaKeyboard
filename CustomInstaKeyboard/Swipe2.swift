//
//  Swipe2.swift
//  CustomInstaKeyboard
//
//  Created by Lovepreet Singh on 20/05/21.
//

import UIKit

class Swipe2: UIViewController {

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
    @IBAction func next(_ sender: Any) {
        
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "SubscriptionPage")
        self.present(controller, animated: (no_argument != 0), completion: nil)

        
        
        
    }
    
}
