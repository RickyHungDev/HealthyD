//
//  DicomViewController.swift
//  healthy
//
//  Created by Ricky Hung on 2023/4/30.
//

import UIKit

class DicomViewController: UIViewController {
    
    @IBOutlet weak var titleView: NavigationView!
    @IBOutlet weak var localHostEditView: SettingEditView!
    @IBOutlet weak var storageScp1EditView: SettingEditView!
    @IBOutlet weak var storageScp2EditView: SettingEditView!
    @IBOutlet weak var storageScp3EditView: SettingEditView!
    @IBOutlet weak var currentStorageScpDropdownView: SettingDropdownView!
    @IBOutlet weak var worklistScpEditView: SettingEditView!
    @IBOutlet weak var outgoingQueueEditView: SettingEditView!
    @IBOutlet weak var currentScpDataEncodingDropdownView: SettingDropdownView!
    @IBOutlet weak var imageDataEncapsulatedDropdownView: SettingDropdownView!
    
    private var storageScpList: [String] = ["Storage SCP", "Storage SCP2", "Storage SCP3"]
    private var encodingDatas: [String] = ["Arabic (CP1256)", "Arabic (ISO-8859-6)", "Certral Europe (CP1250)", "Certral Europe (ISO-8859-Z)", "Cyriic (CP1251)", "Cyriic (ISO-8859-5)", "English (ASCII)", "Greek (CP1253)", "Greek (ISO-8859-7)", "Hebrew (CP1255)", "Hebrew (CP862)", "Hebrew (ISO-8859-8)", "Japenese (SHIFT_JIS)", "Japenese (CP932)", "Japenese (ISO-20220-JP)", "Japenese (ISO-20220-JP-1)", "Japenese (ISO-20220-JP-2)", "Korean (CP949)", "Korean (JCHA8)", "Korean (ISO-2022-KR)", "Korean (EUC-KR)", "Northem Europe (CP1257)", "Northem Europe (ISO-8859-4)", "Simpified Chinese (GB18030)", "Simpified Chinese (GBK)", "Southern Europe (ISO-8859-3)", "Thai (TIS620)", "Thai (CP874)", "Thai (ISO-8859-11)", "Traditional Chinese (BIG5)", "Turkish (CP1254)", "Turkish (ISO-8859-9)", "Vietnamese (CP1258)", "Western Europe (CP1252)", "Western Europe (CP850)", "Western Europe (ISO-8859-1)", "Unicode (UTF-8)"]
    private var encapsulatedList: [String] = ["Uncompressed", "RLE Image Compression", "JPEG Image Compression", "JPEG Lossless Image Compression"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupView()
        hideKeyboardWhenTappedAround()
    }
    
}

private extension DicomViewController {
    func setupView() {
        view.backgroundColor = .detailBackgroundColor
        
        titleView.setupContent(title: "DICOM")
        localHostEditView.setupContent(title: "Local Host [Ultrasound]")
        storageScp1EditView.setupContent(title: "Storage SCP")
        storageScp2EditView.setupContent(title: "Storage SCP2")
        storageScp3EditView.setupContent(title: "Storage SCP3")
        currentStorageScpDropdownView.setupContent(title: "Current Storage SCP", items: storageScpList)
        worklistScpEditView.setupContent(title: "Worklist SCP")
        outgoingQueueEditView.setupContent(title: "Outgoing Queue")
        currentScpDataEncodingDropdownView.setupContent(title: "Current SCP Data Encoding", items: encodingDatas, defaultIndex: encodingDatas.count - 1)
        imageDataEncapsulatedDropdownView.setupContent(title: "Image data encapsulated", items: encapsulatedList)
    }
}
