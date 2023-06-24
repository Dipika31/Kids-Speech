//
//  ViewController.swift
//  Kids Speech
//
//  Created by Choudhary Dipika on 21/06/23.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
  
    @IBOutlet weak var collectionView1: UICollectionView!
    var imgArray = ["abcd","123","animals","birds","vegs","fruits"]
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imgArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView1.dequeueReusableCell(withReuseIdentifier: "CvCellIdentifier", for: indexPath) as! Categories_CVfile
        cell.layer.borderWidth = 5
        cell.layer.borderColor = UIColor.darkGray.cgColor
        cell.layer.masksToBounds = true
        cell.layer.cornerRadius = 30
        cell.cvImage.image = UIImage(named: imgArray[indexPath.row])
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 230, height: 230)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.row == 0
        {
            let navigate = storyboard?.instantiateViewController(withIdentifier: "abc_Page") as! abc_Page
            navigationController?.pushViewController(navigate, animated: true)
        }
        else if indexPath.row == 1
        {
            let navigate = storyboard?.instantiateViewController(withIdentifier: "_123_Page") as! _123_Page
            navigationController?.pushViewController(navigate, animated: true)
        }
        else if indexPath.row == 2
        {
            let navigate = storyboard?.instantiateViewController(withIdentifier: "Animal_Page") as! Animal_Page
            navigationController?.pushViewController(navigate, animated: true)
        }
        else if indexPath.row == 3
        {
            value(colours: 4)
        }
        else if indexPath.row == 4
        {
            value(colours: 5)
        }
        else 
        {
            value(colours: 6)
        }
    }
    
    func value(colours:Int)
    {
        let navigate = storyboard?.instantiateViewController(withIdentifier: "abc_Page") as! abc_Page
        //navigate.
       // navigate.gamePageCv.backgroundColor = UIColor(named: colours)
        navigationController?.pushViewController(navigate, animated: true)
    }
    
}

