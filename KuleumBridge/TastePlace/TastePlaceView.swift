import SwiftUI

struct TastePlaceView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                HStack(spacing: 30) {
                    FoodCategoryView(category: "한식", foodImage: "koreanfood")
                    FoodCategoryView(category: "분식", foodImage: "tteok")
                    FoodCategoryView(category: "카페", foodImage: "expresso")
                }

                HStack(spacing: 30) {
                    FoodCategoryView(category: "일식", foodImage: "sushi")
                    FoodCategoryView(category: "패스트푸드", foodImage: "hamburger")
                    FoodCategoryView(category: "아시안/양식", foodImage: "asian")
                }

                HStack(spacing: 30) {
                    FoodCategoryView(category: "중식", foodImage: "dimsum")
                    FoodCategoryView(category: "고깃집", foodImage: "meat")
                    FoodCategoryView(category: "술집", foodImage: "soju")
                }
            }

            Spacer().frame(height: 30)

            NavigationLink(destination: FoodStoreMapView()) {
                Text("지도로 보기 🗺️")
                    .foregroundColor(.white)
                    .font(.system(size: 16))
                    .fontWeight(.black)
                    .padding()
                    .background(Color.orange)
                    .cornerRadius(20)
                    .shadow(radius: 6, x: 5, y: 5)
            }
        }
    }
}

struct TastePlaceView_Previews: PreviewProvider {
    static var previews: some View {
        TastePlaceView()
    }
}
