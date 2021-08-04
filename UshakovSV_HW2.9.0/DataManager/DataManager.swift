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
	
	let durations = [
		0.5,
		1.0,
		1.5,
		2.0,
	]
	
	let forces = [
		1.0,
		1.5,
		2.0,
		2.5
	]
	
}
