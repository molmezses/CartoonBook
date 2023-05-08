//
//  ViewController.swift
//  CartoonBook
//
//  Created by mustafa ölmezses on 8.05.2023.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource{
    

    @IBOutlet weak var tableView: UITableView!
    
    var myCartoonCharacters = [Cartoon]()
    var chosenCartoon  :  Cartoon?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        
        let finn = Cartoon(characterName: "Finn", characterType: "Human", characterImage: UIImage(named: "finn")!)
        let jake = Cartoon(characterName: "Jake", characterType: "Dog", characterImage: UIImage(named: "jake")!)
        let sugarqueen = Cartoon(characterName: "Sugar Queen", characterType: "Queen", characterImage: UIImage(named: "sugarqueen")!)
        let iceking = Cartoon(characterName: "Ice King", characterType: "King", characterImage: UIImage(named: "iceking")!)
        
        myCartoonCharacters.append(finn)
        myCartoonCharacters.append(jake)
        myCartoonCharacters.append(sugarqueen)
        myCartoonCharacters.append(iceking)
        
        
        
        
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myCartoonCharacters.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = myCartoonCharacters[indexPath.row].characterName
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        chosenCartoon = myCartoonCharacters[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    //segueye hazırlan
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC"{
            let DestinationVC = segue.destination as! DetailsVC
            DestinationVC.selectedCartoonCharacter = chosenCartoon
        }
    }
    
    


}

