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
    
    var emotionArray = [0,0,0,0,0,0]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstLabel.text = setUserNickname()
        
        view.backgroundColor = example().0
        firstButton.setImage(UIImage(named: example().2), for: .normal)
        
        firstButton.tag = 0
        
        let image = UIImage(named: "sesac_slime6")?.withRenderingMode(.alwaysOriginal)
        firstButton.setImage(image, for: .normal)
        
        //let systemImage = UIImage(systemName: <#T##String#>) //애플 시스템 심볼
        
    }
    
    //배경색, 레이블, 이미지
    func example() -> (UIColor, String, String){
        
        let color: [UIColor] = [.yellow, .red, .blue]
        let image: [String] = ["sesac_slime6", "sesac_slime7", "sesac_slime8", "sesac_slime5"]
        
        return (color.randomElement()!,"사또밥",image.randomElement()!)
        
    }
    
    
    func setUserNickname() -> String {
        
        let nickname = ["고래밥", "몽쉘", "사또밥"]
        let select = nickname.randomElement()!
        
        return "저는 \(select)입니다"
    }
    
    
    @IBAction func firstButtonClicked(_ sender: UIButton) {
        
        print(sender.tag, sender.currentTitle, sender.currentImage)
        
        emotionArray[sender.tag] += 1
        
        firstLabel.text = "\(emotionArray[0])"
        
        
        showAlertController()
        
    }
    
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
