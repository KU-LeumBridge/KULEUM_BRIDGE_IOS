import MapKit
import SwiftUI

struct StoreInfo: View {
    let initLatitude: Double = 37.543250
    let initLongitude: Double = 127.072402

    @State private var region: MKCoordinateRegion
    @State private var showingAlert = false

    init() {
        _region = State(initialValue: MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: initLatitude, longitude: initLongitude), span: MKCoordinateSpan(latitudeDelta: 0.007, longitudeDelta: 0.007)))
    }
    
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Spacer().frame(height: 20)
            
                Text("환이네 갈비살 본점")
                    .font(.system(size: 30))
                    .fontWeight(.black)
            
                Spacer().frame(height: 15)
            
                Text("서울 광진구 아차산로29길 24 1층")
                    .font(.system(size: 20))
                    .fontWeight(.medium)
            }
            .padding(.trailing, 80)
            
            VStack {
                Map(coordinateRegion: $region)
                    .padding(.horizontal, 20)
                    .padding(.bottom, 15)
                // 맵에 해당 가게의 위치 픽커로 표시하기.
                
                HStack {
                    Button(action: {
                        showingAlert = true
                        // 주소 복사 기능 구현
                        
                    }) {
                        Text("주소 복사")
                            .padding()
                            .foregroundColor(.white)
                            .fontWeight(.heavy)
                            .background(Color.orange)
                            .cornerRadius(10)
                            .shadow(radius: 5, x: 5, y: 5)
                    }
                    .alert(isPresented: $showingAlert) {
                        Alert(
                            title: Text("주소가 복사되었습니다.")
                        )
                    }
                    
                    Spacer().frame(width: 20)
                    
                    Button(action: {
                        // 클릭 시 지도 앱으로 이동
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

// 해당 뷰 : 리스트 클릭 시 이동하도록 네비게이션 구현하기 .

struct StoreInfo_Previews: PreviewProvider {
    static var previews: some View {
        StoreInfo()
    }
}
