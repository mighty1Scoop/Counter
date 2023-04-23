//
//  ViewController.swift
//  Counter
//
//  Created by Nikolay Kozlov on 19.04.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private weak var counterLabel: UILabel!
    @IBOutlet private weak var textView: UITextView!
   
    private var counter: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textView.text = "История изменений:"
        counterLabel.setIntText(counter)
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
    
    
    //MARK: - IBActions
    @IBAction private func additionButtonTapped(_ sender: Any) {
        counter += 1
        counterLabel.setIntText(counter)
        addTextView(text: "значение изменено на +1")
    }
    
    @IBAction private func reduceButtonTapped(_ sender: Any) {
        if counter != 0 {
            counter -= 1
            counterLabel.setIntText(counter)
            addTextView(text: "значение изменено на -1")
        } else {
            addTextView(text: "попытка уменьшить значение счётчика ниже 0")
        }
        
    }
    
    @IBAction private func resetButtonTapped(_ sender: Any) {
        counter = 0
        counterLabel.setIntText(counter)
        addTextView(text: "значение cброшено")
    }
}
