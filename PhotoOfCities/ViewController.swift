//
//  ViewController.swift
//  PhotoOfCities
//
//  Created by Sergey Lukaschuk on 03.09.2021.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var imageCity: UIImageView!
    @IBOutlet var cityName: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    
    private let cities = City.all
    private var index = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(respondToSwipeGesture))
        swipeRight.direction = .right
        self.view.addGestureRecognizer(swipeRight)
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(respondToSwipeGesture))
        swipeLeft.direction = .left
        self.view.addGestureRecognizer(swipeLeft)
    }
    
    private func updateUI() {
        imageCity.image = UIImage(named: cities[index].image)
        cityName.text = cities[index].name
        descriptionLabel.text = cities[index].description
    }
    
    @objc private func respondToSwipeGesture(gesture: UIGestureRecognizer) {
        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
            
            switch swipeGesture.direction {
            case .right:
                print("right swipe")
                if index > 0 { index -= 1; updateUI() }
                
            case .left:
                print("left swipe")
                if index != cities.count - 1 { index += 1; updateUI() }
                
                
            default:
                break
            }
        }
    }
    
}

