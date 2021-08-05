//
//  ViewController.swift
//  UshakovSV_HW2.9.0
//
//  Created by Сергей Ушаков on 03.08.2021.
//

import Spring

class ViewController: UIViewController {
	
	// MARK: - IB Outlets
	@IBOutlet weak var animateButtonOutlet: UIButton! {
		didSet { animateButtonOutlet.layer.cornerRadius = animateButtonOutlet.frame.height / 5 }
	}
	@IBOutlet weak var springAnimationView: SpringView! {
		didSet { springAnimationView.layer.cornerRadius = springAnimationView.frame.height / 15 }
	}
	@IBOutlet var settingsNameLabel: UILabel!
	
	// MARK: - Private Properties
	private var animationStart = Animation.getAnimation()
	
	// MARK: - IB Action
	
	@IBAction func runSpringButton(_ sender: SpringButton) {
		animationStart = Animation.getAnimation()
		
		animateButtonOutlet.setTitle("\(animationStart.animation)", for: UIControl.State.normal)
		springAnimationView.animation = animationStart.animation
		springAnimationView.curve = animationStart.curve
		springAnimationView.force = CGFloat(animationStart.force)
		springAnimationView.duration = CGFloat(animationStart.duration)
		settingsNameLabel.text = """
		Animation: \(animationStart.animation)
		Curve: \(animationStart.curve)
		Duration: \(animationStart.duration)
		Force: \(animationStart.force)
		"""
		springAnimationView.animate()
	}
}


