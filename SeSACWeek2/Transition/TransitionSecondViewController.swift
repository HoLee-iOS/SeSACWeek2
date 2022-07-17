//
//  TransitionSecondViewController.swift
//  SeSACWeek2
//
//  Created by 이현호 on 2022/07/15.
//

import UIKit

//키입력 오류의 방지로 아래와 같이 열거형으로 사용하는 경우가 많음
//enum UserDefaultsKey: String {
//    case emotion
//}

class TransitionSecondViewController: UIViewController {
    
    @IBOutlet weak var mottoTextView: UITextView!
    /*
     1. 앱 키면 데이터를 가지고 와서 텍스트 뷰에 보여줘야함
     2. 바뀐 데이터를 저장해줘야함
     => UserDefault
     */
    
    //감정 갯수 영구적으로 저장하기!!
    @IBOutlet weak var countLabel: UILabel!
    
    @IBAction func emotionButtonClicked(_ sender: UIButton) {
        
        //기존 데이터 값 가져오기
        //예전 데이터
        let currentValue = UserDefaults.standard.integer(forKey: "emotion")
        
        //감정 + 1
        let updateValue = currentValue + 1
        
        //새로운 값 저장
        UserDefaults.standard.set(updateValue, forKey: "emotion")
        
        //레이블에 새로운 내용 보여주기
        //새로운 데이터
        //키 이름에서 오타가 나면 0
        countLabel.text = "\(UserDefaults.standard.integer(forKey: "emotion"))"
        
        //키 선택해서 삭제
        //UserDefaults.standard.removeObject(forKey: <#T##String#>)
        //등록된 모든 UserDefaults 삭제
        //UserDefaults 상속 불가
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#function)
        
        //카운트레이블에 이모션 키에 맞는 인티저타입의 값을 할당함
        countLabel.text = "\(UserDefaults.standard.integer(forKey: "emotion"))"
        
        //닉네임 키에 맞는 스트링 타입의 값이 있으면 모토텍스트뷰에 값을 할당하고 아닐 경우 고래밥을 할당하는 조건문
        if UserDefaults.standard.string(forKey: "nickname") != nil {
            //데이터 가져오기 닉네임 박스 안에 있는 애를 문자열로 가지고 올것이다
            mottoTextView.text = UserDefaults.standard.string(forKey: "nickname")
        } else {
            //데이터가 없는 경우에 사용할 문구
            mottoTextView.text = "고래밥"
        }
        
        //이모션 키에 맞는 스트링 타입의 값이 있으면 카운트 레이블에 할당하고 아니면 0을 할당하는 조건문
        if UserDefaults.standard.string(forKey: "emotion") != nil {
            countLabel.text = UserDefaults.standard.string(forKey: "emotion")
        } else {
            countLabel.text = "0"
        }
        
//        print(UserDefaults.standard.string(forKey: "phoneNumber"))
//        print(UserDefaults.standard.integer(forKey: "age"))
//        print(UserDefaults.standard.bool(forKey: "inapp"))
        
    }
    
    //뷰컨트롤러의 생명주기 확인용 함수
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print(#function)
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print(#function)
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print(#function)
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print(#function)
    }
    
    //세이브버튼 클릭시 닉네임 키에 모토텍스트뷰의 값을 저장
    @IBAction func saveButtonClicked(_ sender: UIButton) {
        //닉네임이라는 키를 만들어주는 과정
        UserDefaults.standard.set(mottoTextView.text, forKey: "nickname")
        print("저장되었습니다!")
        
    }
}
