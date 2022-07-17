//
//  StackViewController.swift
//  SeSACWeek2
//
//  Created by 이현호 on 2022/07/12.
//

import UIKit

class StackViewController: UIViewController {

    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var firstButton: UIButton!
    
    //각 레이블의 할당해줄 숫자 변수를 배열로 한번에 선언
    var emotionArray = [0,0,0,0,0,0]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //첫번째 레이블에 이름 할당해줌
        firstLabel.text = setUserNickname()
        
        //뷰의 백그라운드컬러에 노란색 할당해줌
        view.backgroundColor = example().0
        
        //첫번째 버튼의 이미지에 슬라임8을 할당해주는 함수 실행
        firstButton.setImage(UIImage(named: example().2), for: .normal)
        
        //첫번째 버튼에 0태그를 걸어서 다른 버튼들과 차별점을 만들어줌
        firstButton.tag = 0
        
        //슬라임6의 이미지를 오리지널로 렌더링하여 image 상수에 할당해줌
        let image = UIImage(named:"sesac_slime6")?.withRenderingMode(.alwaysOriginal)
        
        //첫번째 버튼의 이미지를 위에서 선언해준 이미지 함수로 할당해줌
        firstButton.setImage(image, for: .normal)
        
        //let systemImage = UIImage(systemName: <#T##String#>) //애플 시스템 심볼
        
    }
    
    //배경색, 레이블, 이미지를 반환해주는 함수 생성
    func example() -> (UIColor, String, String){
        
        let color: [UIColor] = [.yellow, .red, .blue]
        let image: [String] = ["sesac_slime6", "sesac_slime7", "sesac_slime8", "sesac_slime5"]
        
        return (color.randomElement()!,"사또밥",image.randomElement()!)
        
    }
    
    //아래 닉네임의 배열에서 랜덤으로 이름을 골라서 문자열로 반환해주는 함수 생성
    func setUserNickname() -> String {
        
        let nickname = ["고래밥", "몽쉘", "사또밥"]
        let select = nickname.randomElement()!
        
        return "저는 \(select)입니다"
    }
    
    //첫번째 버튼 클릭시 값을 1씩 증가시켜서 첫번째 레이블에 할당해주고 경고창을 보여줌
    @IBAction func firstButtonClicked(_ sender: UIButton) {
        
        //UI버튼의 태그, 현재 이름, 현재 이미지를 출력
        print(sender.tag, sender.currentTitle, sender.currentImage)
        
        emotionArray[sender.tag] += 1
        
        firstLabel.text = "\(emotionArray[0])"
        
        showAlertController()
        
    }
    
    //경고창을 생성하는 과정을 하나의 함수로 생성
    func showAlertController() {
        
        //1. 흰 바탕: UIAlertController
        let alert = UIAlertController(title: "타이틀", message: "여기는 메시지가 들어갑니다", preferredStyle: .actionSheet)
        
        //2. 버튼
        let ok = UIAlertAction(title: "확인", style: .destructive, handler: nil)
        let cancel = UIAlertAction(title: "취소", style: .cancel, handler: nil)
        let dingdong = UIAlertAction(title: "띵동", style: .default, handler: nil)
        let hi = UIAlertAction(title: "안농", style: .default, handler: nil)
        
        //3. 1바탕에 2버튼을 추가
        alert.addAction(hi)
        alert.addAction(dingdong)
        alert.addAction(cancel)
        alert.addAction(ok)
        
        //4. present
        present(alert, animated: true, completion: nil)
        
    }
    
    
}
