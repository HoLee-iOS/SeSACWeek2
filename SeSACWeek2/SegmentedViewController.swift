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

//배열의 인덱스와 같이 세그먼트의 인덱스 숫자도 바꾸지 못함
class SegmentedViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //아래의 함수를 실행
        segmentControlValueChanged(segmentControl)
        
    }
    
    //세그먼트 컨트롤의 값을 변경하면 세그먼드 컨트롤의 인덱스 별로 결과 레이블에 값을 할당 해줌
    @IBAction func segmentControlValueChanged(_ sender: UISegmentedControl) {
        
        //아래의 조건문을 위에서 만든 열거형을 이용해서 만든 조건문
        if segmentControl.selectedSegmentIndex == MusicType.all.rawValue {
            
        } else if segmentControl.selectedSegmentIndex == MusicType.korea.rawValue{
            
        }
        
        //세그먼트 컨트롤의 인덱스 별로 결과 레이블에 값을 할당해주는 조건문
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
