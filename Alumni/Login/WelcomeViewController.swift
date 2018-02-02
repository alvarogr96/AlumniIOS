//
//  WelcomeViewController.swift
//  Alumni
//
//  Created by alumnos on 26/1/18.
//  Copyright © 2018 adrian. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var rectangleBlackView: UIView!
    @IBOutlet weak var welcomeButton: UIButton!
    @IBOutlet weak var welcomeLbl: UILabel!
    @IBOutlet weak var welcomeTxt: UITextView!
    
    var dataReceived:String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLbl.text = "Bienvenido \(dataReceived!)"
        //welcomeLbl
        // Do any additional setup after loading the view.
        
        Localize.setCurrentLanguage("es")
        
        //welcomeLbl.text = "bienvenido".localized() 
        welcomeTxt.text = "information".localized()
        welcomeButton.setTitle("quieroempezar".localized(), for: .normal)
    }

    override func viewWillAppear(_ animated: Bool) {
        rectangleBlackView.layer.cornerRadius = 10
        rectangleBlackView.layer.masksToBounds = true
        
        welcomeButton.layer.cornerRadius = 10
        welcomeButton.layer.masksToBounds = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func welcomeButton(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "TabBarViewController") as! TabBarViewController
        self.present(vc, animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
