//
//  addTaskViewController.swift
//  dataApp
//
//  Created by Yagnik on 03/02/17.
//  Copyright © 2017 Yagnik. All rights reserved.
//

import UIKit

class addTaskViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var isImpS: UISwitch!
    
     override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    @IBAction func btnAdd(_ sender: Any) {
        
        let constext = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let task = Task(context: constext)

        task.name = textField.text
        task.isImportant = isImpS.isOn

        // save the data to coredata
//        do {
//            try constext.save()
//        }
//        catch let error {
//            print(error)
//        }
        
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        navigationController?.popViewController(animated: true)
    
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
