//
//  ContentView.swift
//  MAP KIT
//
//  Created by Tamez, Elan - Student on 10/21/25.
//

import SwiftUI
import MapKit

struct ContentView: View {
    
    
    let location1 = CLLocationCoordinate2D(latitude: 34.0549, longitude: -118.2426)
    let location2 = CLLocationCoordinate2D(latitude: 33.9850, longitude: -118.4743)
    let location3 = CLLocationCoordinate2D(latitude: 34.0545, longitude: -118.2406)
    let location4 = CLLocationCoordinate2D(latitude: 34.4249, longitude: -118.5958)
    let location5 = CLLocationCoordinate2D(latitude: 34.0985, longitude: -118.3256)
    
    
    
    @State var camera: MapCameraPosition = .automatic
    
    var body: some View {
        Map(position: $camera) {
            Marker("Los angeles City center", coordinate: location1)
                .tint(.black)
               
            
            
            Marker("Ocean", coordinate: location2)
                .tint(.black)
            Marker("mall", coordinate: location3)
                .tint(.black)
            Marker("6 flags", coordinate: location4)
                .tint(.black)
            Marker("Stars", coordinate: location5)
                .tint(.black)
            
        }
        .safeAreaInset(edge: .bottom) {
            HStack {
                Button {
                    camera = .region(MKCoordinateRegion(center: location1, latitudinalMeters:300, longitudinalMeters:300))
                } label:  {
                    Text("Los angeles")
                        .background(.blue)
                        .foregroundStyle(.white)
                   
                }
                Button {
                    camera = .region(MKCoordinateRegion(center: location2, latitudinalMeters:300, longitudinalMeters:300))
                } label: {
                    Text("Ocean")
                        .background(.blue)
                        .foregroundStyle(.white)
                }
                Button {
                    camera = .region(MKCoordinateRegion(center: location3, latitudinalMeters:300, longitudinalMeters:300))
                } label: {
                    Text("mall")
                        .background(.blue)
                        .foregroundStyle(.white)
                }
                Button {
                    camera = .region(MKCoordinateRegion(center: location4, latitudinalMeters:300, longitudinalMeters:300))
                } label: {
                    Text("6 flags")
                        .background(.blue)
                        .foregroundStyle(.white)
                }
                Button {
                    camera = .region(MKCoordinateRegion(center: location5, latitudinalMeters:300, longitudinalMeters:300))
                } label: {
                    Text("Stars")
                        .background(.blue)
                        
                        .foregroundStyle(.white)
                        
                }
                
            }
        }
    }
}
#Preview {
    ContentView()
}
