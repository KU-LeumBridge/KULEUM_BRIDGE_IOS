import SwiftUI

struct TastePlaceView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                HStack(spacing: 30) {
                    FoodCategoryView(category: .한식, categoryName: Category.한식.title, foodImage: "koreanfood")
                    FoodCategoryView(category: .분식, categoryName: Category.분식.title, foodImage: "tteok")
                    FoodCategoryView(category: .디저트, categoryName: Category.디저트.title, foodImage: "expresso")
                }

                HStack(spacing: 30) {
                    FoodCategoryView(category: .일식, categoryName: Category.일식.title, foodImage: "sushi")
                    FoodCategoryView(category: .치킨_햄버거, categoryName: Category.치킨_햄버거.title, foodImage: "hamburger")
                    FoodCategoryView(category: .양식, categoryName: Category.양식.title, foodImage: "asian")
                }

                HStack(spacing: 30) {
                    FoodCategoryView(category: .중식, categoryName: Category.중식.title, foodImage: "dimsum")
                    FoodCategoryView(category: .고기, categoryName: Category.고기.title, foodImage: "meat")
                    FoodCategoryView(category: .술집, categoryName: Category.술집.title, foodImage: "soju")
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
