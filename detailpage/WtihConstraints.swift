//
//  ViewController.swift
//  SafeArea With Constraints
//
//  Created by Oguz on 12.01.2020.
//  Copyright © 2020 Oguz. All rights reserved.
//
//  goal in this file is to create a ScrollView that works in the SafeArea with using any constraints and is compatible with the portrait mode of all iPhones.

import UIKit

final class WithConstraints: UIViewController {
    
    private lazy var myScrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.contentSize = CGSize(width: view.frame.width - 50, height: 1200)
        scrollView.backgroundColor = .darkGray
        scrollView.isScrollEnabled = true
        scrollView.bounces = true
        return scrollView
    }()
    
    private lazy var firstLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .green
        label.text = "Welcome the Constraints"
        label.textColor = .white
        label.font = .systemFont(ofSize: 35, weight: .regular)
        label.adjustsFontSizeToFitWidth = true
        return label
    }()
    
    private lazy var secondButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .blue
        button.setTitle("Go to Frames", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 25, weight: .regular)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(goTapped), for: .touchUpInside)
        return button
    }()
    
    private lazy var thirdView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .purple
        return view
    }()
    
    private lazy var fourthTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = .yellow
        return textField
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        setupLayout()
    }
    
    func setupLayout() {
        view.addSubview(myScrollView)
        NSLayoutConstraint.activate([
            myScrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            myScrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            myScrollView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            myScrollView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor)
        ])
        
        myScrollView.addSubview(firstLabel)
        NSLayoutConstraint.activate([
            firstLabel.widthAnchor.constraint(equalTo: myScrollView.widthAnchor, multiplier: 0.85),
            firstLabel.heightAnchor.constraint(equalToConstant: 120),
            firstLabel.centerXAnchor.constraint(equalTo: myScrollView.centerXAnchor),
            firstLabel.centerYAnchor.constraint(equalTo: myScrollView.contentLayoutGuide.centerYAnchor, constant: 100)
        ])
        
        myScrollView.addSubview(secondButton)
        NSLayoutConstraint.activate([
            secondButton.widthAnchor.constraint(equalTo: myScrollView.widthAnchor, multiplier: 0.85),
            secondButton.heightAnchor.constraint(equalToConstant: 120),
            secondButton.centerXAnchor.constraint(equalTo: myScrollView.centerXAnchor),
            secondButton.centerYAnchor.constraint(equalTo: myScrollView.contentLayoutGuide.centerYAnchor, constant: 400)
        ])
        
        myScrollView.addSubview(thirdView)
        NSLayoutConstraint.activate([
            thirdView.widthAnchor.constraint(equalTo: myScrollView.widthAnchor, multiplier: 0.85),
            thirdView.heightAnchor.constraint(equalToConstant: 120),
            thirdView.centerXAnchor.constraint(equalTo: myScrollView.centerXAnchor),
            thirdView.centerYAnchor.constraint(equalTo: myScrollView.contentLayoutGuide.centerYAnchor, constant: 700)
        ])
        
        myScrollView.addSubview(fourthTextField)
        NSLayoutConstraint.activate([
            fourthTextField.widthAnchor.constraint(equalTo: myScrollView.widthAnchor, multiplier: 0.85),
            fourthTextField.heightAnchor.constraint(equalToConstant: 120),
            fourthTextField.centerXAnchor.constraint(equalTo: myScrollView.centerXAnchor),
            fourthTextField.centerYAnchor.constraint(equalTo: myScrollView.contentLayoutGuide.centerYAnchor, constant: 1000)
        ])
    }
    
    @objc func goTapped() {
        let usingFrames = UsingFrames()
        usingFrames.modalPresentationStyle = .fullScreen
        present(usingFrames, animated: true, completion: nil)
    }
}
