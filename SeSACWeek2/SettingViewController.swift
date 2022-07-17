//
//  SettingViewController.swift
//  SeSACWeek2
//
//  Created by 이현호 on 2022/07/14.
//

import UIKit

class SettingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //DateFormatter: 알아보기 쉬운 날짜 + 시간대 (yyyy MM dd hh:mm:ss)
        let format = DateFormatter()
        format.dateFormat = "M월 d일, yy년"
        
        //어디지역 기준으로 할지 정함
        //format.locale
        
        let result = format.string(from: Date()) //현재 시간 나오게함
        print(result, Date())//Date()는 영국표준시 기준임
        
        let word = "3월 2일, 19년" //우리나라기준
        let dateResult = format.date(from: word) //영국표준시 기준임 -9
        
        //print(dateResult)
        
    }
    
}
