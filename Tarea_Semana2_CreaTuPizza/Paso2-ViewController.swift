//
//  Paso2-ViewController.swift
//  Tarea_Semana2_CreaTuPizza
//
//  Created by Diseño01 on 27/04/16.
//  Copyright © 2016 DanTuknal. All rights reserved.
//

import UIKit

class Paso2_ViewController: UIViewController {

    var param1:String = ""
    var param2:String = ""
    var param3:String = ""
    var ingredientes:[String] = []
    
    @IBOutlet weak var crustSelect: UILabel!
    
    @IBOutlet weak var b1: UIButton!
    @IBOutlet weak var b2: UIButton!
    @IBOutlet weak var b3: UIButton!
    
    @IBOutlet weak var botonConfirmar: UIButton!
    
    @IBOutlet weak var botonSiguiente: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        asignarBG("bg_madera.jpg")
        hideB(botonConfirmar)
        
        darFormatoBoton (botonSiguiente,bgCol:colores[0],bor: 0,borCol1: colores[0],titCol: colores[1])
        
        if param2 == "" {
        darFormatoBoton (b1,bgCol:colores[2],bor: 2.0,borCol1: colores[1],titCol: colores[0])
        darFormatoBoton (b2,bgCol:colores[2],bor: 2.0,borCol1: colores[1],titCol: colores[0])
        darFormatoBoton (b3,bgCol:colores[2],bor: 2.0,borCol1: colores[1],titCol: colores[0])
        } else {
            crustSelect.text = param2
            switch param2 {
            case "Delgada":
                cambiarFormatoBots(b1,obj2: b2,obj3: b3)
            case "Crujiente":
                cambiarFormatoBots(b2,obj2: b1,obj3: b3)
            case "Gruesa":
                cambiarFormatoBots(b3,obj2: b2,obj3: b1)
            default:
                cambiarFormatoBots(b1,obj2: b2,obj3: b3)
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
        
        if crustSelect.text == "" {
            let alert: UIAlertController = UIAlertController(title: "Alerta!", message: "Debes seleccionar al menos una opcion", preferredStyle: UIAlertControllerStyle.Alert)
            let ok = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil)
            alert.addAction(ok)
            presentViewController(alert, animated: true, completion: nil)
            
        } else {
            
            param2 = crustSelect.text!
            
            if segue.identifier == "segue2" {
                let sigVista = segue.destinationViewController as! Paso3_ViewController
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
    

    @IBAction func selectDelgada(sender: AnyObject) {
        selectItem (crustSelect, item: "Delgada")
        cambiarFormatoBots(b1,obj2: b2,obj3: b3)
    }

    @IBAction func selectCrujiente(sender: AnyObject) {
        selectItem (crustSelect, item: "Crujiente")
        cambiarFormatoBots(b2,obj2: b1,obj3: b3)
    }
    
    @IBAction func selectGruesa(sender: AnyObject) {
        selectItem (crustSelect, item: "Gruesa")
        cambiarFormatoBots(b3,obj2: b2,obj3: b1)
    }
    
    func asignarBG (bg:String){
        let backgroundImage = UIImageView(frame: UIScreen.mainScreen().bounds)
        backgroundImage.image = UIImage(named: "\(bg)")
        self.view.insertSubview(backgroundImage, atIndex: 0)
    }
    
    func cambiarFormatoBots(obj1:UIButton,obj2:UIButton,obj3:UIButton){
        darFormatoBoton (obj1,bgCol:colores[0],bor: 0,borCol1: colores[0],titCol: colores[1])
        darFormatoBoton (obj2,bgCol:colores[2],bor: 2.0,borCol1: colores[1],titCol: colores[0])
        darFormatoBoton (obj3,bgCol:colores[2],bor: 2.0,borCol1: colores[1],titCol: colores[0])
    }

}
