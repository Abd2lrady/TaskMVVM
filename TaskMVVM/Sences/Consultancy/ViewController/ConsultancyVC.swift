//
//  ViewController.swift
//  TaskMVVM
//
//  Created by Ahmad Abdulrady
//

import UIKit

class ConsultancyVC: UIViewController {

    @IBOutlet private weak var headLabelView: HeadLabel!
    @IBOutlet private weak var headBackgroundView: UIView!
    @IBOutlet  weak var categoriesCV: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoriesCVSetup()
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
