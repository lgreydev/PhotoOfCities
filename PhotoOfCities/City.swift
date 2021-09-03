//
//  City.swift
//  PhotoOfCities
//
//  Created by Sergey Lukaschuk on 03.09.2021.
//

import Foundation

struct City {
    var name: String
    var image: String
    var description: String
    
}

extension City {
    static var all = [
        City.init(name: "Vienna", image: "Vienna_01", description: "Until the beginning of the 20th century, Vienna was the largest German-speaking city in the world, and before the splitting of the Austro-Hungarian Empire in World War I, the city had 2 million inhabitants. Today, it is the second-largest German-speaking city after Berlin."),
        City.init(name: "London", image: "London_01", description: "London is the capital and largest city of England and the United Kingdom. The city stands on the River Thames in southeast England, at the head of its 50-mile (80 km) estuary leading to the North Sea. London has been a major settlement for two millennia."),
        City(name: "New York City", image: "NewYorkCity_01", description: "New York, often called New York City to distinguish it from New York State, or NYC for short, is the most populous city in the United States. With a 2020 population of 8,804,190 distributed over 302.6 square miles (784 km2), New York City is also the most densely populated major city in the United States."),
        City(name: "Singapore", image: "Singapore_01", description: "Modern Singapore was founded in 1819 by Sir Stamford Raffles as a trading post of the British Empire. In 1867, the colonies in Southeast Asia were reorganised and Singapore came under the direct control of Britain as part of the Straits Settlements."),
    ]
}



