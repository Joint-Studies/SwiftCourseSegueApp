//
//  ViewController.swift
//  segue_app
//
//  Created by Rodrigo Silva on 02/06/24.
//

import UIKit

class ViewController: UIViewController {
    
    var userName = ""

    @IBOutlet weak var nameText: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisapper function called")
    }

    @IBAction func nextClicked(_ sender: Any) {
        userName = nameText.text!
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.myName = userName
        }
    }
    
}

