//
//  ViewController.swift
//  Polluelator
//
//  Created by Jorge Ariza on 14/12/16.
//  Copyright © 2016 Sergio López. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //multiarray que engloba 2 columnas por fila, nombre e imagen, de personas sin asignar a un equipo
    var personas: [[String]] = [["Pepe","pepe"],
                                ["Juan","juan"],
                                ["Yorch","yorch"],
                                ["Vicente","vicente"],
                                ["Elisa","elisa"],
                                ["Carlota","carlota"],
                                ["Pedro","pedro"],
                                ["Daniel","daniel"],
                                ["Andrea","andrea"],
                                ["Jhonny","jhonny"],
                                ["Paquita","paquita"],
                                ["Carlos","carlos"]]
    
    //multiarrays que engloba 2 columnas por fila y queremos rellenar con personas asignadas al equipo
    var equipo1: [[String]] = []
    var equipo2: [[String]] = []
    var equipo3: [[String]] = []
    
    
    @IBOutlet weak var eq1pos1: UIImageView!
    @IBOutlet weak var eq1pos2: UIImageView!
    @IBOutlet weak var eq1pos3: UIImageView!
    @IBOutlet weak var eq1pos4: UIImageView!
    
    @IBOutlet weak var eq2pos1: UIImageView!
    @IBOutlet weak var eq2pos2: UIImageView!
    @IBOutlet weak var eq2pos3: UIImageView!
    @IBOutlet weak var eq2pos4: UIImageView!
    
    @IBOutlet weak var eq3pos1: UIImageView!
    @IBOutlet weak var eq3pos2: UIImageView!
    @IBOutlet weak var eq3pos3: UIImageView!
    @IBOutlet weak var eq3pos4: UIImageView!
    
    @IBOutlet weak var elegido: UIImageView!
    
    @IBOutlet weak var elegidoLbl: UILabel!
    
    @IBOutlet weak var eq1pos1Lbl: UILabel!
    @IBOutlet weak var eq1pos2Lbl: UILabel!
    @IBOutlet weak var eq1pos3Lbl: UILabel!
    @IBOutlet weak var eq1pos4Lbl: UILabel!
    
    @IBOutlet weak var eq2pos1Lbl: UILabel!
    @IBOutlet weak var eq2pos2Lbl: UILabel!
    @IBOutlet weak var eq2pos3Lbl: UILabel!
    @IBOutlet weak var eq2pos4Lbl: UILabel!
    
    @IBOutlet weak var eq3pos1Lbl: UILabel!
    @IBOutlet weak var eq3pos2Lbl: UILabel!
    @IBOutlet weak var eq3pos3Lbl: UILabel!
    @IBOutlet weak var eq3pos4Lbl: UILabel!
    
    
    
    //funcion sorteo que elige una persona aleatoria y la borra del array personas
    func sorteo() -> Array<String> {
        //variable que genera un index aleatorio de entre el conteo de las personas sin asignar
        let randomIndex = arc4random_uniform(UInt32(personas.count))
        //variable que devuelve la persona que se encuentra en el index seleccionado en el paso anterior
        let randomPersona = personas[randomIndex.hashValue]
        //quita la persona del array para que no se repita
        personas.remove(at: randomIndex.hashValue)
        print("La persona seleccionada ha sido \(randomPersona)")
        return randomPersona
    }
    
    
    
    
    //funcion que recibe una persona random y la añade a un equipo
    func addEquipo(randomPersona:[String]) {
        //comprobamos que los equipos no estan llenos
        print(equipo1.count)
        if(equipo1.count <= 3){
            equipo1.append(randomPersona)
            print("Añadido al equipo1")
            print("------------------")
            addImgPos(randomPersona:randomPersona, equipo: 1)
            
        }
        else if(equipo2.count <= 3){
           equipo2.append(randomPersona)
            print("Añadido al equipo2")
            print("------------------")
            addImgPos(randomPersona:randomPersona, equipo: 2)
        }
        else if(equipo3.count <= 3){
           equipo3.append(randomPersona)
            print("Añadido al equipo3")
            print("------------------")
            addImgPos(randomPersona:randomPersona, equipo: 3)
        }
    }

    //funcion que añade imagenes y nombres por posiciones del array en los esquipos
    func addImgPos(randomPersona:[String], equipo:Int){
        
        if(equipo == 1){
        
        if(equipo1.count == 1){
            eq1pos1.image = UIImage(named: randomPersona[1])
            elegido.image = UIImage(named: randomPersona[1])
            eq1pos1Lbl.text = randomPersona[0]
            elegidoLbl.text = randomPersona[0]
        
            
        }
        else if(equipo1.count == 2){
            eq1pos2.image = UIImage(named: randomPersona[1])
            elegido.image = UIImage(named: randomPersona[1])
            eq1pos2Lbl.text = randomPersona[0]
            elegidoLbl.text = randomPersona[0]
         
        }
        else if(equipo1.count == 3){
            eq1pos3.image = UIImage(named: randomPersona[1])
            elegido.image = UIImage(named: randomPersona[1])
            eq1pos3Lbl.text = randomPersona[0]
            elegidoLbl.text = randomPersona[0]
           
        }
        else if(equipo1.count == 4){
            eq1pos4.image = UIImage(named: randomPersona[1])
            elegido.image = UIImage(named: randomPersona[1])
            eq1pos4Lbl.text = randomPersona[0]
            elegidoLbl.text = randomPersona[0]
        }
        }
        
        else if(equipo == 2){
            
            if(equipo2.count == 1){
                eq2pos1.image = UIImage(named: randomPersona[1])
                elegido.image = UIImage(named: randomPersona[1])
                eq2pos1Lbl.text = randomPersona[0]
                elegidoLbl.text = randomPersona[0]
                
            }
            else if(equipo2.count == 2){
                eq2pos2.image = UIImage(named: randomPersona[1])
                elegido.image = UIImage(named: randomPersona[1])
                eq2pos2Lbl.text = randomPersona[0]
                elegidoLbl.text = randomPersona[0]
            }
            else if(equipo2.count == 3){
                eq2pos3.image = UIImage(named: randomPersona[1])
                elegido.image = UIImage(named: randomPersona[1])
                eq2pos3Lbl.text = randomPersona[0]
                elegidoLbl.text = randomPersona[0]
            }
            else if(equipo2.count == 4){
                eq2pos4.image = UIImage(named: randomPersona[1])
                elegido.image = UIImage(named: randomPersona[1])
                eq2pos4Lbl.text = randomPersona[0]
                elegidoLbl.text = randomPersona[0]
            }
        }
        
        else if(equipo == 3){
            
            if(equipo3.count == 1){
                eq3pos1.image = UIImage(named: randomPersona[1])
                elegido.image = UIImage(named: randomPersona[1])
                eq3pos1Lbl.text = randomPersona[0]
                elegidoLbl.text = randomPersona[0]
                
            }
            else if(equipo3.count == 2){
                eq3pos2.image = UIImage(named: randomPersona[1])
                elegido.image = UIImage(named: randomPersona[1])
                eq3pos2Lbl.text = randomPersona[0]
                elegidoLbl.text = randomPersona[0]
            }
            else if(equipo3.count == 3){
                eq3pos3.image = UIImage(named: randomPersona[1])
                elegido.image = UIImage(named: randomPersona[1])
                eq3pos3Lbl.text = randomPersona[0]
                elegidoLbl.text = randomPersona[0]
            }
            else if(equipo3.count == 4){
                eq3pos4.image = UIImage(named: randomPersona[1])
                elegido.image = UIImage(named: randomPersona[1])
                eq3pos4Lbl.text = randomPersona[0]
                elegidoLbl.text = randomPersona[0]
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        print(personas)
//        
//        for _ in 1...12{
//            let s = sorteo()
//            addEquipo(randomPersona:s)
//        }
        
        
        

        

        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    //cuando se pulsa el boton se ejecuta la func sorteo y agrega una persona aleatoria al primer equipo vacio
    @IBAction func sortearUno() {
        //si personas no esta vacío sortear y agregar a equipo
        if(personas.count != 0){

        let s = sorteo()
        addEquipo(randomPersona: s)
        
        }
        
    }
    //accion del boton ejecuta sorteo y agrega una persona en todos los lugares vacios del equipo
    @IBAction func sorteoTodos() {
        //si personas no esta vacío sortear y agregar a equipo
        if(personas.count != 0){
        for _ in 1...personas.count{
        let s = sorteo()
            addEquipo(randomPersona: s)
            
        }
        }
    }

    //func que resetea todas las variables
    @IBAction func reset() {
         personas = [["Pepe","pepe"],["Juan","juan"],["Yorch","yorch"],["Vicente","vicente"],["Elisa","elisa"],["Carlota","carlota"],["Pedro","pedro"],["Daniel","daniel"],["Andrea","andrea"],["Jhonny","jhonny"],["Paquita","paquita"],["Carlos","carlos"]]

         equipo1 = []
         equipo2 = []
         equipo3 = []
        
        elegido.image = UIImage(named: "avatar")
        elegidoLbl.text = ""
        
        eq1pos1.image = UIImage(named: "avatar")
        eq1pos2.image = UIImage(named: "avatar")
        eq1pos3.image = UIImage(named: "avatar")
        eq1pos4.image = UIImage(named: "avatar")

        eq2pos1.image = UIImage(named: "avatar")
        eq2pos2.image = UIImage(named: "avatar")
        eq2pos3.image = UIImage(named: "avatar")
        eq2pos4.image = UIImage(named: "avatar")
        
        eq3pos1.image = UIImage(named: "avatar")
        eq3pos2.image = UIImage(named: "avatar")
        eq3pos3.image = UIImage(named: "avatar")
        eq3pos4.image = UIImage(named: "avatar")
        
        
        eq1pos1Lbl.text = ""
        eq1pos2Lbl.text = ""
        eq1pos3Lbl.text = ""
        eq1pos4Lbl.text = ""
        
        eq2pos1Lbl.text = ""
        eq2pos2Lbl.text = ""
        eq2pos3Lbl.text = ""
        eq2pos4Lbl.text = ""
        
        eq3pos1Lbl.text = ""
        eq3pos2Lbl.text = ""
        eq3pos3Lbl.text = ""
        eq3pos4Lbl.text = ""
        

    }


    


}

