
//  ViewController.swift

//  CustomInstaKeyboard

//  Created by Amey Kothavale on 17/05/21.

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        _ = Timer.scheduledTimer(timeInterval: 7, target: self, selector: #selector(self.update), userInfo: nil, repeats: true)

    }
    
    @objc func update() {

        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "Swipe1")
        self.present(controller, animated: (no_argument != 0), completion: nil)

    }

}

