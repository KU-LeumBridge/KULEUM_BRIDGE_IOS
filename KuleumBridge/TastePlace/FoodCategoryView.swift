import SwiftUI

struct FoodCategoryView: View {
    @State var category: Category
    @State var categoryName: String
    @State var foodImage: String

    var body: some View {
        VStack {
            NavigationLink(destination: FoodListView(category: category, categoryName: categoryName)) {
                Image(foodImage)
                    .resizable()
                    .frame(width: 75, height: 75)
                    .shadow(radius: 6, x: 5, y: 5)
            }
            Text(categoryName)
                .foregroundColor(.black)
                .font(.system(size: 15))
                .fontWeight(.bold)
                .padding(7)
        }
    }
}

struct FoodCategoryView_Previews: PreviewProvider {
    static var previews: some View {
        FoodCategoryView(category: .한식, categoryName: "한식", foodImage: "koreanfood")
    }
}
