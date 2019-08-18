//
//  RatingControl.swift
//  GymPlanner
//
//  Created by Liam Logan on 18/08/2019.
//  Copyright © 2019 Liam Logan. All rights reserved.
//

import UIKit

class RatingControl: UIStackView {

    //Mark: Initilaization
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpButtons()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setUpButtons()
    }
    
    //Mark Button Action
    @objc func ratingButtonTapped(button: UIButton){
        print("Button Pressed 👍")
    }
    
    //Mark: Private Methods
    private func setUpButtons(){
        //Create the Button
        let button = UIButton()
        button.backgroundColor = UIColor.red
        
        //Add Constraints
        button.translatesAutoresizingMaskIntoConstraints = false
        button.heightAnchor.constraint(equalToConstant: 44.0).isActive = true
        button.widthAnchor.constraint(equalToConstant: 44.0).isActive = true
        
        //Setup the button action
        button.addTarget(self, action: #selector(RatingControl.ratingButtonTapped(button:)), for: .touchUpInside)
        
        //Add the button to the stack
        addArrangedSubview(button)
    }
}
