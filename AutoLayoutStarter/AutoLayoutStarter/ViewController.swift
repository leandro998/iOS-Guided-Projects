//
//  ViewController.swift
//  AutoLayoutStarter
//
//  Created by Derrick Park on 2019-04-17.
//  Copyright © 2019 Derrick Park. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  let mainView: UIView = {
    let main = UIView()
    // important when setting contraints programmatically
    main.translatesAutoresizingMaskIntoConstraints = false
    main.backgroundColor = .green
    return main
  }()
    
    let purpleBox: UIView = {
        let purple = UIView()
        purple.translatesAutoresizingMaskIntoConstraints = false
        purple.backgroundColor = .purple
        purple.frame = CGRect.zero
        return purple
    }()
    
    let redBox: UIView = {
        let red = UIView()
        red.translatesAutoresizingMaskIntoConstraints = false
        red.backgroundColor = .red
        red.frame = CGRect.zero
        return red
    }()
    
    let orangeBox: UIView = {
        let orange = UIView()
        orange.translatesAutoresizingMaskIntoConstraints = false
        orange.backgroundColor = .orange
        orange.frame = CGRect(x: 3, y: 3, width: 40, height: 20)
        return orange
    }()
    
    let orangeBoxTwo: UIView = {
        let orange = UIView()
        orange.translatesAutoresizingMaskIntoConstraints = false
        orange.backgroundColor = .orange
        orange.frame = CGRect(x: 46, y: 3, width: 30, height: 20)
        return orange
    }()
    
    let blueBoxOne: UIView = {
        let blue1 = UIView()
            blue1.translatesAutoresizingMaskIntoConstraints = false
            blue1.backgroundColor = .blue
        blue1.frame = CGRect.zero //(x: 1, y: 1, width: 1, height: 1)
            return blue1
    }()
    
    let blueBoxTwo: UIView = {
        let blue2 = UIView()
            blue2.translatesAutoresizingMaskIntoConstraints = false
            blue2.backgroundColor = .blue
        blue2.frame = CGRect.zero //(x: 1, y: 1, width: 1, height: 1)
            return blue2
    }()
    
    let blueBoxThree: UIView = {
        let blue3 = UIView()
            blue3.translatesAutoresizingMaskIntoConstraints = false
            blue3.backgroundColor = .blue
        blue3.frame = CGRect.zero //(x: 1, y: 1, width: 1, height: 1)
            return blue3
    }()
  
    var stackView = UIStackView()
    
  let squareButton: UIButton = {
    let butt = UIButton(type: .system)
    butt.setTitle("Square", for: .normal)
    butt.translatesAutoresizingMaskIntoConstraints = false
    butt.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
    butt.addTarget(self, action: #selector(squareTapped), for: .touchUpInside)
    return butt
  }()
  
  let portraitButton: UIButton = {
    let butt = UIButton(type: .system)
    butt.setTitle("Portrait", for: .normal)
    butt.translatesAutoresizingMaskIntoConstraints = false
    butt.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
    butt.addTarget(self, action: #selector(portraitTapped), for: .touchUpInside)
    return butt
  }()
  
  let landScapeButton: UIButton = {
    let butt = UIButton(type: .system)
    butt.setTitle("Landscape", for: .normal)
    butt.translatesAutoresizingMaskIntoConstraints = false
    butt.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
    butt.addTarget(self, action: #selector(landscapeTapped), for: .touchUpInside)
    return butt
  }()
  
  var widthAnchor: NSLayoutConstraint?
  var heightAnchor: NSLayoutConstraint?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .white
    view.addSubview(mainView)
    
//    purpleBox constraints:
    mainView.addSubview(purpleBox)
    NSLayoutConstraint(item: purpleBox, attribute: .leading, relatedBy: .equal, toItem: mainView, attribute: .leadingMargin, multiplier: 1.0, constant: 50.0).isActive = true
    NSLayoutConstraint(item: purpleBox, attribute: .trailing, relatedBy: .equal, toItem: mainView, attribute: .trailingMargin, multiplier: 1.0, constant: 0.0).isActive = true
    NSLayoutConstraint(item: purpleBox, attribute: .bottom, relatedBy: .lessThanOrEqual, toItem: mainView, attribute: .bottomMargin, multiplier: 1.0, constant: -20.0).isActive = true
    NSLayoutConstraint(item: purpleBox, attribute: .height, relatedBy: .equal, toItem: mainView, attribute:.width, multiplier: 0.1, constant:0.0).isActive = true

//    redBox constraints:
        mainView.addSubview(redBox)
        NSLayoutConstraint(item: redBox, attribute: .leading, relatedBy: .equal, toItem: mainView, attribute: .leadingMargin, multiplier: 1.0, constant: 0.0).isActive = false
        NSLayoutConstraint(item: redBox, attribute: .trailing, relatedBy: .equal, toItem: mainView, attribute: .trailingMargin, multiplier: 1.0, constant: 0.0).isActive = true
        NSLayoutConstraint(item: redBox, attribute: .top, relatedBy: .lessThanOrEqual, toItem: mainView, attribute: .topMargin, multiplier: 1.0, constant: 10.0).isActive = true
        NSLayoutConstraint(item: redBox, attribute: .height, relatedBy: .equal, toItem: mainView, attribute:.width, multiplier: 0.1, constant:0.0).isActive = true
        NSLayoutConstraint(item: redBox, attribute: .width, relatedBy: .equal, toItem: mainView, attribute:.width, multiplier: 0.3, constant:0.0).isActive = true

//    orangeBox constraints:
        redBox.addSubview(orangeBox)
        redBox.addSubview(orangeBoxTwo)
//        NSLayoutConstraint(item: orangeBox, attribute: .leading, relatedBy: .equal, toItem: redBox, attribute: .leadingMargin, multiplier: 1.0, constant: 0.0).isActive = true
//        NSLayoutConstraint(item: orangeBox, attribute: .trailing, relatedBy: .equal, toItem: redBox, attribute: .trailingMargin, multiplier: 1.0, constant: 0.0).isActive = true
//        NSLayoutConstraint(item: orangeBox, attribute: .top, relatedBy: .lessThanOrEqual, toItem: redBox, attribute: .topMargin, multiplier: 1.0, constant: 0.0).isActive = true
//        NSLayoutConstraint(item: orangeBox, attribute: .height, relatedBy: .equal, toItem: redBox, attribute:.width, multiplier: 1.0, constant:0.0).isActive = true
//        NSLayoutConstraint(item: orangeBox, attribute: .width, relatedBy: .equal, toItem: redBox, attribute:.width, multiplier: 1.0, constant:0.0).isActive = true
    
//    blueBoxes
//        stackView.addSubview(blueBoxOne)
        stackView = UIStackView(arrangedSubviews: [blueBoxOne, blueBoxTwo, blueBoxThree])
        stackView.axis = .vertical
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        stackView.spacing = 10.0
//    NSLayoutConstraint(item: blueBoxOne, attribute: .leading, relatedBy: .equal, toItem: mainView, attribute: .leadingMargin, multiplier: 1.0, constant: 0.0).isActive = true
//    NSLayoutConstraint(item: blueBoxOne, attribute: .trailing, relatedBy: .equal, toItem: mainView, attribute: .trailingMargin, multiplier: 1.0, constant: 0.0).isActive = true
//    NSLayoutConstraint(item: blueBoxOne, attribute: .top, relatedBy: .lessThanOrEqual, toItem: mainView, attribute: .topMargin, multiplier: 1.0, constant: 0.0).isActive = true
//
//    NSLayoutConstraint(item: blueBoxOne, attribute: .centerY, relatedBy: .equal, toItem: mainView, attribute:.centerY, multiplier: 1, constant:1.0).isActive = true
//        blueBoxOne.centerXAnchor.constraint(equalTo: mainView.centerXAnchor).isActive = true
//        blueBoxOne.centerYAnchor.constraint(equalTo: mainView.centerYAnchor).isActive = true
    
        mainView.addSubview(stackView)
    NSLayoutConstraint(item: stackView, attribute: .centerX, relatedBy: .equal, toItem: mainView, attribute:.centerX, multiplier: 1, constant:1.0).isActive = true
    NSLayoutConstraint(item: stackView, attribute: .trailing, relatedBy: .equal, toItem: mainView, attribute: .trailingMargin, multiplier: 0.7, constant: 1.0).isActive = true
    NSLayoutConstraint(item: stackView, attribute: .leading, relatedBy: .equal, toItem: mainView, attribute: .leadingMargin, multiplier: 15.0, constant: 1.0).isActive = true
    NSLayoutConstraint(item: stackView, attribute: .top, relatedBy: .equal , toItem: mainView, attribute: .topMargin, multiplier: 20.0, constant: 0.0).isActive = true
    NSLayoutConstraint(item: stackView, attribute: .bottom, relatedBy: .equal, toItem: mainView, attribute: .bottomMargin, multiplier: 0.7, constant: 0.0).isActive = true
//    NSLayoutConstraint(item: stackView, attribute: .left, relatedBy: .equal , toItem: mainView, attribute: .left, multiplier: 1.0, constant: 0.0).isActive = true
//    NSLayoutConstraint(item: stackView, attribute: .right, relatedBy: .equal, toItem: mainView, attribute: .right, multiplier: 1.0, constant: 0.0).isActive = true
    
    setupLayout()
  }

  fileprivate func setupLayout() {
    mainView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    mainView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    widthAnchor = mainView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7, constant: 0)
    widthAnchor?.isActive = true
    
    heightAnchor = mainView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.7, constant: 0)
    heightAnchor?.isActive = true
    
    let buttStackView = UIStackView(arrangedSubviews: [
      squareButton, portraitButton, landScapeButton])
    buttStackView.translatesAutoresizingMaskIntoConstraints = false
    buttStackView.axis = .horizontal
    buttStackView.alignment = .center
    buttStackView.distribution = .fillEqually
    
    view.addSubview(buttStackView)
    NSLayoutConstraint.activate([
      buttStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50),
      buttStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      buttStackView.heightAnchor.constraint(equalToConstant: 50),
      buttStackView.widthAnchor.constraint(equalTo: view.widthAnchor)
      ])
  }

  @objc private func squareTapped() {
    view.layoutIfNeeded()
    UIView.animate(withDuration: 2.0) {
      self.widthAnchor?.isActive = false
      self.widthAnchor? = self.mainView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.9)
      self.widthAnchor?.isActive = true
      
      self.heightAnchor?.isActive = false
      self.heightAnchor? = self.mainView.heightAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.9)
      self.heightAnchor?.isActive = true
      self.view.layoutIfNeeded()
    }
  }
  
  @objc private func portraitTapped() {
    view.layoutIfNeeded()
    UIView.animate(withDuration: 2.0) {
      self.widthAnchor?.isActive = false
      self.widthAnchor? = self.mainView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.7)
      self.widthAnchor?.isActive = true
      
      self.heightAnchor?.isActive = false
      self.heightAnchor? = self.mainView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.7)
      self.heightAnchor?.isActive = true
      self.view.layoutIfNeeded()
    }
    
  }
  
  @objc private func landscapeTapped() {
    view.layoutIfNeeded()
    UIView.animate(withDuration: 2.0) {
      self.widthAnchor?.isActive = false
      self.widthAnchor? = self.mainView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.95)
      self.widthAnchor?.isActive = true
      
      self.heightAnchor?.isActive = false
      self.heightAnchor? = self.mainView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.4)
      self.heightAnchor?.isActive = true
      self.view.layoutIfNeeded()
    }
  }
}

