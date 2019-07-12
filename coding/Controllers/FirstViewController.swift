//
//  FirstViewController.swift
//  coding
//
//  Created by Carlos M. Cardoza on 7/11/19.
//  Copyright © 2019 infinite. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITextFieldDelegate {
    var user_name = ""
    @IBOutlet weak var label_edad: UILabel!
    @IBOutlet weak var sliderValueStart: UISlider!
    //actualiza el label al inicio
    func actualizar_label() {
        let conversion_int_edad = (Int(sliderValueStart.value))
        label_edad.text = (String(conversion_int_edad))
        
    }
    //actualiza el label mientras se actualiza el slider
    @IBAction func slider_edad(_ sender: UISlider) {
        let user_edad = (Int(sender.value))
       label_edad.text = (String(user_edad))
    }
    
    
    
    
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //cerramos el teclado
        textField.resignFirstResponder()
        self.user_name = textField.text!
        print("tecla enter presionada")
        return true
    }
    
    @IBAction func validar_datos(_ sender: UIButton) {
        let int_edad = (Int(label_edad.text!))!
    
        if user_name == "Mauricio Cardoza" {
            print("Puedes pasar Mc")
        }
        else
        {
            if int_edad >= 18 {
                print("puedes pasar eres mayor de edad")
            }
            
            else {
                print("no cumples los requisitos para entrar")
            }
        }
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        //actualiza el label al inicio
   actualizar_label()
        // Do any additional setup after loading the view.
        
    }


}

