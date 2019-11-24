//  ViewController.swift
//  BullsEye
//
//  Created by Lija Alex on 18/07/19.
//  Copyright © 2019 Lija Alex. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var currentValue=0
    var targetValue=0
    //var score=0


    @IBOutlet weak var slider:UISlider!
    @IBOutlet weak var targetLabel:UILabel!
    //@IBOutlet weak var scoreLabel:UILabel!


    override func viewDidLoad() {
        super.viewDidLoad()
        let roundedValue=slider.value.rounded()
        currentValue=Int(roundedValue)
        startNewRound()
        }
    @IBAction func showAlert(){

        let difference=abs(targetValue-currentValue)

        let points=100-difference

        //score += points

        let message="You scored \(points) points"

        let alert=UIAlertController(title:"Hello,world", message:message, preferredStyle:.alert)

        let action=UIAlertAction(title: "OK", style: .default, handler: nil)

        alert.addAction(action)

        present(alert, animated: true, completion: nil)

        startNewRound()
    }
    @IBAction func  sliderMoved(_slider:UISlider){

        let roundedValue=slider.value.rounded()
        currentValue=Int(roundedValue)


    }
    func startNewRound(){

        targetValue=Int.random(in: 1...100)
        currentValue=50
        slider.value=Float(currentValue)
        updateLabels()
    }
    func updateLabels(){
        targetLabel.text=String(targetValue)
//        scoreLabel.text=String(score)

    }
}
