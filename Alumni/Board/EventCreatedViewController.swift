//
//  EventCreatedViewController.swift
//  Alumni
//
//  Created by alumnos on 1/2/18.
//  Copyright © 2018 adrian. All rights reserved.
//

import UIKit

class EventCreatedViewController: UIViewController {

    @IBOutlet weak var newEventLbl: UILabel!
    @IBOutlet weak var eventCreatedLbl: UILabel!
    @IBOutlet weak var goodLbl: UILabel!
    @IBOutlet weak var acceptBtn: UIButton!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        acceptBtn.layer.cornerRadius = 10
        acceptBtn.layer.masksToBounds = true
    }

    
    @IBAction func acceptBtn(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "TabBarViewController") as! TabBarViewController
        self.present(vc, animated: true, completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
