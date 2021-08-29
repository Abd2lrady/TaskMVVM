//
//  ViewController.swift
//  TaskMVVM
//
//  Created by Ahmad Abdulrady
//

import UIKit

class CategoriesVC: UIViewController {

    @IBOutlet private weak var headLabelView: HeadLabel!
    @IBOutlet private weak var headBackgroundView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidLayoutSubviews() {
        configHeadLabel()
        roundCorner()
    }
    
    func configHeadLabel() {
        headLabelView.setHeadLabel = "الإستشارات"
    }
    
    func roundCorner() {
        let path = UIBezierPath(roundedRect: headBackgroundView.bounds,
                                byRoundingCorners: .bottomRight,
                                cornerRadii: CGSize(width: 50, height: 50))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        headBackgroundView.layer.mask = mask
        headBackgroundView.clipsToBounds = true
    }

}
