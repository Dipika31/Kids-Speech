//
//  123_Page.swift
//  Kids Speech
//
//  Created by Choudhary Dipika on 23/06/23.
//

import UIKit
import AVFoundation

class _123_Page: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
   
    @IBOutlet weak var numberCV: UICollectionView!
    var numArray = ["1","2","3","4","5","6","7","8","9","10"]
    var numWordArray = ["One","Two","Three","Four","Five","Six","Seven","Eight","Nine","Ten"]
    
    var sync = AVSpeechSynthesizer()
    
    override func viewDidLoad() {
        super.viewDidLoad()

      
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = numberCV.dequeueReusableCell(withReuseIdentifier: "_123_CVcellidentifier", for: indexPath) as! _123_CVfile
        cell.layer.borderColor = UIColor.black.cgColor
        cell.layer.borderWidth = 3
        cell.layer.cornerRadius = 10
        cell.layer.masksToBounds = true
        cell.layer.backgroundColor = UIColor.lightGray.cgColor
        cell.numberLabel.text = numArray[indexPath.row]
        cell.numberWordLabel.text = numWordArray[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 160, height: 160)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.row == 0
        {
            voice(voice: "1")
        }
        else if indexPath.row == 1
        {
            voice(voice: "2")
        }
        else if indexPath.row == 2
        {
            voice(voice: "3")
        }
        else if indexPath.row == 3
        {
            voice(voice: "4")
        }
        else if indexPath.row == 4
        {
            voice(voice: "5")
        }
        else if indexPath.row == 5
        {
            voice(voice: "6")
        }
        else if indexPath.row == 6
        {
            voice(voice: "7")
        }
        else if indexPath.row == 7
        {
            voice(voice: "8")
        }
        else if indexPath.row == 8
        {
            voice(voice: "9")
        }
        else
        {
            voice(voice: "10")
        }
        
    }
    
    func voice(voice: String)
    {
        var speech = AVSpeechUtterance(string: voice)
        sync.speak(speech)
        speech.rate = 0.3
    }
}
