//
//  Confirmacion-ViewController.swift
//  Tarea_Semana2_CreaTuPizza
//
//  Created by Diseño01 on 27/04/16.
//  Copyright © 2016 DanTuknal. All rights reserved.
//

import UIKit

class Confirmacion_ViewController: UIViewController {

    var param1:String = ""
    var param2:String = ""
    var param3:String = ""
    var ingredientes:[String] = []
    
    @IBOutlet weak var botonSiguiente: UIButton!
    
    @IBOutlet weak var b1: UIButton!
    @IBOutlet weak var b2: UIButton!
    @IBOutlet weak var b3: UIButton!
    @IBOutlet weak var b4: UIButton!
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        asignarBG("bg_madera.jpg")
        navigationItem.hidesBackButton = true
        
        darFormatoBoton (botonSiguiente,bgCol:colores[0],bor: 0,borCol1: colores[0],titCol: colores[1])
        darFormatoBoton (b1,bgCol:colores[0],bor: 0,borCol1: colores[0],titCol: colores[1])
        darFormatoBoton (b2,bgCol:colores[0],bor: 0,borCol1: colores[0],titCol: colores[1])
        darFormatoBoton (b3,bgCol:colores[0],bor: 0,borCol1: colores[0],titCol: colores[1])
        darFormatoBoton (b4,bgCol:colores[0],bor: 0,borCol1: colores[0],titCol: colores[1])
        
        popularLabels ()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "seguec1" {
            let sigVista = segue.destinationViewController as! Paso1_ViewController
            sigVista.param1 = param1
            sigVista.param2 = param2
            sigVista.param3 = param3
            sigVista.ingredientes = ingredientes
        } else if segue.identifier == "seguec2" {
            let sigVista = segue.destinationViewController as! Paso2_ViewController
            sigVista.param1 = param1
            sigVista.param2 = param2
            sigVista.param3 = param3
            sigVista.ingredientes = ingredientes
        } else if segue.identifier == "seguec3" {
            let sigVista = segue.destinationViewController as! Paso3_ViewController
            sigVista.param1 = param1
            sigVista.param2 = param2
            sigVista.param3 = param3
            sigVista.ingredientes = ingredientes
        } else if segue.identifier == "seguec4" {
            let sigVista = segue.destinationViewController as! Paso4_ViewController
            sigVista.param1 = param1
            sigVista.param2 = param2
            sigVista.param3 = param3
            sigVista.ingredientes = ingredientes
        }
    }
    
    

    func asignarBG (bg:String){
        let backgroundImage = UIImageView(frame: UIScreen.mainScreen().bounds)
        backgroundImage.image = UIImage(named: "\(bg)")
        self.view.insertSubview(backgroundImage, atIndex: 0)
    }
    
    func popularLabels () {
        label1.text = param1
        label2.text = param2
        label3.text = param3
        let ingList:String = ingredientes.joinWithSeparator("\u{0085}")
        label4.text = ingList
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
