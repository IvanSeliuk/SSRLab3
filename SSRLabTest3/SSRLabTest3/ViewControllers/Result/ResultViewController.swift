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
    
    @IBAction func backButtonAction(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
}
