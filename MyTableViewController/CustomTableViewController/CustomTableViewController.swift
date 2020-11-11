//
//  CustomTableViewController.swift
//  MyTableViewController
//
//  Created by Юлия Омельченко on 02.04.2020.
//  Copyright © 2020 Юлия Омельченко. All rights reserved.
//

import UIKit

class CustomTableViewController: UITableViewController {
    
    var massiv: [СustomWorkerModel]
    
    // 15 - 20 строки - изменяем цвет текста статус бара
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
    
    override func viewDidAppear(_ animated: Bool) {
        navigationController?.navigationBar.barStyle = .black
    }
    
    init(massiv:[СustomWorkerModel]) {
        self.massiv = massiv
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = "НАЗВАНИЕ"
//        self.navigationController?.navigationBar.backgroundColor = .clear
//        self.navigationController?.navigationBar.tintColor = .white
        // 32 и 33 строки - изменили цвет заголовка на белый
        let textAtributs = [NSAttributedString.Key.foregroundColor: UIColor.white]
        self.navigationController?.navigationBar.titleTextAttributes = textAtributs
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
//        self.navigationController?.view.backgroundColor = .clear

        self.tableView.register(CustomTableViewCell.self, forCellReuseIdentifier: "CustomTableViewCell")
        self.tableView.backgroundView = UIImageView(image: UIImage(named: "tableViewBaground"))
    }


    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return massiv.count
    }
    
    
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell", for: indexPath) as! CustomTableViewCell
        // появятся не кликабельные стрелочки на ячейкаx
        cell.accessoryType = .disclosureIndicator
        cell.labelName.text = massiv[indexPath.row].name
        cell.labelPosition.text = massiv[indexPath.row].position
//        cell.viewImage.backgroundColor = massiv[indexPath.row].color
//        cell.viewImage.image = UIImage(named: String(indexPath.row))
        cell.viewImage.image = UIImage(named: massiv[indexPath.row].imageName)
//        cell.backgroundColor = .clear
        cell.backgroundView = UIImageView(image: UIImage(named: "фон ячейки \(indexPath.row)"))
        return cell
    }
    
//    // Спрашивает делегата, должна ли указанная строка быть выделена.
//    override func tableView(_ tableView: UITableView, shouldHighlightRowAt indexPath: IndexPath) -> Bool {
//        <#code#>
//    }
//
//    // Сообщает делегату, что указанная строка была выделена.
//    override func tableView(_ tableView: UITableView, didHighlightRowAt indexPath: IndexPath) {
//        <#code#>
//    }
//
//    // Сообщает делегату, что выделение было удалено из строки по указанному пути индекса.
//    override func tableView(_ tableView: UITableView, didUnhighlightRowAt indexPath: IndexPath) {
//        <#code#>
//    }
    
    
    
       
       override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//           let vc = UIViewController()
//           vc.title = String(massiv[indexPath.row])
//           // задаем разный цвет view для четных и нечетных
//           if massiv[indexPath.row] % 2 == 0 {
//               vc.view.backgroundColor = .black
//           } else {
//               vc.view.backgroundColor = .gray
//           }
//           self.navigationController?.pushViewController(vc, animated: true)
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
