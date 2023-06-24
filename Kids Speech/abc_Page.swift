//
//  Game_Page.swift
//  Kids Speech
//
//  Created by Choudhary Dipika on 21/06/23.
//

import UIKit
import AVFoundation

class abc_Page: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
   
    @IBOutlet weak var gamePageCv: UICollectionView!
    var abcArray = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
    var sync = AVSpeechSynthesizer()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 26
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = gamePageCv.dequeueReusableCell(withReuseIdentifier: "ABCFileIdentifier", for: indexPath) as! ABCfile
        cell.layer.borderColor = UIColor.black.cgColor
        cell.layer.borderWidth = 3
        cell.layer.cornerRadius = 10
        cell.layer.masksToBounds = true
        cell.abcImage.image = UIImage(named: abcArray[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 160, height: 160)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.row == 0
        {
            voice(voice: "A for Apple")
        }
        else if indexPath.row == 1
        {
            voice(voice: "b for ball")
        }
        else if indexPath.row == 2
        {
            voice(voice: "c for cat")
        }
        else if indexPath.row == 3
        {
            voice(voice: "d for dog")
        }
        else if indexPath.row == 4
        {
            voice(voice: "e for elephant")
        }
        else if indexPath.row == 5
        {
            voice(voice: "f for fish")
        }
        else if indexPath.row == 6
        {
            voice(voice: "g for grapes")
        }
        else if indexPath.row == 7
        {
            voice(voice: "h for hat")
        }
        else if indexPath.row == 8
        {
            voice(voice: "i for icecream")
        }
        else if indexPath.row == 9
        {
            voice(voice: "j for joker")
        }
        else if indexPath.row == 10
        {
            voice(voice: "k for kite")
        }
        else if indexPath.row == 11
        {
            voice(voice: "l for lion")
        }
        else if indexPath.row == 12
        {
            voice(voice: "m for mouse")
        }
        else if indexPath.row == 13
        {
            voice(voice: "n for nest")
        }
        else if indexPath.row == 14
        {
            voice(voice: "o for orange")
        }
        else if indexPath.row == 15
        {
            voice(voice: "p for parrot")
        }
        else if indexPath.row == 16
        {
            voice(voice: "q for queen")
        }
        else if indexPath.row == 17
        {
            voice(voice: "r for rat")
        }
        else if indexPath.row == 18
        {
            voice(voice: "s for sun")
        }
        else if indexPath.row == 19
        {
            voice(voice: "t for tiger")
        }
        else if indexPath.row == 20
        {
            voice(voice: "u for umbrella")
        }
        else if indexPath.row == 21
        {
            voice(voice: "v for van")
        }
        else if indexPath.row == 22
        {
            voice(voice: "w for watch")
        }
        else if indexPath.row == 23
        {
            voice(voice: "x for x-mas tree")
        }
        else if indexPath.row == 24
        {
            voice(voice: "y for yak")
        }
        else
        {
            voice(voice: "z for zebra")
        }
    }
    
    func voice(voice: String)
    {
        var speech = AVSpeechUtterance(string: voice)
        sync.speak(speech)
        speech.rate = 0.3
    }
}
