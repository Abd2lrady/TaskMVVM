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
    var networkManager = NetworkManager()
    var interactor = CategoriesInteractor()
    override func viewDidLoad() {
        super.viewDidLoad()
        categoriesCVSetup()
        
        interactor.getCategories { categories, code in
            print("interactor response")
            print(code)
            print(categories)
        }
        
//        network.getCategories { result, status in
//            switch result {
//            case .success(let data):
//                print(data.status)
//            case .failure(let error):
//            print(error.localizedDescription)
//            }
//        }
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
