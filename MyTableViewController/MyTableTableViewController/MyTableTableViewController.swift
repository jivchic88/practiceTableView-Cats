//
//  MyTableTableViewController.swift
//  MyTableViewController
//
//  Created by Юлия Омельченко on 02.04.2020.
//  Copyright © 2020 Юлия Омельченко. All rights reserved.
//

import UIKit

class MyTableTableViewController: UITableViewController {

    let massiv = [Int] (1...10000)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .cyan

        self.navigationItem.title = "Название табл"
        //self.navigationController?.navigationBar.prefersLargeTitles = true - большой заголовок
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationController?.navigationBar.backgroundColor = .clear
        //зарегистрировали ячейку, был ранее создан файл MyTableViewCell
        self.tableView.register(MyTableViewCell.self, forCellReuseIdentifier: "MyTableViewCell")
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return massiv.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyTableViewCell", for: indexPath) as! MyTableViewCell
        //устанавливаем текст в каждой ячейке
        cell.textLabel?.text = String(massiv[indexPath.row])
        // появятся не кликабельные стрелочки на ячейкаx
        cell.accessoryType = .disclosureIndicator
        // задаем цвета для самих ячеек
        if massiv[indexPath.row] % 2 == 0 {
            cell.backgroundColor = .orange
        } else {
            cell.backgroundColor = .purple
        }
        return cell
    }
    
    // функция для установки действия по нажатию на ячейку
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = UIViewController()
        //vc.view.backgroundColor = .purple
        vc.title = String(massiv[indexPath.row])
        // задаем разный цвет view для четных и нечетных
        if massiv[indexPath.row] % 2 == 0 {
            vc.view.backgroundColor = .orange
        } else {
            vc.view.backgroundColor = .purple
        }
        self.navigationController?.pushViewController(vc, animated: true)
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}












































//class MyViewController: UIViewController {
////    let tableView = UITableView()
//    let karakulaView = MyKarakulaView()
//
//    override func viewDidLoad() {
////        tableView.delegate = self
////        tableView.dataSource = self
//    }
//}







//extension MyViewController: UITableViewDataSource {
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        <#code#>
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        <#code#>
//    }
//
//
//}
//
//extension MyViewController: UITableViewDelegate {
//
//}
