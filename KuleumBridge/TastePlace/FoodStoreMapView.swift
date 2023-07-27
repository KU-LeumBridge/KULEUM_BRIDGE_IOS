import MapKit
import SwiftUI

struct FoodStoreMapView: View {
    let initLatitude: Double = 37.543250
    let initLongitude: Double = 127.072402

    @State private var region: MKCoordinateRegion
    @StateObject var viewModel = ViewModel()

    init() {
        _region = State(initialValue: MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: initLatitude, longitude: initLongitude), span: MKCoordinateSpan(latitudeDelta: 0.007, longitudeDelta: 0.007)))
    }

    var body: some View {
        Map(coordinateRegion: $region, annotationItems: viewModel.stores) { store in
            MapAnnotation(coordinate: store.coordinate) {
                Image(store.category.image)
                    .resizable()
                    .frame(width: 35, height: 35)
            }
        }
        .ignoresSafeArea(.all, edges: .bottom)
        .onAppear {
            viewModel.fetch()
        }
    }
}

struct FoodStoreMapView_Previews: PreviewProvider {
    static var previews: some View {
        FoodStoreMapView()
    }
}
