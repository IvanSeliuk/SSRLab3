//
//  ResultViewController.swift
//  SSRLabTest3
//
//  Created by Иван Селюк on 20.07.22.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var textViewLabel: UILabel!
    @IBOutlet weak var textPropertyLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupText()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        dismissData()
    }
    
    private func dismissData() {
        Setting.shared.textViewText = nil
        Setting.shared.segmentText = nil
        Setting.shared.pickerText = nil
        Setting.shared.checkBoxOneText = nil
        Setting.shared.checkBoxTwoText = nil
        Setting.shared.checkBoxThreeText = nil
    }
    
    private func setupText() {
        textViewLabel.text = Setting.shared.textViewText
        textPropertyLabel.text =
        "* \(Setting.shared.segmentText ?? "---")\n" +
        "* \(Setting.shared.pickerText ?? "---")\n" +
        "* \(Setting.shared.checkBoxOneText ?? "---")\n" +
        "* \(Setting.shared.checkBoxTwoText ?? "---")\n" +
        "* \(Setting.shared.checkBoxThreeText ?? "---")"
    }

    @IBAction func backButtonAction(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
}
