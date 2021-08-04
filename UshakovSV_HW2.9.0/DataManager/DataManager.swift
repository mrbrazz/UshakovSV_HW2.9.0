//
//  DataManager.swift
//  UshakovSV_HW2.9.0
//
//  Created by Сергей Ушаков on 04.08.2021.
//

import Spring

class DataManager {
	static let shared = DataManager()
	
	private init() { }
	
	var animation: [Spring.AnimationPreset] = Spring.AnimationPreset.allCases
	var curve: [Spring.AnimationCurve] = Spring.AnimationCurve.allCases
	
//	var modelAnimation: [Animation] {
//		var result: [Animation] = []
//		for index in 0..<animations.count {
//			result.append(
//				Animation(
//					animation: animations[index],
//					duration: durations[index],
//					curve: curves[index],
//					force: forces[index]
//				)
//			)
//		}
//		return result
//	}
//
//	let animations = [
//		"pop",
//		"morph",
//		"wobble"
//	]
	
	let durations = [
		1.5,
		2.5,
		3.5
	]
	
//	let curves = [
//		"easeIn",
//		"easeOut",
//		"spring"
//	]
	
	let forces = [
		1.0,
		2.0,
		3.2
	]
	
}
