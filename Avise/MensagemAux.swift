//
//  MensagemAux.swift
//  Avise
//
//  Created by Jamilson Batista Antunes on 23/03/18.
//  Copyright © 2018 Jamilson Batista Antunes. All rights reserved.
//

import Foundation

class MensagemAux {
    
    var mensagemDeAviso : String?
    var nomeDaComida : String?
    var localDaComida : String?
    var quemTrouxe : String?
    var deOndeVeio : String?
    
    init(nomeDaComida: String, localDaComida: String, quemTrouxe: String, deOndeVeio: String) {
        self.nomeDaComida = nomeDaComida
        self.localDaComida = localDaComida
        self.quemTrouxe = quemTrouxe
        self.deOndeVeio = deOndeVeio
    }
    
    func criarMensagem() -> String{
        return
        """
        Tem \(nomeDaComida)
        Está \(localDaComida)
        Que \(quemTrouxe)
        Trouxe \(deOndeVeio)
        """
    }
}

