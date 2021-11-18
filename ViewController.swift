//
//  ViewController.swift
//  StringLocalization
//
//  Created by incubation on 16/11/21.
//

import UIKit

class ViewController: UIViewController {

    let label1 = UILabel(frame: CGRect(x: 170, y: 400, width: 100, height: 50))
    
    let label2 = UILabel(frame: CGRect(x: 170, y: 600, width: 100, height: 50))
  
    let button = UIButton(frame: CGRect(x: 150, y: 200, width: 100, height: 50))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLabel()
        buttonName()
        
    }
    
    func buttonName() {
        view.addSubview(button)
        button.setTitle(NSLocalizedString("Arattai", comment: "Logo"), for: .normal)
        button.backgroundColor = .blue
    }
    func setupLabel() {
        view.addSubview(label1)
        view.addSubview(label2)
        let number = 3
        label1.text = "Hello \(number)"
        label2.text = "Hello \(number)"
        let formattedlbl1 = NSLocalizedString("Hello %d", comment: "Greetings")
        //let formattedlbl1 = String(localized: "Hello \(number)", comment: "Greetings")
        

        let formattedlbl2 = NSLocalizedString("Hello %d", comment: "Greetings")
        label1.text = String.localizedStringWithFormat(formattedlbl1, number)
        label2.text = String.localizedStringWithFormat(formattedlbl2, number)

        //label.backgroundColor = .blue
    }
}

