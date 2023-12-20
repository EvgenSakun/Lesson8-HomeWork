//
//  Beer.swift
//  HMLesson8
//
//  Created by Evgeny Sakun on 20.12.23.
//

class Beer {
    let name: String
    let price: Double
    let country: String
    var volume: Int // Остаток объема

    init(name: String, price: Double, country: String, volume: Int) {
        self.name = name
        self.price = price
        self.country = country
        self.volume = volume
    }
}
