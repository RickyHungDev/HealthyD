//
//  BDMKViewController.swift
//  healthy
//
//  Created by Ricky Hung on 2023/4/30.
//

import UIKit

class BDMKViewController: UIViewController {
    
    // MARK: Property
    
    @IBOutlet weak var titleView: NavigationView!
    @IBOutlet weak var defaultBdmkEditView: SettingEditView!
    @IBOutlet weak var bdmkListEditView: SettingEditView!
    @IBOutlet weak var showBdmkBoolView: SettingBooleanView!

    // MARK: Initialize
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupView()
        hideKeyboardWhenTappedAround()
    }
}

private extension BDMKViewController {
    func setupView() {
        view.backgroundColor = .detailBackgroundColor
        
        titleView.setupContent(title: "BDMK")
        defaultBdmkEditView.setupContent(title: "Default BDMK for Application")
        bdmkListEditView.setupContent(title: "BDMK List")
        showBdmkBoolView.setupContent(title: "Show NDMKs by application")
    }
}
