//
//  ViewController.swift
//  Login_Without_MainView
//
//  Created by Hwang on 2020/02/04.
//  Copyright © 2020 Hwang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let loginContentView : UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let nameTextField : UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .white
        textField.borderStyle = .roundedRect
        textField.placeholder = "Name"
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    private let passwordTextField : UITextField = {
       let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.placeholder = "Password"
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let btnLogin : UIButton = {
        let btn = UIButton(type: .system)
        btn.backgroundColor = .blue
        btn.titleLabel?.font = .systemFont(ofSize: 25)
        btn.setTitle("Login", for: .normal)
        btn.tintColor = .white
        btn.layer.masksToBounds = true
        btn.layer.cornerRadius = 5
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        loginContentView.addSubview(nameTextField)
        loginContentView.addSubview(passwordTextField)
        loginContentView.addSubview(btnLogin)
        
        view.addSubview(loginContentView)
        
        setUpAutoLayout()
    }
    
    func setUpAutoLayout() {
        
        loginContentView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        loginContentView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        loginContentView.heightAnchor.constraint(equalToConstant: view.frame.height/3).isActive = true
        loginContentView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        nameTextField.topAnchor.constraint(equalTo: loginContentView.topAnchor, constant: 40).isActive = true
        nameTextField.leftAnchor.constraint(equalTo: loginContentView.leftAnchor, constant: 20).isActive = true
        nameTextField.rightAnchor.constraint(equalTo: loginContentView.rightAnchor, constant: -20).isActive = true
        nameTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        passwordTextField.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 20).isActive = true
        passwordTextField.leadingAnchor.constraint(equalTo: loginContentView.leadingAnchor, constant: 20).isActive = true
        passwordTextField.rightAnchor.constraint(equalTo: loginContentView.rightAnchor, constant: -20).isActive = true
        passwordTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
            
        btnLogin.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20).isActive = true
        btnLogin.leftAnchor.constraint(equalTo: loginContentView.leftAnchor, constant: 20).isActive = true
        btnLogin.rightAnchor.constraint(equalTo: loginContentView.rightAnchor, constant: -20).isActive = true
        btnLogin.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
}


