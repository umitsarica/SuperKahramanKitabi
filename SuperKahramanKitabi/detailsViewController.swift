//
//  detailsViewController.swift
//  SuperKahramanKitabi
//
//  Created by Umit SARICA on 6.02.2024.
//

import UIKit

class detailsViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var label: UILabel!
    
    var secilenKahramanismi = ""
    var secilenKahramanGorselismi = ""
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        imageView.image = UIImage(named: secilenKahramanGorselismi)
        label.text = secilenKahramanismi
    }
    

 
}
