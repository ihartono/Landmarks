//
//  MapView.swift
//  Landmarks
//
//  Created by Iwan Hartono on 05/06/19.
//  Copyright © 2019 Iwan Hartono. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView : UIViewRepresentable {
	var coordinate: CLLocationCoordinate2D
	
	func makeUIView(context: Context) -> MKMapView {
		MKMapView(frame: .zero)
	}
	
//	func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<MapView>) {
	func updateUIView(_ view: MKMapView, context: Context) {
//		let coordinate = CLLocationCoordinate2D(latitude: 34.011286, longitude: -116.166868)
		let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
		let region = MKCoordinateRegion(center: coordinate, span: span)
		view.setRegion(region, animated: true)
	}
}

#if DEBUG
struct MapView_Previews : PreviewProvider {
    static var previews: some View {
		MapView(coordinate: landmarkData[0].locationCoordinate)
    }
}
#endif
