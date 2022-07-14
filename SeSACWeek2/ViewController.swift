//
//  ViewController.swift
//  SeSACWeek2
//
//  Created by 이현호 on 2022/07/11.
//

import UIKit

class ViewController: UIViewController {


    var nums = [0,0,0,0,0,0,0,0,0]
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label6: UILabel!
    @IBOutlet weak var label7: UILabel!
    @IBOutlet weak var label8: UILabel!
    @IBOutlet weak var label9: UILabel!
    
    @IBOutlet var labels: [UILabel]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }

    @IBAction func button1Clicked(_ sender: UIButton) {
        
        nums[0] += 1
        label1.text = "행복해\(nums[0])"
        
    }
    
    @IBAction func button2Clicked(_ sender: UIButton) {
        
        nums[1] += 1
        label2.text = "행복해\(nums[1])"
        
    }
    
    @IBAction func button3Clicked(_ sender: UIButton) {
        
        nums[2] += 1
        label3.text = "행복해\(nums[2])"
        
    }
    
    @IBAction func button4Clicked(_ sender: UIButton) {
        
        nums[3] += 1
        label4.text = "행복해\(nums[3])"
        
    }
    
    @IBAction func button5Clicked(_ sender: UIButton) {
        
        nums[4] += 1
        label5.text = "행복해\(nums[4])"
        
    }
    
    
    @IBAction func button6Clicked(_ sender: UIButton) {
        
        nums[5] += 1
        label6.text = "행복해\(nums[5])"
        
    }
    
    @IBAction func button7Clicked(_ sender: UIButton) {
        
        nums[6] += 1
        label7.text = "행복해\(nums[6])"
        
    }
    
    @IBAction func button8Clicked(_ sender: UIButton) {
        
        nums[7] += 1
        label8.text = "행복해\(nums[7])"
        
    }
    
    @IBAction func button9Clicked(_ sender: UIButton) {
        
        nums[8] += 1
        label9.text = "행복해\(nums[8])"
        
    }
    
    
    
    
}

