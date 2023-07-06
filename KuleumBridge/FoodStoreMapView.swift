//
//  FoodStoreMapView.swift
//  KuleumBridge
//
//  Created by 최서연 on 2023/07/05.
//

import SwiftUI
import MapKit

struct FoodStoreMapView: View{
    
    // 초기 화면 설정 : KU시네마파크
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 37.543250, longitude: 127.072402), span: MKCoordinateSpan(latitudeDelta: 0.007, longitudeDelta: 0.007))
    
    var body: some View {

            Map(coordinateRegion: $region)
            .ignoresSafeArea(.all, edges: .bottom)
    }

}

struct FoodStoreMapView_Previews: PreviewProvider{
    static var previews: some View{
        FoodStoreMapView()
    }
}
