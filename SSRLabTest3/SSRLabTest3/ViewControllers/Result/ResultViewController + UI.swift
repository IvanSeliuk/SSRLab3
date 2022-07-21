//
//  ResultViewController + UI.swift
//  SSRLabTest3
//
//  Created by Иван Селюк on 21.07.22.
//

extension ResultViewController {
    func dismissData() {
        Setting.shared.textViewText = nil
        Setting.shared.segmentText = nil
        Setting.shared.pickerText = nil
        Setting.shared.checkBoxOneText = nil
        Setting.shared.checkBoxTwoText = nil
        Setting.shared.checkBoxThreeText = nil
    }
    
    func setupText() {
        textViewLabel.text = Setting.shared.textViewText
        textPropertyLabel.text =
        "* \(Setting.shared.segmentText ?? "-----")\n" +
        "* \(Setting.shared.pickerText ?? "-----")\n" +
        "* \(Setting.shared.checkBoxOneText ?? "-----")\n" +
        "* \(Setting.shared.checkBoxTwoText ?? "-----")\n" +
        "* \(Setting.shared.checkBoxThreeText ?? "-----")"
    }
}
