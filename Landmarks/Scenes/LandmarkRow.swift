//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Iwan Hartono on 05/06/19.
//  Copyright © 2019 Iwan Hartono. All rights reserved.
//

import SwiftUI

struct LandmarkRow : View {
	var landmark: Landmark
	
    var body: some View {
		HStack {
			landmark.image(forSize: 50)
			Text(landmark.name)
			Spacer()
			
			if landmark.isFavorite {
				Image(systemName: "star.fill")
					.imageScale(.medium)
				.foregroundColor(.yellow)
			}
		}
    }
}

#if DEBUG
struct LandmarkRow_Previews : PreviewProvider {
    static var previews: some View {
        LandmarkRow(landmark: landmarkData[0])
    }
}
#endif
