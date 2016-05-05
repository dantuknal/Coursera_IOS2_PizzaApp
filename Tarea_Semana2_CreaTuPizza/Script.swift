//
//  Script.swift
//  Tarea_Semana2_CreaTuPizza
//
//  Created by Diseño01 on 29/04/16.
//  Copyright © 2016 DanTuknal. All rights reserved.
//

import Foundation
import UIKit

let colores = [
    UIColor(red: 226/255, green: 101/255, blue: 47/255, alpha: 1),
    UIColor(white: 1.0, alpha:1),
    UIColor(white: 0, alpha:0),
    UIColor(red: 0/255, green: 177/255, blue: 17/255, alpha: 1)
]

func selectItem (obj:UILabel,item:String){
    obj.text = item
}




func darFormatoBoton (obj:UIButton,bgCol:UIColor,bor:CGFloat,borCol1:UIColor, titCol:UIColor){
    /*if BGCol == redColor() {
        obj.backgroundColor = UIColor.clearColor()
    } else {
        obj.backgroundColor = bgCol
    }*/
    obj.backgroundColor = bgCol
    obj.layer.borderWidth = bor
    obj.layer.borderColor = borCol1.CGColor
    obj.setTitleColor(titCol, forState: UIControlState.Normal)
}

func hideL(obj:UILabel) {
    obj.hidden = true
}

func showL(obj:UILabel){
    obj.hidden = false
}

func hideB(obj:UIButton) {
    obj.hidden = true
}

func showB(obj:UIButton){
    obj.hidden = false
}
