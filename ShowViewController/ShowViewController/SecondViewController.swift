//
//  SecondViewController.swift
//  ShowViewController
//
//  Created by Michael Mellinger on 12/16/16.
//

import UIKit

class SecondViewController: UIViewController {

    let button = UIButton()
    
    /*
     
    Dismiss Modal: https://developer.apple.com/reference/uikit/uiviewcontroller/1621505-dismiss
    */
    func previousController(_ sender:UIButton) {

//        self.navigationController?.popViewController(animated: true)
        self.dismiss(animated: true, completion: {})
    }
    
    func buildView() {
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Back", for: .normal)
        
        self.view.addSubview(button)
        
        button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        
        button.addTarget(self, action: #selector(previousController(_:)), for: .touchUpInside)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .orange

        buildView()
    }


}