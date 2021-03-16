//
//  ViewController.swift
//  CocoaPodDemo
//
//  Created by cedcoss on 15/03/21.
//

import UIKit

class ViewController: UIViewController {
    
    let colors : [UIColor] = [.red, .green, .orange , .black, .cyan, .darkGray, .blue , .gray]
    var colorCounter = 1
    override func viewDidLoad() {
        super.viewDidLoad()
        let colorChangeTool = Timer.scheduledTimer(withTimeInterval: 5.0, repeats: true) { _ in
            UIView.animate(withDuration: 5.0) {
                self.view.backgroundColor = self.colors[self.colorCounter % 6]
                self.colorCounter += 1
                
            }
            
        }
        
        colorChangeTool.fire()
        
        // Do any additional setup after loading the view.
    }
    
//    func letsChangeColor()
//    {
//
//        let colorChangeTool = Timer.scheduledTimer(withTimeInterval: 5.0, repeats: true) { _ in
//            UIView.animate(withDuration: 5.0) {
//                self.view.backgroundColor = self.colors[self.colorCounter % 6]
//                self.colorCounter += 1
//
//            }
//
//        }
//
//        colorChangeTool.fire()
//    }
//

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
