//
//  SceneDelegate.swift
//  MyTableViewController
//
//  Created by Юлия Омельченко on 02.04.2020.
//  Copyright © 2020 Юлия Омельченко. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScence = (scene as? UIWindowScene) else { return }
        self.window = UIWindow(windowScene: windowScence)
        
        // место, где меняем функции в зависимости от папок
        let vc = getCustomTableViewController()
//        let vc = getKarakulaViewController()
//        let vc = getMyTableTableViewController()
        
        let navigationController = UINavigationController(rootViewController: vc)
        self.window?.rootViewController = navigationController
        self.window?.makeKeyAndVisible()
    }
    
    // папка CustomTableViewController
    func getCustomTableViewController() -> CustomTableViewController {
        let custom1 = СustomWorkerModel(name: "Васин Василий", position: "Генеральный директор", imageName: "0")
        let custom2 = СustomWorkerModel(name: "Иванов Иван", position: "Финансовый директор", imageName: "1")
        let custom3 = СustomWorkerModel(name: "Невасин Василий", position: "Менеджер", imageName: "2")
        let custom4 = СustomWorkerModel(name: "Невасин Василиса", position: "Менеджер", imageName: "3")
        let custom5 = СustomWorkerModel(name: "Невасин Василеныш", position: "Младший менеджер", imageName: "4")
        let custom6 = СustomWorkerModel(name: "Ивановский Василий", position: "Менеджер", imageName: "5")
        let custom7 = СustomWorkerModel(name: "Ивановская Василиса", position: "Менеджер", imageName: "6")
        let custom8 = СustomWorkerModel(name: "Ивановская Светлана", position: "Младший менеджер", imageName: "7")
        let custom9 = СustomWorkerModel(name: "Володин Василий", position: "Офис - менеджер", imageName: "8")
        let custom10 = СustomWorkerModel(name: "Володина Василиса", position: "Курьер", imageName: "9")
        let custom11 = СustomWorkerModel(name: "Володин Немир", position: "Курьер", imageName: "10")
        let custom12 = СustomWorkerModel(name: "Васюткина Василька", position: "Стриптизерша", imageName: "11")
        let custom13 = СustomWorkerModel(name: "Федоров Равшут", position: "Уборщик", imageName: "12")
        
        let massivModel = [custom1, custom2, custom3, custom4, custom5, custom6, custom7, custom8, custom9, custom10, custom11, custom12, custom13]
        
        let vc = CustomTableViewController(massiv: massivModel)
        return vc
    }
    
    // папка MVC
    func getKarakulaViewController() -> MyKarakulaViewController {
        let karakulaModel = KarakulaModel(karakulaViewColor: .black, squareViewColor: .cyan)
        let vc = MyKarakulaViewController(model: karakulaModel)
        return vc
    }
    
    // папка MyTableTableViewController
    func getMyTableTableViewController() -> MyTableTableViewController {
        let vc = MyTableTableViewController()
        return vc
    }
    
    
    
    
    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
    }
    
    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }
    
    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }
    
    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }
    
    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }
    
    
}

