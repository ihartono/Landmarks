//
//  UserData.swift
//  Landmarks
//
//  Created by Iwan Hartono on 09/06/19.
//  Copyright © 2019 Iwan Hartono. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: BindableObject {
	let didChange = PassthroughSubject<UserData, Never>()
	
	var showFavoritesOnly = false {
		didSet {
			didChange.send(self)
		}
	}
	
	var landmarks = landmarkData {
		didSet {
			didChange.send(self)
		}
	}
}
