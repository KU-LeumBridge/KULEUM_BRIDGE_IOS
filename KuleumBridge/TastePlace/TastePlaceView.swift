import SwiftUI

struct TastePlaceView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                HStack(spacing: 30) {
                    FoodCategoryView(category: "한식", categoryName: "한식",foodImage: "koreanfood")
                    FoodCategoryView(category: "분식", categoryName: "분식",foodImage: "tteok")
                    FoodCategoryView(category: "디저트", categoryName: "커피&디저트",foodImage: "expresso")
                }

                HStack(spacing: 30) {
                    FoodCategoryView(category: "일식", categoryName: "일식",foodImage: "sushi")
                    FoodCategoryView(category: "치킨_햄버거", categoryName: "패스트푸드",foodImage: "hamburger")
                    FoodCategoryView(category: "양식", categoryName: "아시안&양식",foodImage: "asian")
                }

                HStack(spacing: 30) {
                    FoodCategoryView(category: "중식", categoryName: "중식",foodImage: "dimsum")
                    FoodCategoryView(category: "고기", categoryName: "고깃집",foodImage: "meat")
                    FoodCategoryView(category: "술집", categoryName: "술집",foodImage: "soju")
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
