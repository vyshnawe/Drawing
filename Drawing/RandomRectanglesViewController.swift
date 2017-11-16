//
//  RandomRectanglesViewController.swift
//  Drawing
//
//  Created by Kalvakota,Vaishnavi on 11/14/17.
//  Copyright © 2017 Kalvakota,Vaishnavi. All rights reserved.
//

import UIKit

var enterNumber = 0
class RandomRectanglesViewController: UIViewController {

    @IBOutlet weak var enterRectNo: UITextField!
    @IBOutlet weak var MondrainView: Mondrain!
    
    @IBAction func Done(_ sender: Any) {
        if Int(enterRectNo.text!) == nil {
            let alert = UIAlertController(title: "Enter a number",
                                          message: "Please enter a valid number",
                                          preferredStyle: .alert)
            let cancel = UIAlertAction(title: "Cancel", style: .destructive, handler: { (action) -> Void in })
            alert.addAction(cancel)
            if Int(enterRectNo.text!) == nil{
                present(alert, animated: true, completion: nil)
            }
        }
        else{
            enterNumber = Int(enterRectNo.text!)!
            MondrainView.setNeedsDisplay()
        }
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
