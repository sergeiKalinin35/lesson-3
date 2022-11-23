//
//  ViewController.swift
//  lesson 3
//
//  Created by Sergey on 22.11.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var mainLabel: UILabel!
    @IBOutlet var segmentedControl: UISegmentedControl!
    @IBOutlet var slider: UISlider!
    @IBOutlet var textField: UITextField!
    
    @IBOutlet var datePicker: UIDatePicker!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      // date Picker localization
        datePicker.locale = Locale(identifier: "ru_RU")
        
        
        // Slider
        slider.value = 1
        slider.minimumValue = 0// alpha view
        slider.maximumValue = 1
        slider.minimumTrackTintColor = .black
        slider.maximumTrackTintColor = .white
        slider.thumbTintColor = .systemYellow
        
        
        
        
        
        // Label
   //     mainLabel.text = ""
        mainLabel.text = String(slider.value)
        mainLabel.font = mainLabel.font.withSize(20)
        mainLabel.numberOfLines = 2
        
       // Segmented Control
        
        segmentedControl.insertSegment(withTitle: "Third", at: 2, animated: false)
    

        
        
        
        
        
     
    }
    
@IBAction func segmentedAction() {
    
    switch segmentedControl.selectedSegmentIndex {
            
        case 0:
            mainLabel.text = "The first segment is selected"
            mainLabel.textColor = .orange
            
        case 1:
            mainLabel.text = "The Second segment is selected"
            mainLabel.textColor = .blue
            
        case 2:
            mainLabel.text = "The Third segment is selected"
            mainLabel.textColor = .white
            
            
        default: break
            
    }
}
    

    @IBAction func sliderAction() {
        let currentValue = CGFloat(slider.value)
        mainLabel.text = String(slider.value)
        view.backgroundColor =  view.backgroundColor?.withAlphaComponent(currentValue)
    }
    
    @IBAction func doneButtonPressed() {
        
        
        guard let inputText = textField.text, !inputText.isEmpty else {
            print("Text Field is empty")
            showAlert(with: "Text Field is empty", and: "Please enter your name🏴‍☠️")
            return
        }
        
        if let _ = Double(inputText) {
            
            showAlert(with: "Wrong format", and: "Please enter your name🏴‍☠️")
            print("Wrong format")
            return
        }
    mainLabel.text = inputText
    }
    
    
    
    
    @IBAction func datePickerAction() {
        let dateFormatter = DateFormatter()
//        dateFormatter.dateStyle = .full
        dateFormatter.dateStyle = .medium
        dateFormatter.locale = Locale(identifier: "ru_RU")
        
        mainLabel.text = dateFormatter.string(from: datePicker.date)
    }
}


// MARK: - Alert Controller

extension ViewController {
    
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        // добавляем кнопки
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.textField.text = ""
        }
        // добавляем кнопку в алерт
        alert.addAction(okAction)
        present(alert, animated: true)
        
    }
}




