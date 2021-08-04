//
//  ViewController.swift
//  UshakovSV_HW2.9.0
//
//  Created by Сергей Ушаков on 03.08.2021.
//

import Spring

class ViewController: UIViewController {
	
	@IBOutlet weak var animationViewButtonOutlet: SpringButton!
	@IBOutlet weak var springAnimationView: SpringView! {
		didSet { springAnimationView.layer.cornerRadius = springAnimationView.frame.height / 10
		}
	}
	@IBOutlet var settingsNameLabel: UILabel!
	
	var animationStart = Animation.getAnimation()
	
	override func viewDidLoad() {
		super.viewDidLoad()
	}
	
	@IBAction func runSpringButton(_ sender: SpringButton) {
		animationStart = Animation.getAnimation()
		
		animationViewButtonOutlet.setTitle("\(animationStart.nextAnimation)", for: UIControl.State.normal)
		springAnimationView.animation = animationStart.animation
		springAnimationView.curve = animationStart.curve
		springAnimationView.force = CGFloat(animationStart.force)
		springAnimationView.duration = CGFloat(animationStart.duration)
		settingsNameLabel.text = """
	  animation: \(animationStart.animation)
	  curve: \(animationStart.curve)
	  force: \(animationStart.force)
	  duration: \(animationStart.duration)
	  """
		springAnimationView.animate()
	}
	
}


