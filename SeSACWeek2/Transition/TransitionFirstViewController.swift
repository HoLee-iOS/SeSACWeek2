//
//  TransitionViewController.swift
//  SeSACWeek2
//
//  Created by 이현호 on 2022/07/15.
//

import UIKit

class TransitionViewController: UIViewController {
    
    @IBOutlet weak var randomNumberLabel: UILabel!
    
    //뷰컨트롤러의 생명주기 확인용 함수
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#function)
    }
    override func viewWillAppear(_ animated: Bool) {
       super.viewWillAppear(animated)
        print(#function)
        randomNumberLabel.text = "\(Int.random(in: 1...100))"
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

    //화면자체에서 뒤로가기 만들어줌
    @IBAction func unwindTranstionFirstVC(skylerSegue: UIStoryboardSegue) {
        
    }

}
