import SwiftUI

struct FoodListView: View {
    @State var category: Category
    @State var categoryName: String
    @StateObject var viewModel = ViewModel()

    var body: some View {
        ScrollView {
            LazyVStack(alignment: .center) {
                ForEach(viewModel.stores, id: \.self) { store in
                    if isEqualToCategory(store.category, category: category) {
                        FoodStoreInfoData(store: store)
                            .padding(.vertical, 10)
                    }
                }
            }
        }
        .navigationTitle(categoryName)
        .navigationBarTitleDisplayMode(.inline)
        .onAppear {
            viewModel.fetch()
        }
    }
}

struct FoodListView_Previews: PreviewProvider {
    static var previews: some View {
        FoodListView(category: .한식, categoryName: "한식")
    }
}
