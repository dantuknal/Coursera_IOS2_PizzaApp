//
//  Fin_ViewController.swift
//  Tarea_Semana2_CreaTuPizza
//
//  Created by Diseño01 on 04/05/16.
//  Copyright © 2016 DanTuknal. All rights reserved.
//

import UIKit

class Fin_ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        asignarBG("pizza_fin.jpg")
        navigationItem.hidesBackButton = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    func asignarBG (bg:String){
    let backgroundImage = UIImageView(frame: UIScreen.mainScreen().bounds)
    backgroundImage.image = UIImage(named: "\(bg)")
    self.view.insertSubview(backgroundImage, atIndex: 0)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
