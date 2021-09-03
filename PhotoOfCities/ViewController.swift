//
//  ViewController.swift
//  PhotoOfCities
//
//  Created by Sergey Lukaschuk on 03.09.2021.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - IBOutlet
    @IBOutlet var imageCity: UIImageView!
    @IBOutlet var cityName: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    
    // MARK: - Private Properties
    private let cities = City.all
    private var index = 0
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        configureSwipe()
    }
    
    // MARK: - Private Methods
    private func updateUI() {
        imageCity.image = UIImage(named: cities[index].image)
        cityName.text = cities[index].name
        descriptionLabel.text = cities[index].description
    }
    
    private func configureSwipe() {
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(respondToSwipeGesture))
        swipeRight.direction = .right
        self.view.addGestureRecognizer(swipeRight)
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(respondToSwipeGesture))
        swipeLeft.direction = .left
        self.view.addGestureRecognizer(swipeLeft)
    }
    
    @objc
    private func respondToSwipeGesture(gesture: UIGestureRecognizer) {
        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
            switch swipeGesture.direction {
            case .right:
//                print("right swipe")
                if index > 0 { index -= 1; updateUI() } else { index = cities.count - 1; updateUI() }
            case .left:
//                print("left swipe")
                if index != cities.count - 1 { index += 1; updateUI() } else { index = 0; updateUI() }
            default:
                break
            }
        }
    }
}

