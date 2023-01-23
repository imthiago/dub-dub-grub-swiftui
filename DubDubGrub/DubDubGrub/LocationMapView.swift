//
//  LocationMapView.swift
//  DubDubGrub
//
//  Created by Thiago Oliveira on 23/01/23.
//

import SwiftUI
import MapKit

struct LocationMapView: View {
    @State private var region = MKCoordinateRegion(center: .init(latitude: -19.95906458259077,
                                                                 longitude: -44.181324430259416),
                                                   span: .init(latitudeDelta: 0.01,
                                                               longitudeDelta: 0.01))
    var body: some View {
        ZStack {
            Map(coordinateRegion: $region)
                .ignoresSafeArea()
            VStack {
                Image("ddg-map-logo")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 70)
                    .shadow(radius: 10)
                Spacer()
            }
        }
    }
}

struct LocationMapView_Previews: PreviewProvider {
    static var previews: some View {
        LocationMapView()
    }
}
