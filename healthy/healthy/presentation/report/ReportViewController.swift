//
//  ReportViewController.swift
//  healthy
//
//  Created by Ricky Hung on 2023/4/30.
//

import UIKit

class ReportViewController: UIViewController {
    
    // MARK: Property
    @IBOutlet weak var titleView: NavigationView!
    @IBOutlet weak var defaultReportTemplateEditView: SettingEditView!
    @IBOutlet weak var userDefinedTemplateListEditView: SettingEditView!
    @IBOutlet weak var promptEditView: SettingEditView!
    @IBOutlet weak var findingEditView: SettingEditView!
    @IBOutlet weak var commentEditView: SettingEditView!
    @IBOutlet weak var reportDisplayEditView: SettingEditView!
    @IBOutlet weak var efwPercentileAuthorDropdownView: SettingDropdownView!
    
    private var authors: [String] = ["Brenner"]
    
    // MARK: Initialize
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupView()
        hideKeyboardWhenTappedAround()
    }

}

private extension ReportViewController {
    func setupView() {
        view.backgroundColor = .detailBackgroundColor
        
        titleView.setupContent(title: "Report")
        defaultReportTemplateEditView.setupContent(title: "Default report template")
        userDefinedTemplateListEditView.setupContent(title: "User-Defined Template List")
        promptEditView.setupContent(title: "Built-in Prompt String")
        findingEditView.setupContent(title: "Built-in Finding String")
        commentEditView.setupContent(title: "Built-in Comment String")
        reportDisplayEditView.setupContent(title: "Report Display")
        efwPercentileAuthorDropdownView.setupContent(title: "EFW Percentile Author", items: authors)
    }
}
