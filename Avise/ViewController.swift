//
//  ViewController.swift
//  Avise
//
//  Created by Jamilson Batista Antunes on 23/03/18.
//  Copyright © 2018 Jamilson Batista Antunes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mensagemRotulo: UILabel!
    @IBOutlet weak var nomeComida: UITextField!
    @IBOutlet weak var localComida: UITextField!
    @IBOutlet weak var quemTrouxe: UITextField!
    @IBOutlet weak var deOndeVeio: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func avisar(_ sender: Any) {
        let mensagemAux = MensagemAux(nomeDaComida: nomeComida.text!, localDaComida: localComida.text!, quemTrouxe: quemTrouxe.text!, deOndeVeio: deOndeVeio.text!)
        
        if validarCampo(campo: nomeComida),
            validarCampo(campo: localComida),
            validarCampo(campo: quemTrouxe),
            validarCampo(campo: deOndeVeio) {
            
            mensagemRotulo.isHidden = true
            compartilhar(mensagem: mensagemAux.criarMensagem())
            
        } else {
            mensagemRotulo.isHidden = false
            mensagemRotulo.text = "Algum campo não foi preenchido! Verifique e tente novamente!"
        }
        
    }
    
    func validarCampo(campo: UITextField) -> Bool{
        if let valorCampo = campo.text{
            return !valorCampo.isEmpty
        }
        return  false
    }
    
    
    func compartilhar(mensagem: String) {
        
        let objectsToShare = [mensagem]
        let activityVC = UIActivityViewController(activityItems: objectsToShare, applicationActivities: nil)
        activityVC.excludedActivityTypes = [UIActivityType.airDrop, UIActivityType.addToReadingList]
        self.present(activityVC, animated: true, completion: nil)
        
    }
    
    
    
    
    
    
}

