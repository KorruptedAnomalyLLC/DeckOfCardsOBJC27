//
//  CardViewController.swift
//  DeckOfCardsOBJC27
//
//  Created by Austin West on 7/2/19.
//  Copyright © 2019 Austin West. All rights reserved.
//


import UIKit

class AJDWCardViewController: UIViewController {
    
    var card: Card?
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var suitLabel: UILabel!
    @IBOutlet weak var valueLabel: UILabel!
    @IBOutlet weak var cardLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func drawCardButtonTapped(_ sender: Any) {
        AJDWCardController.fetchCard { (card) in
            self.card = card
        }
        updateViews()
    }
    
    func updateViews() {
        //       self.imageView =
        guard let card = card else {return}
        
        print(card.suit)
        DispatchQueue.main.async {
            self.suitLabel.text = card.suit
            self.valueLabel.text = card.value
            self.cardLabel.text = card.code
            guard let url = URL (string: card.image), let data = try? Data(contentsOf: url) else {return}
            self.imageView.image = UIImage(data: data)
        }
    }
    
    
}
