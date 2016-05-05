//
//  ViewController.swift
//  Tarea_Semana2_CreaTuPizza
//
//  Created by Diseño01 on 25/04/16.
//  Copyright © 2016 DanTuknal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        asignarBG("bg_pizza.jpg")
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

}

