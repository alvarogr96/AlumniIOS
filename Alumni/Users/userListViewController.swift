//
//  userListViewController.swift
//  Alumni
//
//  Created by alumnos on 1/2/18.
//  Copyright © 2018 adrian. All rights reserved.
//

import UIKit

class userListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    let myDict = [
        [
            "Nombre": "Julio",
            "Grupo": "Profesores",
            "imagen": nil,
            "group": "1",
            "link": nil,
            "id": "1",
            "id_user": nil,
            "id_type": "4"
        ],
        [
            "Nombre": "Benjamin",
            "Grupo": "Apps2M",
            "imagen": "",
            "group": "1",
            "link": " ",
            "id": "2",
            "id_user": nil,
            "id_type": "4"
        ],
        [
            "Nombre": "Alvaro",
            "Grupo": "Apps2M",
            "imagen": "",
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
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell") as! CustomUserListTableViewCell
        
        cell.nameUserLbl.text = myDict[indexPath.row]["Nombre"] as? String
        cell.classUserLbl.text = myDict[indexPath.row]["Grupo"] as? String
        
        
        return cell
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
