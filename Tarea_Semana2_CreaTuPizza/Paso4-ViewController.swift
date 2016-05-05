//
//  Paso4-ViewController.swift
//  Tarea_Semana2_CreaTuPizza
//
//  Created by Diseño01 on 27/04/16.
//  Copyright © 2016 DanTuknal. All rights reserved.
//

import UIKit

class Paso4_ViewController: UIViewController {

    var param1:String = ""
    var param2:String = ""
    var param3:String = ""
    var ingredientes:[String] = []
    
    let ingredientesList : [String] = ["Jamon", "Pepperoni", "Pavo", "Tocino", "Aceituna", "Cebolla", "Pimiento", "Piña", "Anchoa", "Alcachofa"]
    
    @IBOutlet weak var ingSelect: UILabel!
    
    @IBOutlet weak var b1: UIButton!
    @IBOutlet weak var b2: UIButton!
    @IBOutlet weak var b3: UIButton!
    @IBOutlet weak var b4: UIButton!
    @IBOutlet weak var b5: UIButton!
    @IBOutlet weak var b6: UIButton!
    @IBOutlet weak var b7: UIButton!
    @IBOutlet weak var b8: UIButton!
    @IBOutlet weak var b9: UIButton!
    @IBOutlet weak var b10: UIButton!
    
    @IBOutlet weak var botonSiguiente: UIButton!
    
    @IBOutlet weak var botonConfirmar: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        asignarBG("bg_madera.jpg")
        hideB(botonConfirmar)
        
        darFormatoBoton (botonSiguiente,bgCol:colores[0],bor: 0,borCol1: colores[0],titCol: colores[1])
        
        darFormatoBoton (b1,bgCol:colores[2],bor: 2.0,borCol1: colores[1],titCol: colores[0])
        darFormatoBoton (b2,bgCol:colores[2],bor: 2.0,borCol1: colores[1],titCol: colores[0])
        darFormatoBoton (b3,bgCol:colores[2],bor: 2.0,borCol1: colores[1],titCol: colores[0])
        darFormatoBoton (b4,bgCol:colores[2],bor: 2.0,borCol1: colores[1],titCol: colores[0])
        darFormatoBoton (b5,bgCol:colores[2],bor: 2.0,borCol1: colores[1],titCol: colores[0])
        darFormatoBoton (b6,bgCol:colores[2],bor: 2.0,borCol1: colores[1],titCol: colores[0])
        darFormatoBoton (b7,bgCol:colores[2],bor: 2.0,borCol1: colores[1],titCol: colores[0])
        darFormatoBoton (b8,bgCol:colores[2],bor: 2.0,borCol1: colores[1],titCol: colores[0])
        darFormatoBoton (b9,bgCol:colores[2],bor: 2.0,borCol1: colores[1],titCol: colores[0])
        darFormatoBoton (b10,bgCol:colores[2],bor: 2.0,borCol1: colores[1],titCol: colores[0])
        
        if ingredientes.count > 0 {
            ingSelect.text = String(ingredientes)
            for var i = 0; i < ingredientes.count; i++ {
                switch ingredientes[i] {
                case ingredientesList[0]:
                    darFormatoBoton (b1,bgCol:colores[0],bor: 0,borCol1: colores[0],titCol: colores[1])
                case ingredientesList[1]:
                    darFormatoBoton (b2,bgCol:colores[0],bor: 0,borCol1: colores[0],titCol: colores[1])
                case ingredientesList[2]:
                    darFormatoBoton (b3,bgCol:colores[0],bor: 0,borCol1: colores[0],titCol: colores[1])
                case ingredientesList[3]:
                    darFormatoBoton (b4,bgCol:colores[0],bor: 0,borCol1: colores[0],titCol: colores[1])
                case ingredientesList[4]:
                    darFormatoBoton (b5,bgCol:colores[0],bor: 0,borCol1: colores[0],titCol: colores[1])
                case ingredientesList[5]:
                    darFormatoBoton (b6,bgCol:colores[0],bor: 0,borCol1: colores[0],titCol: colores[1])
                case ingredientesList[6]:
                    darFormatoBoton (b7,bgCol:colores[0],bor: 0,borCol1: colores[0],titCol: colores[1])
                case ingredientesList[7]:
                    darFormatoBoton (b8,bgCol:colores[0],bor: 0,borCol1: colores[0],titCol: colores[1])
                case ingredientesList[8]:
                    darFormatoBoton (b9,bgCol:colores[0],bor: 0,borCol1: colores[0],titCol: colores[1])
                case ingredientesList[9]:
                    darFormatoBoton (b10,bgCol:colores[0],bor: 0,borCol1: colores[0],titCol: colores[1])
                default:
                    darFormatoBoton (b1,bgCol:colores[0],bor: 0,borCol1: colores[0],titCol: colores[1])
                }
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
        
        if ingredientes.count == 0 {
            let alert: UIAlertController = UIAlertController(title: "Alerta!", message: "Debes seleccionar al menos una opcion", preferredStyle: UIAlertControllerStyle.Alert)
            let ok = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil)
            alert.addAction(ok)
            presentViewController(alert, animated: true, completion: nil)
            
        }
            
        else {
            let sigVista = segue.destinationViewController as! Confirmacion_ViewController
            
            sigVista.param1 = param1
            sigVista.param2 = param2
            sigVista.param3 = param3
            sigVista.ingredientes = ingredientes
        }
        
    }
    
    
    
    @IBAction func selectJamon(sender: AnyObject) {
       SelectDeselectBot(b1,label: ingredientesList[0])
        
    }
    
    @IBAction func selectPepperoni(sender: AnyObject) {
       SelectDeselectBot(b2,label: ingredientesList[1])
        
    }
    
    @IBAction func selectPAvo(sender: AnyObject) {
        SelectDeselectBot(b3,label: ingredientesList[2])
    }
    
    @IBAction func selectTocino(sender: AnyObject) {
        SelectDeselectBot(b4,label: ingredientesList[3])
        
    }
    
    @IBAction func selectAceituna(sender: AnyObject) {
        SelectDeselectBot(b5,label: ingredientesList[4])
        
    }
    
    @IBAction func selectCebolla(sender: AnyObject) {
        SelectDeselectBot(b6,label: ingredientesList[5])
        
    }
    
    @IBAction func selectPimiento(sender: AnyObject) {
        SelectDeselectBot(b7,label: ingredientesList[6])
        
    }
    
    @IBAction func selectPina(sender: AnyObject) {
        SelectDeselectBot(b8,label: ingredientesList[7])
        
    }
    
    @IBAction func selectAnchoa(sender: AnyObject) {
        SelectDeselectBot(b9,label: ingredientesList[8])
        
    }
    
    @IBAction func selectAlcachofa(sender: AnyObject) {
        SelectDeselectBot(b10,label: ingredientesList[9])
    }
    
    func asignarBG (bg:String){
        let backgroundImage = UIImageView(frame: UIScreen.mainScreen().bounds)
        backgroundImage.image = UIImage(named: "\(bg)")
        self.view.insertSubview(backgroundImage, atIndex: 0)
    }
    
    func SelectDeselectBot(obj:UIButton,label:String){
        
        if obj.backgroundColor == colores[2] {
            
            if ingredientes.count <= 4 {
            
                darFormatoBoton (obj,bgCol:colores[0],bor: 0,borCol1: colores[0],titCol: colores[1])
                
                selectItem (label)
                
            } else {
                
                let alert: UIAlertController = UIAlertController(title: "Tope máximo!", message: "Solo puedes seleccionar 5 ingredientes. Para agregar este último procura eliminar uno de los items seleccionados.", preferredStyle: UIAlertControllerStyle.Alert)
                let ok = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil)
                alert.addAction(ok)
                presentViewController(alert, animated: true, completion: nil)
            
            }
            
        } else {
            
            darFormatoBoton (obj,bgCol:colores[2],bor: 2.0,borCol1: colores[1],titCol: colores[0])
            
            for var i = 0; i < ingredientes.count; i++ {
                if ingredientes[i] == label{
                    ingredientes.removeAtIndex(i)
                }
            }
            ingSelect.text = String(ingredientes)
            
        }
        
        
    }
    
    func selectItem (item:String){
            ingredientes += ["\(item)"]
            ingSelect.text = String(ingredientes)
        
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
