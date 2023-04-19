//
//  ViewController.swift
//  Counter
//
//  Created by Nikolay Kozlov on 19.04.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var textView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        textView.text = "История изменений:"
        counterLabel.text = "0"
    }
    
    
    @IBAction func additionButton(_ sender: Any) {
        guard let counterText = counterLabel.text else { return }
        let newCounter = (Int(counterText) ?? 0) + 1
        counterLabel.text = String(newCounter)
        addTextView(text: "значение изменено на +1")
    }
    
    @IBAction func reduceButton(_ sender: Any) {
        if counterLabel.text != "0" {
            guard let counterText = counterLabel.text else { return }
            let newCounter = (Int(counterText) ?? 0) - 1
            counterLabel.text = String(newCounter)
            addTextView(text: "значение изменено на -1")
        } else {
            addTextView(text: "попытка уменьшить значение счётчика ниже 0")
        }
       
    }

    @IBAction func resetButton(_ sender: Any) {
        counterLabel.text = "0"
        addTextView(text: "значение cброшено")
    }
    
    //MARK: - Private functions
    private func getNowDateString() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "[dd/MM HH:mm:ss]"
        
        return dateFormatter.string(from: .now)
    }
    
    private func addTextView(text string: String) {
        textView.text += "\n\(getNowDateString()): \(string)"
        textView.scrollToDown()
    }
}

