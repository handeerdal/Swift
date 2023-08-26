//
//  ViewController.swift
//  Magic-8-Ball
//
//  Created by Hande Erdal on 3.08.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tarotCard: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func shuffleButtonPressed(_ sender: Any) {
        
        let cardsArr = [
            UIImage(imageLiteralResourceName: "rw02cups.png"),
            UIImage(imageLiteralResourceName: "rw02pentacles.png"),
            UIImage(imageLiteralResourceName: "rw02swords.png"),
            UIImage(imageLiteralResourceName: "rw02wands.png"),
            UIImage(imageLiteralResourceName: "rw03cups.png"),
            UIImage(imageLiteralResourceName: "rw03pentacles.png"),
            UIImage(imageLiteralResourceName: "rw03swords.png"),
            UIImage(imageLiteralResourceName: "rw03wands.png"),
            UIImage(imageLiteralResourceName: "rw04cups.png"),
            UIImage(imageLiteralResourceName: "rw04pentacles.png"),
            UIImage(imageLiteralResourceName: "rw04swords.png"),
            UIImage(imageLiteralResourceName: "rw04wands.png"),
            UIImage(imageLiteralResourceName: "rw05cups.png"),
            UIImage(imageLiteralResourceName: "rw05pentacles.png"),
            UIImage(imageLiteralResourceName: "rw05swords.png"),
            UIImage(imageLiteralResourceName: "rw05wands.png"),
            UIImage(imageLiteralResourceName: "rw06cups.png"),
            UIImage(imageLiteralResourceName: "rw06pentacles.png"),
            UIImage(imageLiteralResourceName: "rw06swords.png"),
            UIImage(imageLiteralResourceName: "rw06wands.png"),
            UIImage(imageLiteralResourceName: "rw07cups.png"),
            UIImage(imageLiteralResourceName: "rw07pentacles.png"),
            UIImage(imageLiteralResourceName: "rw07swords.png"),
            UIImage(imageLiteralResourceName: "rw07wands.png"),
            UIImage(imageLiteralResourceName: "rw08cups.png"),
            UIImage(imageLiteralResourceName: "rw08pentacles.png"),
            UIImage(imageLiteralResourceName: "rw08swords.png"),
            UIImage(imageLiteralResourceName: "rw08wands.png"),
            UIImage(imageLiteralResourceName: "rw09cups.png"),
            UIImage(imageLiteralResourceName: "rw09pentacles.png"),
            UIImage(imageLiteralResourceName: "rw09swords.png"),
            UIImage(imageLiteralResourceName: "rw09wands.png"),
            UIImage(imageLiteralResourceName: "rw10cups.png"),
            UIImage(imageLiteralResourceName: "rw10pentacles.png"),
            UIImage(imageLiteralResourceName: "rw10swords.png"),
            UIImage(imageLiteralResourceName: "rw10wands.png"),
            UIImage(imageLiteralResourceName: "rwacecups.png"),
            UIImage(imageLiteralResourceName: "rwacepentacles.png"),
            UIImage(imageLiteralResourceName: "rwaceswords.png"),
            UIImage(imageLiteralResourceName: "rwchariot.png"),
            UIImage(imageLiteralResourceName: "rwdeath.png"),
            UIImage(imageLiteralResourceName: "rwdevil.png"),
            UIImage(imageLiteralResourceName: "rwemperor.png"),
            UIImage(imageLiteralResourceName: "rwempress.png"),
            UIImage(imageLiteralResourceName: "rwfool.png"),
            UIImage(imageLiteralResourceName: "rwhangedman.png"),
            UIImage(imageLiteralResourceName: "rwhermit.png"),
            UIImage(imageLiteralResourceName: "rwhierophant.png"),
            UIImage(imageLiteralResourceName: "rwhighpriestess.png"),
            UIImage(imageLiteralResourceName: "rwjudgement.png"),
            UIImage(imageLiteralResourceName: "rwjustice.png"),
            UIImage(imageLiteralResourceName: "rwkingcups.png"),
            UIImage(imageLiteralResourceName: "rwkingpentacles.png"),
            UIImage(imageLiteralResourceName: "rwkingswords.png"),
            UIImage(imageLiteralResourceName: "rwkingwands.png"),
            UIImage(imageLiteralResourceName: "rwknightcups.png"),
            UIImage(imageLiteralResourceName: "rwknightpentacles.png"),
            UIImage(imageLiteralResourceName: "rwknightswords.png"),
            UIImage(imageLiteralResourceName: "rwknightwands.png"),
            UIImage(imageLiteralResourceName: "rwlovers.png"),
            UIImage(imageLiteralResourceName: "rwmagician.png"),
            UIImage(imageLiteralResourceName: "rwmoon.png"),
            UIImage(imageLiteralResourceName: "rwpagecups.png"),
            UIImage(imageLiteralResourceName: "rwpagepentacles.png"),
            UIImage(imageLiteralResourceName: "rwpageswords.png"),
            UIImage(imageLiteralResourceName: "rwpagewands.png"),
            UIImage(imageLiteralResourceName: "rwqueencups.png"),
            UIImage(imageLiteralResourceName: "rwqueenpentacles.png"),
            UIImage(imageLiteralResourceName: "rwqueenswords.png"),
            UIImage(imageLiteralResourceName: "rwqueenwands.png"),
            UIImage(imageLiteralResourceName: "rwstar.png"),
            UIImage(imageLiteralResourceName: "rwstrength.png"),
            UIImage(imageLiteralResourceName: "rwsun.png"),
            UIImage(imageLiteralResourceName: "rwtemperance.png"),
            UIImage(imageLiteralResourceName: "rwtower.png"),
            UIImage(imageLiteralResourceName: "rwwheelfortune.png"),
            UIImage(imageLiteralResourceName: "rwworld.png")
        ]

        tarotCard.image = cardsArr.randomElement()
    }
    
}

