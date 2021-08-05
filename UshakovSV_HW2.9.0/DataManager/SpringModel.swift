//
//  SpringModel.swift
//  UshakovSV_HW2.9.0
//
//  Created by Сергей Ушаков on 04.08.2021.
//

import Spring

struct Animation {
	var animation: String
	var curve: String
	var duration: Double
	var force: Double
	
	var nextAnimation:String {
		getNextAnimation()
	}
}

extension Animation {
	
	// MARK: - Animation Data Source
	
	static func getAnimation() -> Animation {
		Animation(
			animation: DataManager.shared.animation.randomElement()?.rawValue ?? "pop",
			curve: DataManager.shared.curve.randomElement()?.rawValue ?? "linear",
			duration: DataManager.shared.durations.randomElement() ?? 1,
			force: DataManager.shared.forces.randomElement() ?? 1
		)
	}
	
	// MARK: - Private Methods
	
	private func getNextAnimation() -> String {
		var currentAnimationIndex = 0
		
		for index in DataManager.shared.animation {
			if index.rawValue != animation {
				currentAnimationIndex += 1
			}
		}
		let nextAnimation = DataManager.shared.animation[currentAnimationIndex].rawValue
		return nextAnimation
	}
}
