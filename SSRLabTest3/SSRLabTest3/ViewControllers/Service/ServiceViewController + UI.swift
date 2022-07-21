//
//  ServiceViewController + UI.swift
//  SSRLabTest3
//
//  Created by Иван Селюк on 21.07.22.
//

import UIKit

extension ServiceViewController{
    
    func setupUI() {
        pickerView.delegate = self
        pickerView.dataSource = self
        pickerView.setValue(UIColor(named: "ColorText"), forKeyPath: "textColor")
        clearTextButton.layer.borderWidth = 2
        clearTextButton.layer.borderColor = UIColor.black.cgColor
        clearTextButton.layer.cornerRadius = 15
        showTextButton.layer.borderWidth = 2
        showTextButton.layer.borderColor = UIColor.white.cgColor
        showTextButton.layer.cornerRadius = 15
        textView.layer.cornerRadius = 15
        textView.text = "Калі ласка, увядзіце тэкст"
        textView.textColor = UIColor.lightGray
        textView.font = UIFont(name: "Optima-Regular", size: 15)
        textView.delegate = self
        segment.transform = CGAffineTransform(rotationAngle: CGFloat.pi/2)
    }
    
    func selectCheckBox() {
        if checkBoxOne.on {
            Setting.shared.checkBoxOneText = checkBoxLabelOne.text
        }
        if checkBoxTwo.on {
            Setting.shared.checkBoxTwoText = checkBoxLabelTwo.text
        }
        if checkBoxThree.on {
            Setting.shared.checkBoxThreeText = checkBoxLabelThree.text
        }
    }
    
    func dissmisDate() {
        segment.selectedSegmentIndex = -1
        checkBoxOne.on = false
        checkBoxTwo.on = false
        checkBoxThree.on = false
        textViewCorrect()
    }
    
    func textViewCorrect() {
        textView.text = ""
        textView.resignFirstResponder()
        textView.text = "Калі ласка, увядзіце тэкст"
        textView.textColor = UIColor.lightGray
        textView.font = UIFont(name: "Optima-Regular", size: 15)
    }
}
