//
//  ViewController.swift
//  UserDefaultsTest
//
//  Created by Duxxless on 19.04.2022.
//

import UIKit

class ViewController: UIViewController {

    let textFieldOne: UITextField = {
       let tf = UITextField()
        tf.placeholder = "Имя"
        tf.clearButtonMode = .always
        tf.backgroundColor = .systemGray5
        tf.borderStyle = .roundedRect
        return tf
    }()
    let textFieldTwo: UITextField = {
       let tf = UITextField()
        tf.placeholder = "Фамилия"
        tf.clearButtonMode = .always
        tf.backgroundColor = .systemGray5
        tf.borderStyle = .roundedRect
        return tf
    }()
    let textLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 30)
        label.textColor = .white
        label.contentMode = .center
        
        label.numberOfLines = 0
        return label
    }()
    let button: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 20
        button.tintColor = .white
        button.setTitle("Сохранить", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.backgroundColor = .lightText
        
        textFieldOne.frame = CGRect(x: view.bounds.size.width / 2  - 125, y: 300, width: 250, height: 40)
        textFieldOne.addTarget(self, action: #selector(showLabel), for: .editingDidEndOnExit)
        view.addSubview(textFieldOne)
        
        textFieldTwo.frame = CGRect(x: view.bounds.size.width / 2  - 125, y: 360, width: 250, height: 40)
        textFieldTwo.addTarget(self, action: #selector(showLabel), for: .editingDidEndOnExit)
        view.addSubview(textFieldTwo)
        
        textLabel.frame = CGRect(x: 0, y: 100, width: view.frame.size.width, height: 100)
        textLabel.textAlignment = .center
        view.addSubview(textLabel)
        
        button.frame = CGRect(x: view.bounds.size.width / 2  - 75, y: 750, width: 150, height: 40)
        button.addTarget(self, action: #selector(saveConfig), for: .touchUpInside)
        view.addSubview(button)
        
    }

    @objc func showLabel() {
        
        print(textFieldOne.text!)
    }
    
    @objc func saveConfig() {
        guard let fistName = textFieldOne.text, fistName != "" else { return }
        guard let secondName = textFieldTwo.text, secondName != "" else { return }
        textLabel.text = fistName + " " + secondName
        
    }
}

