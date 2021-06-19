//
//  Swipe1.swift
//  CustomInstaKeyboard
//
//  Created by Lovepreet Singh on 20/05/21.
//

import UIKit

class Swipe1: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func next(_ sender: Any) {
        
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "Swipe2")
        self.present(controller, animated: (no_argument != 0), completion: nil)

    }
    

}
