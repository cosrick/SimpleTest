//
//  ViewController.swift
//  Quiz
//
//  Created by 李昱賢 on 2015/2/1.
//  Copyright (c) 2015年 李昱賢. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Welcome: UILabel!
    @IBOutlet weak var FinishButton: UIButton!
    
    var CorrectAnswer = String()
    var Number = 1
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
        Questions(Number)
        Hide()
    }
    
    var detailItem: AnyObject? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }
    
    func configureView() {
        // Update the user interface for the detail item.
        if let detail: AnyObject = self.detailItem {
            if let label = self.Welcome {
                label.text = "Hello, " + detail.description
            }
        }
    }
    
    func Hide(){
        FinishButton.hidden = true
    }
    
    func unHide(){
        FinishButton.hidden = false
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet weak var QuestionLabel: UILabel!
    @IBOutlet weak var Button1: UIButton!
    @IBOutlet weak var Button2: UIButton!
    @IBOutlet weak var Button3: UIButton!
    @IBOutlet weak var Button4: UIButton!
    
   
    func Questions(order: NSInteger){
        switch (order){
        case 1:
            QuestionLabel.text = "What is my name?"
            Button1.setTitle("Rick", forState: UIControlState.Normal)
            Button2.setTitle("Kelly", forState: UIControlState.Normal)
            Button3.setTitle("Lulala", forState: UIControlState.Normal)
            Button4.setTitle("Jeremy", forState: UIControlState.Normal)
            CorrectAnswer = "1"
            Number++
            
            break
        case 2:
            QuestionLabel.text = "How old?"
            Button1.setTitle("18", forState: UIControlState.Normal)
            Button2.setTitle("19", forState: UIControlState.Normal)
            Button3.setTitle("20", forState: UIControlState.Normal)
            Button4.setTitle("21", forState: UIControlState.Normal)
            CorrectAnswer = "3"
            Number++
            
            break
        case 3:
            QuestionLabel.text = "How tall?"
            Button1.setTitle("155", forState: UIControlState.Normal)
            Button2.setTitle("165", forState: UIControlState.Normal)
            Button3.setTitle("175", forState: UIControlState.Normal)
            Button4.setTitle("185", forState: UIControlState.Normal)
            CorrectAnswer = "3"
            Number++
            break
            
        case 4:
            QuestionLabel.text = "Favorite?"
            Button1.setTitle("Eat", forState: UIControlState.Normal)
            Button2.setTitle("Sleep", forState: UIControlState.Normal)
            Button3.setTitle("Study", forState: UIControlState.Normal)
            Button4.setTitle("Play", forState: UIControlState.Normal)
            CorrectAnswer = "4"
            Number++
            
            break
        default:
            
            break
        }
        
        
    }
    
    @IBAction func Button1Action(sender: AnyObject) {
        if CorrectAnswer == "1" && Number != 5{
            let myAlert = UIAlertController(title: "Result", message: "CORRECT!", preferredStyle: UIAlertControllerStyle.Alert)
            myAlert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(myAlert, animated: true, completion: nil)
            Questions(Number)
            
        }else if CorrectAnswer == "1" && Number == 5{
            let myAlert = UIAlertController(title: "Result", message: "CORRECT!", preferredStyle: UIAlertControllerStyle.Alert)
            myAlert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(myAlert, animated: true, completion: nil)
            unHide()
        }else{
            let myAlert = UIAlertController(title: "Result", message: "WRONG!", preferredStyle: UIAlertControllerStyle.Alert)
            myAlert.addAction(UIAlertAction(title: "AGAIN", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(myAlert, animated: true, completion: nil)
            
        }
        
    }
    @IBAction func Button2Action(sender: AnyObject) {
        if CorrectAnswer == "2" && Number != 5{
            let myAlert = UIAlertController(title: "Result", message: "CORRECT!", preferredStyle: UIAlertControllerStyle.Alert)
            myAlert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(myAlert, animated: true, completion: nil)
            Questions(Number)
            
        }else if CorrectAnswer == "2" && Number == 5{
            let myAlert = UIAlertController(title: "Result", message: "CORRECT!", preferredStyle: UIAlertControllerStyle.Alert)
            myAlert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(myAlert, animated: true, completion: nil)
            unHide()
        }else{
            let myAlert = UIAlertController(title: "Result", message: "WRONG!", preferredStyle: UIAlertControllerStyle.Alert)
            myAlert.addAction(UIAlertAction(title: "AGAIN", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(myAlert, animated: true, completion: nil)
            
        }
        
    }
    @IBAction func Button3Action(sender: AnyObject) {
        if CorrectAnswer == "3" && Number != 5{
            let myAlert = UIAlertController(title: "Result", message: "CORRECT!", preferredStyle: UIAlertControllerStyle.Alert)
            myAlert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(myAlert, animated: true, completion: nil)
            Questions(Number)
            
        }else if CorrectAnswer == "3" && Number == 5{
            let myAlert = UIAlertController(title: "Result", message: "CORRECT!", preferredStyle: UIAlertControllerStyle.Alert)
            myAlert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(myAlert, animated: true, completion: nil)
            unHide()
        }else {
            let myAlert = UIAlertController(title: "Result", message: "WRONG!", preferredStyle: UIAlertControllerStyle.Alert)
            myAlert.addAction(UIAlertAction(title: "AGAIN", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(myAlert, animated: true, completion: nil)
            
        }
        
    }
    @IBAction func Button4Action(sender: AnyObject) {
        if CorrectAnswer == "4" && Number != 5{
            let myAlert = UIAlertController(title: "Result", message: "CORRECT!", preferredStyle: UIAlertControllerStyle.Alert)
            myAlert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(myAlert, animated: true, completion: nil)
            Questions(Number)
            
        }else if CorrectAnswer == "4" && Number == 5{
            let myAlert = UIAlertController(title: "Result", message: "CORRECT!", preferredStyle: UIAlertControllerStyle.Alert)
            myAlert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(myAlert, animated: true, completion: nil)
            unHide()
        }else {
            let myAlert = UIAlertController(title: "Result", message: "WRONG!", preferredStyle: UIAlertControllerStyle.Alert)
            myAlert.addAction(UIAlertAction(title: "AGAIN", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(myAlert, animated: true, completion: nil)
            
        }
        
    }
    
    
}

