//
//  DetailedViewController.swift
//  ThirdAssessment - Mei
//
//  Created by Ying Mei Lum on 02/02/2018.
//  Copyright © 2018 Ying Mei Lum. All rights reserved.
//

import UIKit
import CoreData

/*DATABASE
 CRUD
 Create
 Read   //filter //sort
 Update
 Delete
 */

class DetailedViewController: UIViewController {
//    var selectedProperty : Property = Property()

    var selectedProperty : Property = Property()
    var addMode = true

    @IBOutlet weak var titleBar: UINavigationItem!
    
    @IBOutlet weak var nameTxtView: UITextField!
    
    @IBOutlet weak var priceTxtView: UITextField!
    
    @IBOutlet weak var locationTxtView: UITextField!
    
    
    @IBAction func doneBtn(_ sender: Any) {
        //get input
        //validation
        //create
        
        if let name = nameTxtView.text,
            let priceString = priceTxtView.text,
            let location = locationTxtView.text,
            name != "",
            priceString != "",
            location != "",
            let price = Int16(priceString) {
        
        if addMode {
            createProperty(name: name, price: price, location:location)
        } else {
            updateProperty(name: name, price: price, location:location)
        }
        navigationController?.popViewController(animated: true)
        
    }
    
}
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTxtView.text = selectedProperty.name
        priceTxtView.text = selectedProperty.price
        locationTxtView.text = selectedProperty.location
        
    }
    
    func createProperty(name: String, price : Int16, location: String) {
        let newProperty = Properties(entity: Properties.entity(), insertInto: DataController.moc)
        newProperty.name = name
        newProperty.price = price
        newProperty.location = location
        DataController.saveContext()
        
        navigationController?.popViewController(animated: true)
        
    }
    
    func updateProperty(name: String, price : Int16, location: String) {
//        guard let property = selectedProperty
//            else {return}
//        property.name = name
//        property.price = price
//        property.location = location
//        DataController.saveContext()
//
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
