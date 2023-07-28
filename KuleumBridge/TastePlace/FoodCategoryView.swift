import SwiftUI

struct FoodCategoryView: View {
    @State var category: Category

    var body: some View {
        VStack {
            NavigationLink(destination: FoodListView(category: category)) {
                Image(category.image)
                    .resizable()
                    .frame(width: 75, height: 75)
                    .shadow(radius: 6, x: 5, y: 5)
            }
            Text(category.title)
                .foregroundColor(.white)
                .font(.system(size: 15))
                .fontWeight(.bold)
                .padding(7)
        }
    }
}

struct FoodCategoryView_Previews: PreviewProvider {
    static var previews: some View {
        FoodCategoryView(category: .한식)
    }
}
