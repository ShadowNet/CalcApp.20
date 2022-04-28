//
//  ViewController.swift
//  CalcApp.20
//
//  Created by Redghy on 4/27/22.
//

import UIKit

class ViewController: UIViewController {
    
    var tableView: UIView!
    var resultLabel: UILabel!
    weak var CalcMath: UILabel!
    weak var CalcResults: UILabel!
    var workings: String = ""
       
       override func viewDidLoad() {
           
           super.viewDidLoad()
           
           tableView = UIView()
           tableView.backgroundColor = .white
           self.view.addSubview(tableView)
           
           func clearAll()
           {
               workings = ""
               CalcMath.text = ""
               CalcResults.text = ""
           }


           tableView.translatesAutoresizingMaskIntoConstraints = false
           
           tableView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
           tableView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
           tableView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier:1).isActive = true
           tableView.heightAnchor.constraint(equalTo: self.view.heightAnchor,  multiplier: 1).isActive = true
           
           
           setupNumberPad()
       }

   
       private func setupNumberPad(){
           let buttonSize: CGFloat = view.frame.size.width / 4
           let singleButton = UIButton(frame: CGRect(x:buttonSize * CGFloat(2), y: view.frame.size.height-buttonSize, width: buttonSize, height: buttonSize))
           let zeroButton = UIButton(frame: CGRect(x:0, y: view.frame.size.height-buttonSize, width:   buttonSize*2, height: buttonSize))
           zeroButton.setTitle("0", for: .normal)
           zeroButton.backgroundColor = .black
           tableView.addSubview(zeroButton)
           singleButton.backgroundColor = .black
           singleButton.setTitle(".", for: .normal)
           tableView.addSubview(singleButton)

           var workings: String = ""
           
            func viewDidLoad()
               {
                   super.viewDidLoad()
                   clearAll()
               }
               
           func clearAll()
           {
               workings = ""
               CalcMath.text = ""
               CalcResults.text = ""
           }

                func equal(_ sender: Any)
               {
                   
                   if(validInput())
                   {
                       let checkedWorkingsForPercent = workings.replacingOccurrences(of: "%", with: "*0.01")
                       let expression = NSExpression(format: checkedWorkingsForPercent)
                       let result = expression.expressionValue(with: nil, context: nil) as! Double
                       let resultString = formatResult(result: result)
                       CalcResults.text = resultString
                   }
                   else
                   {
                       let alert = UIAlertController(
                           title: "Invalid Input",
                           message: "Calculator unable to compute due to input",
                           preferredStyle: .alert)
                       alert.addAction(UIAlertAction(title: "Okay", style: .default))
                       self.present(alert, animated: true, completion: nil)
                   }
               }
               
               func validInput() ->Bool
               {
                   var count = 0
                   var funcCharIndexes = [Int]()
                   
                   for char in workings
                   {
                       if(specialCharacter(char: char))
                       {
                           funcCharIndexes.append(count)
                       }
                       count += 1
                   }
                   
                   var previous: Int = -1
                   
                   for index in funcCharIndexes
                   {
                       if(index == 0)
                       {
                           return false
                       }
                       
                       if(index == workings.count - 1)
                       {
                           return false
                       }
                       
                       if (previous != -1)
                       {
                           if(index - previous == 1)
                           {
                               return false
                           }
                       }
                       previous = index
                   }
                   
                   return true
               }
               
               func specialCharacter (char: Character) -> Bool
               {
                   if(char == "*")
                   {
                       return true
                   }
                   if(char == "/")
                   {
                       return true
                   }
                   if(char == "+")
                   {
                       return true
                   }
                   return false
               }
               
               func formatResult(result: Double) -> String
               {
                   if(result.truncatingRemainder(dividingBy: 1) == 0)
                   {
                       return String(format: "%.0f", result)
                   }
                   else
                   {
                       return String(format: "%.2f", result)
                   }
               }
               
               func allClearTap(_ sender: Any)
               {
                   clearAll()
               }
               
               func backTap(_ sender: Any)
               {
                   if(!workings.isEmpty)
                   {
                       workings.removeLast()
                       CalcMath.text = workings
                   }
               }
               
               func addToWorkings(value: String)
               {
                   workings = workings + value
                   CalcMath.text = workings
               }
               
              
           func percentTap(_ sender: Any) {
               addToWorkings(value: "%")
           }
           
           func divideTap(_ sender: Any) {
               addToWorkings(value: "/")
           }
           
               
           func multiplyTap(_ sender: Any) {
               addToWorkings(value: "*")
           }
           
           func minusTap(_ sender: Any) {
               addToWorkings(value: "-")
           }
           
               
           func plusTap(_ sender: Any) {
               addToWorkings(value: "+")
           }
           
               
           func decimalTap(_ sender: Any) {
               addToWorkings(value: ".")
           }
           
              
        func zeroTap(_ sender: Any) {
               addToWorkings(value: "0")
           }
           
               
            func oneTap(_ sender: Any) {
               addToWorkings(value: "1")
           }
           
              
           func twoTap(_ sender: Any) {
               addToWorkings(value: "2")
               
           }
           
               
           func threeTap(_ sender: Any) {
               addToWorkings(value: "3")
           }
           
              
           func fourTap(_ sender: Any) {
               addToWorkings(value: "4")
           }
           
              
            func fiveTap(_ sender: Any) {
                  addToWorkings(value: "5")
               }
           
              
               func sixTap(_ sender: Any) {
                   addToWorkings(value: "6")
               }
           
              
               func sevenTap(_ sender: Any) {
                   addToWorkings(value: "7")
               }
           
               
           func eightTap(_ sender: Any) {
               addToWorkings(value: "8")
           }
           
           func nineTap(_ sender: Any) {
               addToWorkings(value: "9")
           }
           
           }

          // resultLabel.frame = CGRect(x: 0, y: view.frame.origin.y - 100, width:view.frame.size.width, height: 100)
          // view.addSubview(resultLabel)
       }
   
/*
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}
*/
