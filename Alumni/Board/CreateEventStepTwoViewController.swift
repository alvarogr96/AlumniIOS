//
//  CreateEventStepTwoViewController.swift
//  Alumni
//
//  Created by alumnos on 1/2/18.
//  Copyright © 2018 adrian. All rights reserved.
//

import UIKit
import TextFieldEffects
import AwesomeTextFieldSwift

class CreateEventStepTwoViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
        
    
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var groupLbl: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var cancelBtn: UIButton!
    @IBOutlet weak var introduceTitleTxt: UITextField!
    @IBOutlet weak var descriptionTxt: AwesomeTextField!
    @IBOutlet weak var continueBtn: UIButton!
    @IBOutlet weak var backBtn: UIButton!
    @IBOutlet weak var titleTwoLbl: UILabel!
    @IBOutlet weak var titleOneLbl: UILabel!
    
    var indexReceived:Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(indexReceived!)
        
        // Do any additional setup after loading the view.
    }
    
    let groups = ["Todos","APPS2TA","APPS2MA","VJ1MA","VJ1TA"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return groups[row]
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return groups.count
    }
//    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
//        groupLbl.text = groups[row]
//    }
    
    override func viewWillAppear(_ animated: Bool) {
        backBtn.layer.cornerRadius = 10
        backBtn.layer.masksToBounds = true
        
        continueBtn.layer.cornerRadius = 10
        continueBtn.layer.masksToBounds = true
    }
    
    @IBAction func cancelCreateEvent(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "TabBarViewController") as! TabBarViewController
        self.present(vc, animated: true, completion: nil)
    }
    
    @IBAction func enterAction(_ sender: Any) {
        if introduceTitleTxt.text == "" && descriptionTxt.text ==
            "" {
            showSimpleAlert(title: "Atención", message: "Los campos están vacíos")
            
        }
        if introduceTitleTxt.text == "" || descriptionTxt.text ==
            "" {
            if introduceTitleTxt.text == "" {
                showSimpleAlert(title: "Atención", message: "El título del anuncio está vacío")
            }
            if descriptionTxt.text == "" {
                showSimpleAlert(title: "Atención", message: "La descripción del anuncio está vacía")
            }
        }
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "CreateEventStepThreeViewController") as! CreateEventStepThreeViewController
        
        vc.dataReceived = introduceTitleTxt.text
        vc.descriptionReceived = descriptionTxt.text
        vc.indexReceived = indexReceived
        //vc.pickerReceived =
        
        self.present(vc, animated: true, completion: nil)
    }
    
    @IBAction func dismissVC(_ sender: Any) {
        dismiss(animated: true, completion: nil)
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

    
    // MARK:- Alerts tools
    func showSimpleAlert(title: String, message: String){
        let ac = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: {(action:UIAlertAction!) in
            print("Has presionado OK")
        })
        ac.addAction(okAction)
        self.present(ac, animated: true, completion: nil)
    }
    
}
