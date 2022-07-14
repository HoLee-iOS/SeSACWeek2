//
//  CalculViewController.swift
//  SeSACWeek2
//
//  Created by 이현호 on 2022/07/14.
//

import UIKit

class CalculViewController: UIViewController {
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBOutlet var dateLabels: [UILabel]!
    
    @IBOutlet var dDayLabels: [UILabel]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setStyle()
        setDDayLabel()
        
    }
    
    
    func setStyle() {
        if #available(iOS 14.0, *){
            datePicker.preferredDatePickerStyle = .inline
        } else {
        }
    }
    
    func setDDayLabel() {
        
        for i in 0..<dDayLabels.count {
            dDayLabels[i].text = "D+\(i + 1)00"
        }
        
    }
    
    @IBAction func setDateLabel(_ sender: UIDatePicker) {
        
        let datePickerView = sender //sender로 받은 날짜를 datePickerView에 저장하고
        let pickDate = datePickerView.date //datePickView의 date 타입을 pickDate에 저장하고
        let formatter = DateFormatter() //DateFormatter 클래스 상수 선언
        formatter.locale = Locale(identifier: "ko_KR")
        formatter.dateFormat = "yyyy년 MM월 dd일" //formatter의 dateFormat 속성을 설정
        
        //date 타입이 기본적으로 갖고 있는 Calender 구조체를 이용해서 제가 선택한 날짜를 current.date로 받아서
        //byAdding 함수를 사용해서 넣어줬습니다!
        //byAdding 부분에 .day, .month .year, .hour로 더하고자 하는 시간의 형식을 편하게 바꿔서 사용가능합니다
        let pickDatePlusDay0 = Calendar.current.date(byAdding: .day, value: 100, to: pickDate)
        dateLabels[0].text = formatter.string(from: pickDatePlusDay0!)
        let pickDatePlusDay1 = Calendar.current.date(byAdding: .day, value: 200, to: pickDate)
        dateLabels[1].text = formatter.string(from: pickDatePlusDay1!)
        let pickDatePlusDay2 = Calendar.current.date(byAdding: .day, value: 300, to: pickDate)
        dateLabels[2].text = formatter.string(from: pickDatePlusDay2!)
        let pickDatePlusDay3 = Calendar.current.date(byAdding: .day, value: 400, to: pickDate)
        dateLabels[3].text = formatter.string(from: pickDatePlusDay3!)
        
    }
    
}
