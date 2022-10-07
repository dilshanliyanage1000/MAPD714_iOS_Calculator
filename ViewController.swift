//
//  ViewController.swift
//  mapd714_ios_calculator
//
//  Created by Dilshan Nayanamadhu on 2022-10-06.
//

import UIKit

class ViewController: UIViewController {
    
    // Numeric Buttons
    @IBOutlet weak var buttonOne: UIButton!
    @IBOutlet weak var buttonTwo: UIButton!
    @IBOutlet weak var buttonThree: UIButton!
    @IBOutlet weak var buttonFour: UIButton!
    @IBOutlet weak var buttonFive: UIButton!
    @IBOutlet weak var buttonSix: UIButton!
    @IBOutlet weak var buttonSeven: UIButton!
    @IBOutlet weak var buttonEight: UIButton!
    @IBOutlet weak var buttonNine: UIButton!
    @IBOutlet weak var buttonZero: UIButton!
    
    // Operator Buttons
    @IBOutlet weak var buttonAddition: UIButton!
    @IBOutlet weak var buttonSubtraction: UIButton!
    @IBOutlet weak var buttonMultiplication: UIButton!
    @IBOutlet weak var buttonDivision: UIButton!
    @IBOutlet weak var buttonPercentage: UIButton!
    @IBOutlet weak var buttonPlusMinus: UIButton!
    @IBOutlet weak var buttonDecimal: UIButton!
    @IBOutlet weak var buttonEqual: UIButton!
    
    // Extra Buttons
    @IBOutlet weak var buttonClear: UIButton!
    @IBOutlet weak var buttonDelete: UIButton!
    
    // Other Components
    @IBOutlet weak var resultView: UIView!
    @IBOutlet weak var calculationResultView: UILabel!
    @IBOutlet weak var calculationResultHistory: UILabel!
    
    //declare variable
    var userCalculations = "";
    var userCalculationHistory = "";
    var currentOperator = "";
    
//    var leftOperand = "";
//    var tempOperator = "";
    
    
    // Functions
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        //rounding corner of result view
        resultView.layer.cornerRadius = 30
        resultView.clipsToBounds = true
        
        //rounding corner of number 7 (top left)
        buttonSeven.layer.cornerRadius = 30
        buttonSeven.layer.maskedCorners = [.layerMinXMinYCorner]
        
        //rounding corner of number 9 (top right)
        buttonNine.layer.cornerRadius = 30
        buttonNine.layer.maskedCorners = [.layerMaxXMinYCorner]
        
        //rounding corner of percentage button (bottom left)
        buttonPercentage.layer.cornerRadius = 30
        buttonPercentage.layer.maskedCorners = [.layerMinXMaxYCorner]
        
        //rounding corner of plus/minus button (bottom right)
        buttonPlusMinus.layer.cornerRadius = 30
        buttonPlusMinus.layer.maskedCorners = [.layerMaxXMaxYCorner]
        
        //rounding corner of division button (top left and top right)
        buttonDivision.layer.cornerRadius = 30
        buttonDivision.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        
        //rounding corner of addition button (bottom left and bottom right)
        buttonAddition.layer.cornerRadius = 30
        buttonAddition.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        
        //rounding corner of decimal button (top left and bottom left)
        buttonDecimal.layer.cornerRadius = 30
        buttonDecimal.layer.maskedCorners = [.layerMinXMinYCorner, .layerMinXMaxYCorner]
        
        //rounding corner of equal button (top right and bottom right)
        buttonEqual.layer.cornerRadius = 30
        buttonEqual.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMaxXMaxYCorner]
        
        //rounding corner of clear and delete button
        buttonClear.layer.cornerRadius = 30
        buttonDelete.layer.cornerRadius = 30
        
    }
    
    // NUMBER PRESS FUNCTIONS
    

    @IBAction func keyPress0(_ sender: Any) {
        addKeyPressToDisplay(value: "0")
    }
    
    @IBAction func keyPress1(_ sender: Any) {
        addKeyPressToDisplay(value: "1")
    }
    
    @IBAction func keyPress2(_ sender: Any) {
        addKeyPressToDisplay(value: "2")
    }
    
    @IBAction func keyPress3(_ sender: Any) {
        addKeyPressToDisplay(value: "3")
    }
    
    @IBAction func keyPress4(_ sender: Any) {
        addKeyPressToDisplay(value: "4")
    }
    
    @IBAction func keyPress5(_ sender: Any) {
        addKeyPressToDisplay(value: "5")
    }
    
    @IBAction func keyPress6(_ sender: Any) {
        addKeyPressToDisplay(value: "6")
    }
    
    @IBAction func keyPress7(_ sender: Any) {
        addKeyPressToDisplay(value: "7")
    }
    
    @IBAction func keyPress8(_ sender: Any) {
        addKeyPressToDisplay(value: "8")
    }
    
    @IBAction func keyPress9(_ sender: Any) {
        addKeyPressToDisplay(value: "9")
    }
    
    
    // OPERATOR PRESS FUNCTIONS
    
    @IBAction func keyPressAddition(_ sender: Any) {
        
        operatorKeyPress(value: "+")
    }
    
    @IBAction func keyPressSubtraction(_ sender: Any) {
        operatorKeyPress(value: "-")
    }
    
    @IBAction func keyPressMultiplication(_ sender: Any) {
        operatorKeyPress(value: "*")
    }
    
    @IBAction func keyPressDivision(_ sender: Any) {
        operatorKeyPress(value: "/")
    }
    
    @IBAction func keyPressPlusMinus(_ sender: Any) {
        operatorKeyPress(value: "+/-")
    }
    
    @IBAction func keyPressPercentage(_ sender: Any) {
        operatorKeyPress(value: "%")
    }
    
    @IBAction func keyPressDecimal(_ sender: Any) {
        addKeyPressToDisplay(value: ".")
    }
    
    @IBAction func keyPressEquals(_ sender: Any) {
    }
    
    
    
    
    // CLEAR AND DELETE PRESS FUNCTIONS
    
    @IBAction func clearAll(_ sender: Any) {
        
        userCalculations = ""
        userCalculationHistory = ""
        
        calculationResultView.text = "0"
        calculationResultHistory.text = "0"
        
    }
    
    
    // MATHEMATICAL FUNCTIONS
    
    func addKeyPressToDisplay(value: String) {
        
        // Numeric Button Press
        
        userCalculations = userCalculations + value
        calculationResultView.text = userCalculations
        
    }
    
    func operatorKeyPress(value: String){
        
        // x / + - Operator Press
        
//        leftOperand = userCalculations
//        tempOperator = value
//
//        userCalculationHistory = userCalculationHistory + userCalculations + value
//        calculationResultHistory.text = userCalculationHistory
//        calculationResultView.text = "0"
//        userCalculations = ""
        
    }


}

