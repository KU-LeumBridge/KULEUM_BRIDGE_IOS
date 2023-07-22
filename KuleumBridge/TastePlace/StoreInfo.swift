import MapKit
import SwiftUI

struct StoreInfo: View {
    var store: Store

    @State private var region: MKCoordinateRegion
    @State private var showingAlert = false

    init(store: Store) {
        self.store = store
        
        _region = State(initialValue: MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: store.latitude, longitude: store.longitude), span: MKCoordinateSpan(latitudeDelta: 0.001, longitudeDelta: 0.001)))
    }
    
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Spacer().frame(height: 20)
            
                Text(store.storeName)
                    .font(.system(size: 30))
                    .fontWeight(.black)
            
                Spacer().frame(height: 15)
            
                Text(store.address)
                    .font(.system(size: 20))
                    .fontWeight(.medium)
            }
            .padding(.trailing, 80)
            
            VStack {
                Map(coordinateRegion: $region)
                    .padding(.horizontal, 20)
                    .padding(.bottom, 15)
                // TODO: 맵에 해당 가게의 위치 픽커로 표시하기.
                
                HStack {
                    Button(action: {
                        showingAlert = true
                        // TODO: 주소 복사 기능 구현
                    }) {
                        Text("주소 복사")
                            .padding()
                            .foregroundColor(.white)
                            .fontWeight(.heavy)
                            .background(Color.orange)
                            .cornerRadius(10)
                            .shadow(radius: 5, x: 5, y: 5)
                    }
                    .alert("주소 복사가 완료되었습니다.", isPresented: $showingAlert) {
                        Button("OK", role: .none) {}
                    }
                    
                    Spacer().frame(width: 20)
                    
                    Button(action: {
                        // TODO: 클릭 시 지도 앱으로 이동
                    }) {
                        Text("지도 앱에서 찾기")
                            .padding()
                            .foregroundColor(.white)
                            .fontWeight(.heavy)
                            .background(Color.orange)
                            .cornerRadius(10)
                            .shadow(radius: 5, x: 5, y: 5)
                    }
                }
            }
        }
    }
}

struct StoreInfo_Previews: PreviewProvider {
    static var previews: some View {
        let store = Store(category: "한식", storeName: "배고픈 밥집", address: "서초대로29길 23-8 201호", latitude: 12.34243, longitude: 543.341, oneLineReview: "개존맛탱구리구리너구리", id: 1)
        StoreInfo(store: store)
    }
}
