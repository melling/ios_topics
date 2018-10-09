//
//  ViewController.swift
//  CenteredAutoLayoutButton
//
//  Created by Michael Mellinger on 8/14/14.
//

import UIKit

class ViewController: UIViewController {
    
    var centeredButton = UIButton()
    
    func addButton() {
        
        centeredButton.translatesAutoresizingMaskIntoConstraints = false
        centeredButton.titleLabel?.font = UIFont.systemFont(ofSize: 36)
        
        centeredButton.setTitle("Am I centered?", for: UIControl.State())
        centeredButton.setTitleColor(UIColor.black, for: UIControl.State())
        centeredButton.addTarget(self, action: #selector(pressed(_:)), for: .touchUpInside)
        
        self.view.addSubview(centeredButton)
        
        NSLayoutConstraint.activate([
            centeredButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            centeredButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0)
            ])

    }
    
    @objc func pressed(_ sender: UIButton!) {
        
        let title = "Awesome"
        let message = "You did it"
        let alert = UIAlertController(title: title,
                                      message:message,
                                      preferredStyle: .alert)
        let action = UIAlertAction(title: "Take Action 1?", style: .default, handler:nil)
        alert.addAction(action)
        
        let action2 = UIAlertAction(title: "Take Action 2?", style: .default, handler:nil)
        alert.addAction(action2)
        
        self.present(alert, animated: true, completion: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(named: "Apple Blue")
        addButton()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

