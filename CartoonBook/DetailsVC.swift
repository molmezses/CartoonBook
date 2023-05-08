//
//  DetailsVC.swift
//  CartoonBook
//
//  Created by mustafa ölmezses on 8.05.2023.
//

import UIKit

class DetailsVC: UIViewController {
    
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    
    
    var selectedCartoonCharacter  : Cartoon?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = selectedCartoonCharacter?.characterName
        jobLabel.text = selectedCartoonCharacter?.characterType
        imageView.image = selectedCartoonCharacter?.characterImage

    }
    

    

}
