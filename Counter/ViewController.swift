//
//  ViewController.swift
//  Counter
//
//  Created by Михаил on 11.08.2024.
//

import UIKit

class ViewController: UIViewController {
    var bookCounter: Int = 0
    @IBAction func removeBook(_ sender: Any) {
        if bookCounter > 0 {
            bookCounter -= 1
            updateCounterLabel()
            let dateTimeString = dateAndTime()
            let currentText = history.text
            let newText = currentText! + "\n" + dateTimeString + " значение изменено на -1"
            history.text = newText
        }
        else {
            let dateTimeString = dateAndTime()
            let currentText = history.text
            let newText = currentText! + "\n" + dateTimeString + " попытка уменьшить значение счётчика ниже 0"
            history.text = newText
        }
        
    }
    @IBAction func addBook(_ sender: Any) {
        bookCounter += 1
        updateCounterLabel()
        let dateTimeString = dateAndTime()
        let currentText = history.text
        let newText = currentText! + "\n" + dateTimeString + " значение изменено на +1"
        history.text = newText
        
    }
    @IBAction func reset(_ sender: Any) {
        bookCounter = 0
        updateCounterLabel()
        let dateTimeString = dateAndTime()
        let currentText = history.text
        let newText = currentText! + "\n" + dateTimeString + " значение сброшено"
        history.text = newText
    }
   
    func dateAndTime()-> String {
        let dateTime = Date()
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .medium
        let dateTimeString = formatter.string(from: dateTime)
        return dateTimeString
    }
    func updateCounterLabel() {
        counter.text = "Значение счетчика: \(bookCounter)"
        }
    
    @IBOutlet weak var counterButton: UIButton!
    @IBOutlet weak var history: UITextView!
    @IBOutlet weak var counter: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

