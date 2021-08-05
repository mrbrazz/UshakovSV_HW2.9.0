//
//  DataManager.swift
//  UshakovSV_HW2.9.0
//
//  Created by Сергей Ушаков on 04.08.2021.
//

import Spring

class DataManager {
	
	// MARK: - Public Properties
	
	static let shared = DataManager()
	
	var animation: [Spring.AnimationPreset] = Spring.AnimationPreset.allCases
	var curve: [Spring.AnimationCurve] = Spring.AnimationCurve.allCases
	
	let durations = [
		1.0,
		1.5,
		2.0,
		2.5
	]
	
	let forces = [
		1.0,
		1.5,
		2.0,
		2.5
	]
	
	// MARK: - Initializers
	
	private init() { }
}
