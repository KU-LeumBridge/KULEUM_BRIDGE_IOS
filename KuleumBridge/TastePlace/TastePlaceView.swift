import SwiftUI

struct TastePlaceView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Image("background_img")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .ignoresSafeArea()

                VStack(spacing: 20) {
                    HStack(spacing: 30) {
                        FoodCategoryView(category: .한식)
                        FoodCategoryView(category: .분식)
                        FoodCategoryView(category: .디저트)
                    }

                    HStack(spacing: 30) {
                        FoodCategoryView(category: .일식)
                        FoodCategoryView(category: .치킨_햄버거)
                        FoodCategoryView(category: .양식)
                    }

                    HStack(spacing: 30) {
                        FoodCategoryView(category: .중식)
                        FoodCategoryView(category: .고기)
                        FoodCategoryView(category: .술집)
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
    }
}

struct TastePlaceView_Previews: PreviewProvider {
    static var previews: some View {
        TastePlaceView()
    }
}
