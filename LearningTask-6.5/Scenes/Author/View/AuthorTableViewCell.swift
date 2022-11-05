//
//  AuthorTableViewCell.swift
//  LearningTask-6.5
//
//  Created by Laura Pinheiro Marson on 05/11/22.
//

import UIKit

class AuthorTableViewCell: UITableViewCell {

    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var technologiesLabel: UILabel!
    
    func setup(with author: Autor?) {
        guard let author = author else { return }
        authorLabel.text = author.nomeCompleto
        technologiesLabel.text = author.tecnologias.joined(separator: ", ")
    }
    
}
