//
//  SpringModel.swift
//  UshakovSV_HW2.9.0
//
//  Created by Сергей Ушаков on 04.08.2021.
//

import Spring

struct Animation {
	var animation: String
	var nextAnimation:String {
		getNextAnimation()
	}
	var curve: String
	var duration: Double
	var force: Double
}

extension Animation {
	static func getAnimation() -> Animation {
		Animation(
			animation: DataManager.shared.animation.randomElement()?.rawValue ?? "",
			curve: DataManager.shared.curve.randomElement()?.rawValue ?? "",
			duration: DataManager.shared.durations.randomElement() ?? 0,
			force: DataManager.shared.forces.randomElement() ?? 1
		)
	}
	
	
	private func getNextAnimation() -> String {
		var currentAnimationIndex = 0
		let nextAnimationIndex = currentAnimationIndex + 1
		
		for index in DataManager.shared.animation {
			if index.rawValue == animation {
				continue
			} else {
				currentAnimationIndex += 1
			}
		}
		let nextAnimation = DataManager.shared.animation[currentAnimationIndex].rawValue
		return nextAnimation
	}
}
