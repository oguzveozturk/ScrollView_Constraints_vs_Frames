//
//  ViewController.swift
//  detailpage
//
//  Created by Oguz on 11.01.2020.
//  Copyright © 2020 Oguz. All rights reserved.
//
//  goal in this file is to create a ScrollView that works in the SafeArea without using any constraints and is compatible with the portrait mode of all iPhones.

import UIKit

final class UsingFrames: UIViewController {
    
   private lazy var myScrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.frame = CGRect(x: view.safeAreaInsets.left, y: view.safeAreaInsets.top, width: view.frame.width, height: view.frame.height - (view.safeAreaInsets.bottom + view.safeAreaInsets.top))
        scrollView.contentSize = CGSize(width: view.frame.width - 50, height: 1200)
        scrollView.backgroundColor = .darkGray
        scrollView.bounces = true
        return scrollView
    }()
    
    private lazy var firstLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .green
        label.frame = CGRect(x: 25, y: 40, width: myScrollView.frame.width - 50, height: 120)
        label.text = "Welcome the Frames"
        label.textColor = .white
        label.font = .systemFont(ofSize: 35, weight: .regular)
        label.adjustsFontSizeToFitWidth = true
        return label
    }()
    
    private lazy var secondButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .blue
        button.frame = CGRect(x: 25, y: 340, width: myScrollView.frame.width - 50, height: 120)
        button.setTitle("Back to Constraints", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 25, weight: .regular)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(backTapped), for: .touchUpInside)
        return button
    }()
    
    private lazy var thirdView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .purple
        view.frame = CGRect(x: 25, y: 640, width: myScrollView.frame.width - 50, height: 120)
        return view
    }()
    
    private lazy var fourthTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = .yellow
        textField.frame = CGRect(x: 25, y: 940, width: myScrollView.frame.width - 50, height: 120)
        return textField
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        view.addSubview(myScrollView)
        myScrollView.addSubview(firstLabel)
        myScrollView.addSubview(secondButton)
        myScrollView.addSubview(thirdView)
        myScrollView.addSubview(fourthTextField)
    }
    
    @objc func backTapped() {
        dismiss(animated: true, completion: nil)
    }
}

