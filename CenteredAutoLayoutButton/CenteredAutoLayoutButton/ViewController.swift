//
//  ViewController.swift
//  CenteredAutoLayoutButton
//
//  Created by Michael Mellinger on 8/14/14.
//

import UIKit

class ViewController: UIViewController {
    
    private let button = UIButton()

    private func addButton() {
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 10
        button.setTitle("Am I centered?", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(pressed(_:)), for: .touchUpInside)
        
        view.addSubview(button)
        
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            button.widthAnchor.constraint(equalToConstant: 130),
        ])
        
    }
    
    
    @objc private func pressed(_ sender: UIButton!) {

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
    
    // MARK: - View Management
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor(named: "AppleBlue")
        addButton()
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

