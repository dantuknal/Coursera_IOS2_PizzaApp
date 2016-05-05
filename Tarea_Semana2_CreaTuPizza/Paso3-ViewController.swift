//
//  Paso3-ViewController.swift
//  Tarea_Semana2_CreaTuPizza
//
//  Created by Diseño01 on 27/04/16.
//  Copyright © 2016 DanTuknal. All rights reserved.
//

import UIKit

class Paso3_ViewController: UIViewController {

    var param1:String = ""
    var param2:String = ""
    var param3:String = ""
    var ingredientes:[String] = []
    
    @IBOutlet weak var cheeseSelect: UILabel!
    
    @IBOutlet weak var b1: UIButton!
    @IBOutlet weak var b2: UIButton!
    @IBOutlet weak var b3: UIButton!
    @IBOutlet weak var b4: UIButton!
    
    @IBOutlet weak var botonSiguiente: UIButton!
    
    @IBOutlet weak var botonConfirmar: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        asignarBG("bg_madera.jpg")
        hideB(botonConfirmar)
        
        darFormatoBoton (botonSiguiente,bgCol:colores[0],bor: 0,borCol1: colores[0],titCol: colores[1])
        
        if param3 == "" {
            darFormatoBoton (b1,bgCol:colores[2],bor: 2.0,borCol1: colores[1],titCol: colores[0])
            darFormatoBoton (b2,bgCol:colores[2],bor: 2.0,borCol1: colores[1],titCol: colores[0])
            darFormatoBoton (b3,bgCol:colores[2],bor: 2.0,borCol1: colores[1],titCol: colores[0])
            darFormatoBoton (b4,bgCol:colores[2],bor: 2.0,borCol1: colores[1],titCol: colores[0])
        } else {
            cheeseSelect.text = param3
            switch param3 {
            case "Mozarella":
                cambiarFormatoBots(b1,obj2: b2,obj3: b3,obj4: b4)
            case "Cheddar":
                cambiarFormatoBots(b2,obj2: b1,obj3: b3,obj4: b4)
            case "Parmesano":
                cambiarFormatoBots(b3,obj2: b2,obj3: b1,obj4: b4)
            case "SIN QUESO":
                cambiarFormatoBots(b4,obj2: b3,obj3: b2,obj4: b1)
            default:
                cambiarFormatoBots(b1,obj2: b2,obj3: b3,obj4: b4)
            }
        }
        
        if param1 != "" && param2 != "" && param3 != "" && ingredientes.count > 0 {
            darFormatoBoton (botonConfirmar,bgCol:colores[3],bor: 0,borCol1: colores[0],titCol: colores[1])
            showB(botonConfirmar)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if cheeseSelect.text == "" {
            let alert: UIAlertController = UIAlertController(title: "Alerta!", message: "Debes seleccionar al menos una opcion", preferredStyle: UIAlertControllerStyle.Alert)
            let ok = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil)
            alert.addAction(ok)
            presentViewController(alert, animated: true, completion: nil)
            
        } else {
            
            param3 = cheeseSelect.text!
            
            if segue.identifier == "segue3" {
                let sigVista = segue.destinationViewController as! Paso4_ViewController
                sigVista.param1 = param1
                sigVista.param2 = param2
                sigVista.param3 = param3
                sigVista.ingredientes = ingredientes
            } else {
                let sigVista = segue.destinationViewController as! Confirmacion_ViewController
                sigVista.param1 = param1
                sigVista.param2 = param2
                sigVista.param3 = param3
                sigVista.ingredientes = ingredientes
            }
            
        }
        
    }
    

    @IBAction func selectQ1(sender: AnyObject) {
        selectItem (cheeseSelect,item: "Mozarella")
        cambiarFormatoBots(b1,obj2: b2,obj3: b3,obj4: b4)
        
    }
    
    @IBAction func selectQ2(sender: AnyObject) {
        selectItem (cheeseSelect,item: "Cheddar")
        cambiarFormatoBots(b2,obj2: b1,obj3: b3,obj4: b4)
    }
    
    @IBAction func selectQ3(sender: AnyObject) {
        selectItem (cheeseSelect,item: "Parmesano")
        cambiarFormatoBots(b3,obj2: b2,obj3: b1,obj4: b4)
    }

    @IBAction func selectQ4(sender: AnyObject) {
        selectItem (cheeseSelect,item: "SIN QUESO")
        cambiarFormatoBots(b4,obj2: b2,obj3: b3,obj4: b1)
    }
    
    func asignarBG (bg:String){
        let backgroundImage = UIImageView(frame: UIScreen.mainScreen().bounds)
        backgroundImage.image = UIImage(named: "\(bg)")
        self.view.insertSubview(backgroundImage, atIndex: 0)
    }
    
    func cambiarFormatoBots(obj1:UIButton,obj2:UIButton,obj3:UIButton,obj4:UIButton){
        darFormatoBoton (obj1,bgCol:colores[0],bor: 0,borCol1: colores[0],titCol: colores[1])
        darFormatoBoton (obj2,bgCol:colores[2],bor: 2.0,borCol1: colores[1],titCol: colores[0])
        darFormatoBoton (obj3,bgCol:colores[2],bor: 2.0,borCol1: colores[1],titCol: colores[0])
        darFormatoBoton (obj4,bgCol:colores[2],bor: 2.0,borCol1: colores[1],titCol: colores[0])
    }
    
    

}
