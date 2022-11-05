//
//  ViewController.swift
//  LearningTask-6.5
//
//  Created by rafael.rollo on 12/04/2022.
//

import UIKit

class AuthorsViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var authors: [Autor]?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        applyTheme()
        
        tableView.dataSource = self
        tableView.delegate = self
    }

}

extension AuthorsViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return authors?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "AutorViewCell", for: indexPath) as? AuthorTableViewCell else { fatalError("Não foi possível carregar células")
        }
        
        let author = authors?[indexPath.row]
        
        cell.setup(with: author)
        return cell
    }
    
}

extension AuthorsViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

