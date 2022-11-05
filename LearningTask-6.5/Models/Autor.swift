//
//  Autor.swift
//  LearningTask-6.5
//
//  Created by Laura Pinheiro Marson on 05/11/22.
//

import Foundation

struct Autor {
    let foto: String
    let nome: String
    let sobrenome: String
    let bio: String
    let tecnologias: [String]
    
    var nomeCompleto: String {
        nome + " " + sobrenome
    }
    
    init(foto: String, nome: String, sobrenome: String, bio: String, tecnologias: String...) {
        self.foto = foto
        self.nome = nome
        self.sobrenome = sobrenome
        self.bio = bio
        self.tecnologias = tecnologias.map({$0})
    }
}
