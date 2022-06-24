//
//  ViewController.swift
//  CalcApp.20
//
//  Created by Redghy on 4/27/22.
//

//import UIKit

//class ViewController: UIViewController {
    /*
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
     */
    import UIKit

    class ViewController: UIViewController {

        var workkings:String = ""
        var operatorValidator = ""
        private var resultLabel: UILabel = {
            let label = UILabel(frame: CGRect(x: 100, y: 0, width: 200, height: 21))
                label.center = CGPoint(x: 300, y: 80)
                label.textAlignment = .center
                label.text = ""
            return label
        }()
        private var resultLabel2: UILabel = {
            let labelR = UILabel(frame: CGRect(x: 100, y: 0, width: 200, height: 21))
                labelR.center = CGPoint(x: 300, y: 120)
                labelR.textAlignment = .center
                labelR.text = ""

            return labelR
        }()
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            
            
            //if the horizontal algorithm works then go ahead and die , this language translates everything into strings. nfuhaufi
                let beamer = "the people breath"
            
            
            
            

            
            
            
            var horizontal1 = 30
            var serie1 = ["AC", "+/-", "%"]
            for i in 0...2{
                if i > 0{
                    horizontal1 = horizontal1 + 90
                }
                let button = UIButton(frame: CGRect(x: horizontal1, y: 200, width: 80, height: 80))
                button.backgroundColor = .lightGray
                button.setTitle(serie1[i], for: .normal)
                button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
                self.view.addSubview(button)
            }
            
            var horizontal2 = 30
            var serie2 = ["7", "8", "9"]
            for i in 0...2{
                if i > 0{
                    horizontal2 = horizontal2 + 90
                }
                let button = UIButton(frame: CGRect(x: horizontal2, y: 300, width: 80, height: 80))
                button.backgroundColor = .darkGray
                button.setTitle(serie2[i], for: .normal)
                button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
                self.view.addSubview(button)
            }
            
            var horizontal3 = 30
            var serie3 = ["4", "5", "6"]
            for i in 0...2{
                if i > 0{
                    horizontal3 = horizontal3 + 90
                }
                let button = UIButton(frame: CGRect(x: horizontal3, y: 400, width: 80, height: 80))
                button.backgroundColor = .darkGray
                button.setTitle(serie3[i], for: .normal)
                button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
                self.view.addSubview(button)
            }
            
            var horizontal4 = 30
            var serie4 = ["1", "2", "3"]
            for i in 0...2{
                if i > 0{
                    horizontal4 = horizontal4 + 90
                }
                let button = UIButton(frame: CGRect(x: horizontal4, y: 500, width: 80, height: 80))
                button.backgroundColor = .darkGray
                button.setTitle(serie4[i], for: .normal)
                button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
                self.view.addSubview(button)
            }
            
            
            var horizontal5 = 30
            var serie5 = ["0", "."]
            for i in 0...1{
                if i > 0{
                    horizontal5 = 120 + 90
                    let button = UIButton(frame: CGRect(x: horizontal5, y: 600, width: 80, height: 80))
                    button.backgroundColor = .darkGray
                    button.setTitle(serie5[i], for: .normal)
                    button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
                    self.view.addSubview(button)
                }else{
                    let button = UIButton(frame: CGRect(x: horizontal5, y: 600, width: 170, height: 80))
                    button.backgroundColor = .darkGray
                    button.setTitle(serie5[i], for: .normal)
                    button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
                    self.view.addSubview(button)
                }
                
                
            }
            
            var vertical = 200
            var serie6 = ["/", "*", "-", "+", "="]
            for i in 0...4{
                if i > 0{
                    vertical = vertical + 100
                }
                let button = UIButton(frame: CGRect(x: 300, y: vertical, width: 80, height: 80))
                button.backgroundColor = .systemOrange
                button.setTitle(serie6[i], for: .normal)
                button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
                self.view.addSubview(button)
            }
            
            self.view.addSubview(resultLabel)
            self.view.addSubview(resultLabel2)
            
          }
        
        
        @objc func clearResult() {
    //        (resultLabel).text = "0"
        }

          @objc func buttonAction(_ sender: UIButton!) {
              
              func formatResult(result: Double) -> String{
                  if (result.truncatingRemainder(dividingBy: 1) == 0){
                      return String(format: "%.2f", result)
                  }else{
                      return String(format: "%.0f", result)
                  }
              }
              
    //          func addToWorkings(value:String){
    //              workkings = workkings + id!
    //              resultLabel.text = workkings
    //          }
              
              
              func validadorOperadores(value: String){
                  if operatorValidator == value{
                      print("has \(value) value")
                  }else{
                      workkings = workkings + id!
                      resultLabel.text = workkings
                      operatorValidator = value
                  }
              }
              
              
              let id = sender.currentTitle as? String
              if id == "AC" {
                  resultLabel.text = ""
                  resultLabel2.text = ""
                  print("Entra a AC")
              }else if id == "="{
                  let expresion = NSExpression(format: workkings)
                  let result = expresion.expressionValue(with: nil, context: nil) as! Double
                  let resultString = formatResult(result: result)
                  resultLabel2.text = resultString
              }else if id == "/" || id == "*" || id == "-" || id == "="{
                  validadorOperadores(value: id!)
              }else{
                  validadorOperadores(value: id!)
              }
          }
    }
let id = sender.currentTitle as? String
if id == "AC" {
    resultsLabel.text + "
    resultsLabel2.text = ""
    print("Enter a AC")
} else if id == "="{
    let expression = NSEExpression(format: workkings)
    let result = expressionValue(with: nil, context: nil) as! Double
    let resultString = formatResult(result: result)
    resultLabel2.text = resultString
    
} else if id == "/" || id == "-" || id == "-" {
    validadorOperadores(value: id!)
    {
        else{
            validadorOperadores(value: id!)!
        }
    }
}

