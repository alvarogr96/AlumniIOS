//
//  NewEventViewController.swift
//  Alumni
//
//  Created by alumnos on 30/1/18.
//  Copyright © 2018 adrian. All rights reserved.
//

import UIKit

class NewEventViewController: UIViewController {
    @IBOutlet weak var eventBtn: UIButton!
    @IBOutlet weak var NewsBtn: UIButton!
    @IBOutlet weak var ofertsBtn: UIButton!
    @IBOutlet weak var notificationsBtn: UIButton!
    @IBOutlet weak var cancelButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    override func viewWillAppear(_ animated: Bool) {
        eventBtn.layer.cornerRadius = 10
        eventBtn.layer.masksToBounds = true
        
        NewsBtn.layer.cornerRadius = 10
        NewsBtn.layer.masksToBounds = true
        
        ofertsBtn.layer.cornerRadius = 10
        ofertsBtn.layer.masksToBounds = true
        
        notificationsBtn.layer.cornerRadius = 10
        notificationsBtn.layer.masksToBounds = true
        
        cancelButton.layer.cornerRadius = 10
        cancelButton.layer.masksToBounds = true
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func createEventButton(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "CreateEventStepTwoViewController") as! CreateEventStepTwoViewController
        
        vc.indexReceived = eventBtn.tag
        self.present(vc, animated: true, completion: nil)
    }
    
    @IBAction func dismissVC(_ sender: Any) {
        dismiss(animated: true, completion: nil)
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
