//
//  SegmentedViewController.swift
//  SeSACWeek2
//
//  Created by 이현호 on 2022/07/12.
//

import UIKit

//클래스 밖에서 열거형을 선언해주면 클래스 밖에서도 사용 가능
enum MusicType: Int {
    case all = 0
    case korea = 1
    case other = 2
}

//배열의 인덱스와 같이 세그먼트의 인덱스도 바꾸지 못함

class SegmentedViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        segmentControlValueChanged(segmentControl)
        
    }
    
    @IBAction func segmentControlValueChanged(_ sender: UISegmentedControl) {
        
        if segmentControl.selectedSegmentIndex == MusicType.all.rawValue {
            
        } else if segmentControl.selectedSegmentIndex == MusicType.korea.rawValue{
            
        }
        
        if segmentControl.selectedSegmentIndex == 0 {
            resultLabel.text = "첫번째 세그먼트 선택"
        } else if segmentControl.selectedSegmentIndex == 1 {
            resultLabel.text = "두번째 세그먼트 선택"
        } else if segmentControl.selectedSegmentIndex == 2 {
            resultLabel.text = "세번째 세그먼트 선택"
        }else {
            resultLabel.text = "오류"
        }
        
    }
    
    
}
