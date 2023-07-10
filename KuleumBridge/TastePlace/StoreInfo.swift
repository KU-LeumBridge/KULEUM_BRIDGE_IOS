import MapKit
import SwiftUI

struct StoreInfo: View {
    let initLatitude: Double = 37.543250
    let initLongitude: Double = 127.072402

    @State private var region: MKCoordinateRegion

    init() {
        _region = State(initialValue: MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: initLatitude, longitude: initLongitude), span: MKCoordinateSpan(latitudeDelta: 0.007, longitudeDelta: 0.007)))
    }
    
    var body: some View {
        VStack {
            Text("환이네 갈비살 본점")
                .font(.system(size: 30))
                .fontWeight(.black)
                
            Spacer().frame(height: 15)
            
            Text("서울 광진구 아차산로29길 24 1층")
                .font(.system(size: 20))
                .fontWeight(.medium)
            
            // 1. 가게 이름, 주소 왼쪽 정렬 구현하기.
            
            Map(coordinateRegion: $region)
                .padding()
            // 1. 맵에 해당 가게의 위치 픽커로 표시하기.
            
            HStack(alignment: .center) {
                Button(action: {
                    print("우하하")
                    // 1. 주소 복사 기능 구현
                    // 2. 주소 복사가 되었음을 알리는 alert 기능 구현
                }) {
                    Text("주소 복사")
                        .padding()
                        .foregroundColor(.white)
                        .fontWeight(.heavy)
                        .background(Color.orange)
                        .cornerRadius(20)
                        .shadow(radius: 5, x: 5, y: 5)
                }
                
                Button(action: {
                    print("우하하")
                    // 1. 클릭 시 지도 앱으로 이동
                }) {
                    Text("지도 앱에서 찾기")
                        .padding()
                        .foregroundColor(.white)
                        .fontWeight(.heavy)
                        .background(Color.orange)
                        .cornerRadius(20)
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
