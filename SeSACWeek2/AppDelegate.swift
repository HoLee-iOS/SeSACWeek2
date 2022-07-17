//
//  AppDelegate.swift
//  SeSACWeek2
//
//  Created by 이현호 on 2022/07/11.
//

import UIKit
import IQKeyboardManagerSwift //1번

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        //런치스크린의 화면을 3초 동안 지연시킴
        //sleep(3)
        
        //키보드영역에 텍스트필드가 있어서 가려지는 경우, 텍스트필드 만큼의 높이를 자동으로 올려줬다가 내려줌
        //오픈소스
        IQKeyboardManager.shared.enable = true //2번
        
        return true
    }

    //iOS 13 버전 이후부터 사용가능하게 만들어주는 어노테이션
    @available(iOS 13.0, *)
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }
    
    //iOS 13 버전 이후부터 사용가능하게 만들어주는 어노테이션
    @available(iOS 13.0, *)
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

