//
//  ViewController.swift
//  AutoLayuotGuide
//
//  Created by Дмитрий Гусев on 07.03.2023.
//

import UIKit

class ViewController: UIViewController {
    
    let viewRed: UIView = {
        var view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        return view
    }()
    
    let viewBlue: UIView = {
        var view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .blue
        return view
    }()
    
    let viewGreen: UIView = {
        var view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .green
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        view.addSubview(view1)
//        view.addSubview(view2)
//        createView1Constraint()
//        createView2Constraint()
        
        view.addSubview(viewRed)
        view.addSubview(viewBlue)
        view.addSubview(viewGreen)
        
        createViewRedConstraint()
        createViewBlueConstraint()
        createViewGreenConstraint()

    }
    
    func createViewRedConstraint() {
        
        viewRed.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        viewRed.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/3).isActive = true
        viewRed.heightAnchor.constraint(equalToConstant: 100).isActive = true
        viewRed.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
    }
    
    func createViewBlueConstraint() {
        
        viewBlue.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        viewBlue.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/3).isActive = true
        viewBlue.heightAnchor.constraint(equalToConstant: 100).isActive = true
        viewBlue.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        
    }
    
    func createViewGreenConstraint() {
        
        viewGreen.rightAnchor.constraint(equalTo: viewBlue.rightAnchor).isActive = true
        viewGreen.leftAnchor.constraint(equalTo: viewRed.leftAnchor).isActive = true
        viewGreen.bottomAnchor.constraint(equalTo: viewRed.topAnchor, constant: -20).isActive = true
        viewGreen.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        
    }
    
//    func createView1Constraint() {
//
//        view1.translatesAutoresizingMaskIntoConstraints = false
//
//        NSLayoutConstraint(item: view1,
//                           attribute: .centerX,
//                           relatedBy: .equal,
//                           toItem: view,
//                           attribute: .centerX,
//                           multiplier: 1,
//                           constant: 0).isActive = true
//        NSLayoutConstraint(item: view1,
//                           attribute: .centerY,
//                           relatedBy: .equal,
//                           toItem: view,
//                           attribute: .centerY,
//                           multiplier: 1,
//                           constant: 0).isActive = true
//        NSLayoutConstraint(item: view1,
//                           attribute: .width,
//                           relatedBy: .equal,
//                           toItem: nil,
//                           attribute: .notAnAttribute,
//                           multiplier: 1,
//                           constant: 200).isActive = true
//        NSLayoutConstraint(item: view1,
//                           attribute: .height,
//                           relatedBy: .equal,
//                           toItem: nil,
//                           attribute: .notAnAttribute,
//                           multiplier: 1,
//                           constant: 200).isActive = true
//    }
//    func createView2Constraint() {
//
//        view2.translatesAutoresizingMaskIntoConstraints = false
//
//        NSLayoutConstraint(item: view2,
//                           attribute: .centerX,
//                           relatedBy: .equal,
//                           toItem: view1,
//                           attribute: .centerX,
//                           multiplier: 1,
//                           constant: 0).isActive = true
//        NSLayoutConstraint(item: view2,
//                           attribute: .bottom,
//                           relatedBy: .equal,
//                           toItem: view1,
//                           attribute: .top,
//                           multiplier: 1,
//                           constant: -8).isActive = true
//        NSLayoutConstraint(item: view2,
//                           attribute: .width,
//                           relatedBy: .equal,
//                           toItem: nil,
//                           attribute: .notAnAttribute,
//                           multiplier: 1,
//                           constant: 100).isActive = true
//        NSLayoutConstraint(item: view2,
//                           attribute: .height,
//                           relatedBy: .equal,
//                           toItem: nil,
//                           attribute: .notAnAttribute,
//                           multiplier: 1,
//                           constant: 100).isActive = true
//    }

}

