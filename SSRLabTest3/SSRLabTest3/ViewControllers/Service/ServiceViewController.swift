//
//  ServiceViewController.swift
//  SSRLabTest3
//
//  Created by Иван Селюк on 20.07.22.
//

import UIKit
import BEMCheckBox

class ServiceViewController: UIViewController {
    
    @IBOutlet weak var segmentLabelOne: UILabel!
    @IBOutlet weak var segmentLabelTwo: UILabel!
    @IBOutlet weak var segmentLabelThree: UILabel!
    @IBOutlet weak var checkBoxLabelOne: UILabel!
    @IBOutlet weak var checkBoxLabelTwo: UILabel!
    @IBOutlet weak var checkBoxLabelThree: UILabel!
    @IBOutlet weak var segment: UISegmentedControl!
    @IBOutlet weak var checkBoxOne: BEMCheckBox!
    @IBOutlet weak var checkBoxTwo: BEMCheckBox!
    @IBOutlet weak var checkBoxThree: BEMCheckBox!
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var showTextButton: UIButton!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var clearTextButton: UIButton!
    private let stringArray = ["опцыя #1", "опцыя #2", "опцыя #3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        navigationController?.navigationBar.isHidden = true
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        dissmisDate()
    }
    
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
    
    private func selectCheckBox() {
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
    
    private func dissmisDate() {
        segment.selectedSegmentIndex = -1
        checkBoxOne.on = false
        checkBoxTwo.on = false
        checkBoxThree.on = false
        textViewCorrect()
    }
    
    private func textViewCorrect() {
        textView.text = ""
        textView.resignFirstResponder()
        textView.text = "Калі ласка, увядзіце тэкст"
        textView.textColor = UIColor.lightGray
        textView.font = UIFont(name: "Optima-Regular", size: 15)
    }
    
    @IBAction func segmentAction(_ sender: Any) {
        if segment.selectedSegmentIndex == 0 {
            Setting.shared.segmentText = segmentLabelOne.text
        } else if segment.selectedSegmentIndex == 1 {
            Setting.shared.segmentText = segmentLabelTwo.text
        } else if segment.selectedSegmentIndex == 2 {
            Setting.shared.segmentText = segmentLabelThree.text
        }
    }
    
    @IBAction func clearTextAction(_ sender: Any) {
        textViewCorrect()
    }
    
    @IBAction func showTextButtonAction(_ sender: Any) {
        selectCheckBox()
        Setting.shared.textViewText = textView.text
        textView.resignFirstResponder()
        guard let vc = ResultViewController.getInstanceController else { return }
        navigationController?.pushViewController(vc, animated: true)
    }
}

extension ServiceViewController: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return stringArray[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        Setting.shared.pickerText = stringArray[row]
    }
}

extension ServiceViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return stringArray.count
    }
}

extension ServiceViewController: UITextViewDelegate {
    func textViewDidBeginEditing(_ textView: UITextView) {
        if textView.text == "Калі ласка, увядзіце тэкст" {
            textView.text = ""
            textView.textColor = UIColor.black
            textView.font = UIFont(name: "Optima-Regular", size: 17)
        }
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        if textView.text == "" {
            textView.text = "Калі ласка, увядзіце тэкст"
            textView.textColor = UIColor.lightGray
            textView.font = UIFont(name: "Optima-Regular", size: 15)
        }
    }
}
