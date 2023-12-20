//
//  ViewController.swift
//  HMLesson8
//
//  Created by Evgeny Sakun on 20.12.23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var MyCarlsberg: UIButton!
    @IBOutlet weak var MyTuborg: UIButton!
    @IBOutlet weak var MyAmstel: UIButton!
    
    
    @IBOutlet weak var EndDay: UIButton!
    
    
    @IBOutlet weak var VolumeCar: UILabel!
    @IBOutlet weak var VolumeTub: UILabel!
    @IBOutlet weak var VolumeAmstel: UILabel!
    
    
    
    @IBOutlet weak var PriceDay1: UILabel!
    @IBOutlet weak var EndDayPrice: UILabel!
    
    var beerCarlsberg = Beer(name: "Carlsberg", price: 3.0, country: "UK", volume: 10)
    var beerTuborg = Beer(name: "Tuborg", price: 1.0, country: "USA", volume: 10)
    var beerAmstel = Beer(name: "Amstel", price: 2.0, country: "France", volume: 10)
    
    var beerSoldCounter = 0
    var turnover = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        PriceDay1.text = "0"
        
        EndDayPrice.isHidden = true
        
    }

    func beerSold(name: Beer) {
        EndDayPrice.isHidden = true
        turnover = turnover + name.price
        PriceDay1.text = String(turnover)
        name.volume -= 1
        beerSoldCounter += 1
        VolumeCar.text = String(beerCarlsberg.volume)
        VolumeTub.text = String(beerTuborg.volume)
        VolumeAmstel.text = String(beerAmstel.volume)
        
    }
    
    @IBAction func Carlsberg1(_ sender: Any) {
        beerSold(name: beerCarlsberg)
    }
    
    
    @IBAction func Tuborg1(_ sender: Any) {
        beerSold(name: beerTuborg)
    }
    
    
    @IBAction func Amstel1(_ sender: Any) {
        beerSold(name: beerAmstel)
    }
    
    func stockBack(beerName: Beer) {
            beerName.volume = 100
        }
    
    
    @IBAction func EndDay1(_ sender: Any) {
        let beersArray: [Beer] = [beerCarlsberg, beerTuborg, beerAmstel]
        EndDayPrice.text = "Продано за день - \(beerSoldCounter) литров, общей стоимостью \(turnover) $"
        EndDayPrice.isHidden = false
        beerSoldCounter = 0
        turnover = 0.0
        for i in 0...2 {
            stockBack(beerName: beersArray[i])
        }
        
        VolumeCar.text = String(beerCarlsberg.volume)
        VolumeTub.text = String(beerTuborg.volume)
        VolumeAmstel.text = String(beerAmstel.volume)
        
        
        PriceDay1.text = "0"
    }
    
    
    
    
    

}

