//
//  MyPickerView.swift
//  healthy
//
//  Created by Ricky Hung on 2023/4/30.
//

import UIKit

class MyPickerView : UIPickerView {
    var pickerData : [String]!
    var pickerTextField : UITextField!
    var selectionHandler : ((_ selectedText: String) -> Void)?
 
    init(pickerData: [String], dropdownField: UITextField, defaultIndex: Int? = 0) {
        super.init(frame: CGRectZero)
 
        self.pickerData = pickerData
        self.pickerTextField = dropdownField
 
        self.delegate = self
        self.dataSource = self

        DispatchQueue.main.async {
            if pickerData.count > 0 {
                if let index = defaultIndex, let data = self.pickerData[safe: index] {
                    self.pickerTextField.text = data
                } else {
                    self.pickerTextField.text = self.pickerData[0]
                }
                self.pickerTextField.isEnabled = true
            } else {
                self.pickerTextField.text = nil
                self.pickerTextField.isEnabled = false
            }
        }
        
        if self.pickerTextField.text != nil && self.selectionHandler != nil {
            selectionHandler!(self.pickerTextField.text!)
        }
    }
    
    convenience init(pickerData: [String], dropdownField: UITextField, defaultIndex: Int? = 0, onSelect selectionHandler : @escaping (_ selectedText: String) -> Void) {
        
        self.init(pickerData: pickerData, dropdownField: dropdownField, defaultIndex: defaultIndex)
        self.selectionHandler = selectionHandler

    }
 
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension MyPickerView : UIPickerViewDataSource, UIPickerViewDelegate {
    // Sets number of columns in picker view
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
 
    // Sets the number of rows in the picker view
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
 
    // This function sets the text of the picker view to the content of the "salutations" array
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
 
    // When user selects an option, this function will set the text of the text field to reflect
    // the selected option.
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        pickerTextField.text = pickerData[row]
        
        if self.pickerTextField.text != nil && self.selectionHandler != nil {
            selectionHandler!(self.pickerTextField.text!)
        }
    }
}
