//
//  CreateEventStepThreeViewController.swift
//  Alumni
//
//  Created by alumnos on 1/2/18.
//  Copyright © 2018 adrian. All rights reserved.
//

import UIKit
import Alamofire
import AwesomeTextFieldSwift

class CreateEventStepThreeViewController: UIViewController {
    
    @IBOutlet weak var newEventLbl: UILabel!
    @IBOutlet weak var cancelBtn: UIButton!
    @IBOutlet weak var introduceEventLbl: UILabel!
    @IBOutlet weak var indtroduceLocalizationTxt: AwesomeTextField!
    @IBOutlet weak var introduceURLTxt: AwesomeTextField!
    @IBOutlet weak var createBtn: UIButton!
    @IBOutlet weak var backBtn: UIButton!
    
    var dataReceived:String?
    var descriptionReceived:String?
    var pickerReceived:String?
    var indexReceived:Int?
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(dataReceived!)
        print(descriptionReceived!)
        //print(pickerReceived!)
        print(indexReceived!)
       

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        backBtn.layer.cornerRadius = 10
        backBtn.layer.masksToBounds = true
        
        createBtn.layer.cornerRadius = 10
        createBtn.layer.masksToBounds = true
    }

    @IBAction func createEvent(_ sender: Any) {
        introduceURLTxt.text = ""
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "EventCreatedViewController") as! EventCreatedViewController
        self.present(vc, animated: true, completion: nil)
        
        
        
        
        
        
    }
    @IBAction func cancelBtn(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "TabBarViewController") as! TabBarViewController
        self.present(vc, animated: true, completion: nil)
    }
    
    @IBAction func dismissVC(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any ressources that can be recreated.
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
