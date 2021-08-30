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
    var consultancyVM: ConsultancyVM?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoriesCVSetup()
        initVM()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        configHeadLabel()
        roundCorner()
    }
    
    func initVM() {
        consultancyVM?.categoriesCellsLoaded = {
            DispatchQueue.main.async {
                self.categoriesCV.reloadData()
            }
        }
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
