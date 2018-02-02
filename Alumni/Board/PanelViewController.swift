//
//  PanelViewController.swift
//  Alumni
//
//  Created by alumnos on 29/1/18.
//  Copyright © 2018 adrian. All rights reserved.
//

import UIKit
import Alamofire

class PanelViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    let myDict = [
        [
        "title": "SuspensoClases",
        "description": "ClasesSuspendidas",
        "localization": nil,
        "group": "1",
        "link": nil,
        "id": "1",
        "id_user": nil,
        "id_type": "4"
        ],
        [
        "title": "Vacaciones",
        "description": "Vacaciones",
        "localization": "",
        "group": "1",
        "link": " ",
        "id": "2",
        "id_user": nil,
        "id_type": "4"
        ],
        [
        "title": "Noticia1",
        "description": "Vacs",
        "localization": "",
        "group": "1",
        "link": " ",
        "id": "3",
        "id_user": nil,
        "id_type": "4"
        ]
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
    
}

        // Do any additional setup after loading the view.


    
    

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        return myDict.count
    
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell") as! CustomTableViewCell
        
        cell.eventLbl.text = myDict[indexPath.row]["title"] as? String
        cell.informationEventLbl.text = myDict[indexPath.row]["description"] as? String

        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 147
    }
    @IBAction func createEvent(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "NewEventViewController") as! NewEventViewController
        self.present(vc, animated: true, completion: nil)
    }
    
}

