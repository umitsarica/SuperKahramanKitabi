//
//  ViewController.swift
//  SuperKahramanKitabi
//
//  Created by Umit SARICA on 6.02.2024.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var superkahramanisimleri = [String]()
    var superkahramanGorselleri = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        
        
        
        superkahramanisimleri.append("Batman")
        superkahramanisimleri.append("Superman")
        superkahramanisimleri.append("Iron Man")
        superkahramanisimleri.append("SpiderMan")
        superkahramanisimleri.append("Captain Amerika")
        
        
        superkahramanGorselleri.append("batman")
        superkahramanGorselleri.append("superman")
        superkahramanGorselleri.append("ironman")
        superkahramanGorselleri.append("spiderman")
        superkahramanGorselleri.append("captainAmerica")
        
        
        
    }
        //NumberofRowsInsect.on -> kaç tane row olacak
        //cellForRow atIndexpatch -> hücrenin içerisinde neler gösterilecek
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return superkahramanisimleri.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = superkahramanisimleri[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt  indexPath: IndexPath) {
        if editingStyle == .delete {
            superkahramanGorselleri.remove(at: indexPath.row)
            superkahramanisimleri.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with:UITableView.RowAnimation.fade)
        }    }
    
}




