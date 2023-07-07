import SwiftUI

struct FoodListView: View{
    @State var foodName: String
    var body: some View{
        ScrollView {
            LazyVStack(alignment: .center) {
                ForEach(1...20, id: \.self) {_ in
                    FoodStoreInfoData()
                        .padding(.vertical, 10)
                    // 카테고리별 가게 리스트 데이터 필요
                    // 가게 이름, 이미지, 주소, 한줄평
                    // +) 위도, 경도 : 맵뷰 픽커를 위한 데이터
                }
            }
        }
        .navigationTitle(foodName)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct FoodListView_Previews: PreviewProvider{
    static var previews: some View{
        FoodListView(foodName: "한식")
    }
}
