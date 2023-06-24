//
//  Animal_Page.swift
//  Kids Speech
//
//  Created by Choudhary Dipika on 24/06/23.
//

import UIKit
import AVFoundation

class Animal_Page: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
 
    @IBOutlet weak var animalCV: UICollectionView!
    var animal = ["Dog","Cat","Cow","Bear","Giraffe","Zebra","Rabbit","Crocodile"]
    var sync = AVSpeechSynthesizer()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return animal.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = animalCV.dequeueReusableCell(withReuseIdentifier: "AnimalCVcellidentifier", for: indexPath) as! AnimalCVCellfile
        cell.layer.borderColor = UIColor.black.cgColor
        cell.layer.borderWidth = 3
        cell.layer.cornerRadius = 10
        cell.layer.masksToBounds = true
        cell.animalimg.image = UIImage(named: animal[indexPath.row])
        cell.animalName.text = animal[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 170, height: 180)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.row == 0
        {
            voice(voice: "Dog")
        }
        else if indexPath.row == 1
        {
            voice(voice: "Cat")
        }
        else if indexPath.row == 2
        {
            voice(voice: "Cow")
        }
        else if indexPath.row == 3
        {
            voice(voice: "Bear")
        }
        else if indexPath.row == 4
        {
            voice(voice: "Giraffe")
        }
        else if indexPath.row == 5
        {
            voice(voice: "Zebra")
        }
        else if indexPath.row == 6
        {
            voice(voice: "Rabbit")
        }
        else
        {
            voice(voice: "Crocodile")
        }
    }
    
    func voice(voice: String)
    {
        var speech = AVSpeechUtterance(string: voice)
        sync.speak(speech)
        speech.rate = 0.3
    }
}
