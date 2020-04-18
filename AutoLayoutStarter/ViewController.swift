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
  
  //Wenda Li
    
    let purpleBox: UIView = {
        let purple = UIView()
        purple.translatesAutoresizingMaskIntoConstraints = false
        purple.backgroundColor = .purple
        return purple
    }()
    
    let redBox: UIView = {
        let red = UIView()
        red.translatesAutoresizingMaskIntoConstraints = false
        red.backgroundColor = .red
        return red
    }()
    
    let orangeBox1: UIView = {
        let orange = UIView()
        orange.translatesAutoresizingMaskIntoConstraints = false
        orange.backgroundColor = .orange
        return orange
    }()
    
    let orangeBox2: UIView = {
        let orange = UIView()
        orange.translatesAutoresizingMaskIntoConstraints = false
        orange.backgroundColor = .orange
        return orange
    }()
    
    let blueBox2: UIView = {
        let blue = UIView()
        blue.translatesAutoresizingMaskIntoConstraints = false
        blue.backgroundColor = .blue
        return blue
    }()
    
    let blueBox3: UIView = {
        let blue = UIView()
        blue.translatesAutoresizingMaskIntoConstraints = false
        blue.backgroundColor = .blue
        return blue
    }()
    
    let blueBox4: UIView = {
        let blue = UIView()
        blue.translatesAutoresizingMaskIntoConstraints = false
        blue.backgroundColor = .blue
        return blue
    }()
    
  //end
    
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .white
    view.addSubview(mainView)
    setupLayout()
  }

  fileprivate func setupLayout() {
    mainView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    mainView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    widthAnchor = mainView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7, constant: 0)
    widthAnchor?.isActive = true
    heightAnchor = mainView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.7, constant: 0)
    heightAnchor?.isActive = true
    
    //Wenda Li
    mainView.addSubview(purpleBox)
    let purpleHeight: CGFloat = 80
    purpleBox.heightAnchor.constraint(equalToConstant: purpleHeight).isActive = true
    purpleBox.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 300).isActive = true
    purpleBox.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -30).isActive = true
    purpleBox.bottomAnchor.constraint(equalTo: mainView.bottomAnchor, constant: -30).isActive = true
   
    mainView.addSubview(redBox)
    let redWidth: CGFloat = 200
    let redHeight: CGFloat = 70
    redBox.widthAnchor.constraint(equalToConstant: redWidth).isActive = true
    redBox.heightAnchor.constraint(equalToConstant: redHeight).isActive = true
    redBox.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 30).isActive = true
    redBox.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -30).isActive = true
    
    redBox.addSubview(orangeBox1)
    let orange1Width: CGFloat = 102
    let orange1Height: CGFloat = 50
    orangeBox1.widthAnchor.constraint(equalToConstant: orange1Width).isActive = true
    orangeBox1.heightAnchor.constraint(equalToConstant: orange1Height).isActive = true
    orangeBox1.centerYAnchor.constraint(equalTo: redBox.centerYAnchor).isActive = true
    orangeBox1.leadingAnchor.constraint(equalTo: redBox.leadingAnchor, constant: 10).isActive = true
    
    redBox.addSubview(orangeBox2)
    let orange2Width: CGFloat = 68
    let orange2Height: CGFloat = 50
    orangeBox2.widthAnchor.constraint(equalToConstant: orange2Width).isActive = true
    orangeBox2.heightAnchor.constraint(equalToConstant: orange2Height).isActive = true
    orangeBox2.centerYAnchor.constraint(equalTo: redBox.centerYAnchor).isActive = true
    orangeBox2.trailingAnchor.constraint(equalTo: redBox.trailingAnchor, constant: -10).isActive = true

    
    let blueStackView = UIStackView(arrangedSubviews: [
    blueBox2, blueBox3, blueBox4])
    blueStackView.translatesAutoresizingMaskIntoConstraints = false
    blueStackView.axis = .vertical
    blueStackView.alignment = .center
    blueStackView.distribution = .fillEqually
    
    let blueHeight: CGFloat = 50
    blueBox2.widthAnchor.constraint(equalTo: blueStackView.widthAnchor).isActive = true
    blueBox2.heightAnchor.constraint(equalToConstant: blueHeight).isActive = true
    blueBox3.widthAnchor.constraint(equalTo: blueStackView.widthAnchor).isActive = true
    blueBox3.heightAnchor.constraint(equalToConstant: blueHeight).isActive = true
    blueBox4.widthAnchor.constraint(equalTo: blueStackView.widthAnchor).isActive = true
    blueBox4.heightAnchor.constraint(equalToConstant: blueHeight).isActive = true

    mainView.addSubview(blueStackView)
    NSLayoutConstraint.activate([
    blueStackView.centerXAnchor.constraint(equalTo: mainView.centerXAnchor),
    blueStackView.widthAnchor.constraint(equalToConstant: 50),
    blueStackView.heightAnchor.constraint(equalTo: mainView.heightAnchor),
    ])
    
    //end
    
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

