//
//  AnnotationViewController.swift
//  healthy
//
//  Created by Ricky Hung on 2023/4/30.
//

import UIKit

class AnnotationViewController: UIViewController {
    
    // MARK: Property
    @IBOutlet weak var titleView: NavigationView!
    @IBOutlet weak var annotationFontSizeDropdownView: SettingDropdownView!
    @IBOutlet weak var labelListEditView: SettingEditView!
    @IBOutlet weak var arrowSizeDropdownView: SettingDropdownView!
    @IBOutlet weak var showLabelsBoolView: SettingBooleanView!
    
    private var sizes: [String] = ["Large", "Medium", "Small"]

    // MARK: Initialize
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupView()
        hideKeyboardWhenTappedAround()
    }

}

private extension AnnotationViewController {
    func setupView() {
        view.backgroundColor = .detailBackgroundColor
        
        titleView.setupContent(title: "Annotation")
        annotationFontSizeDropdownView.setupContent(title: "Annotation Font Size", items: self.sizes, defaultIndex: sizes.count / 2)
        labelListEditView.setupContent(title: "Label List")
        arrowSizeDropdownView.setupContent(title: "Arrow Size", items: self.sizes, defaultIndex: sizes.count / 2)
        showLabelsBoolView.setupContent(title: "Show labels by application")
        
    }
}
