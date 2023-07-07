import SwiftUI

struct TastePlaceView: View{
    var body: some View {
        NavigationStack{
            VStack(spacing: 20) {
                HStack(spacing: 30) {
                    FoodCategoryView(foodName: "한식", foodImage: "koreanfood")
                    FoodCategoryView(foodName: "분식", foodImage: "tteok")
                    FoodCategoryView(foodName: "카페", foodImage: "expresso")
                }
                
                HStack(spacing: 30) {
                    FoodCategoryView(foodName: "일식", foodImage: "sushi")
                    FoodCategoryView(foodName: "패스트푸드", foodImage: "hamburger")
                    FoodCategoryView(foodName: "아시안/양식", foodImage: "asian")
                }
                
                HStack(spacing: 30) {
                    FoodCategoryView(foodName: "중식", foodImage: "dimsum")
                    FoodCategoryView(foodName: "고깃집", foodImage: "meat")
                    FoodCategoryView(foodName: "술집", foodImage: "soju")
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
                    .shadow(radius: 6, x:5, y: 5)
            }
        }
    }
}


struct TastePlaceView_Previews: PreviewProvider{
    static var previews: some View{
        TastePlaceView()
    }
}
