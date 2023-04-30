//
//  FeatureListViewController.swift
//  healthy
//
//  Created by Ricky Hung on 2023/4/30.
//

import UIKit

class FeatureListViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func bdmkButtonClick(_ sender: Any) {
        let vc = BDMKViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func annotationButtonClick(_ sender: Any) {
        let vc = AnnotationViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func dicomButtonClick(_ sender: Any) {
        let vc = DicomViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func reportButtonClick(_ sender: Any) {
        let vc = ReportViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
