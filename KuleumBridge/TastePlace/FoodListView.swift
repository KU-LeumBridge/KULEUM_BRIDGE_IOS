import SwiftUI

struct FoodListView: View {
    @State var category: Category
    @State var categoryName: String
    @StateObject var viewModel = ViewModel()

    var filteredStores: [Store] {
        viewModel.stores.filter { store in
            isEqualToCategory(store.category, category: category)
        }
    }

    var body: some View {
        ScrollView {
            LazyVStack(alignment: .center) {
                ForEach(filteredStores, id: \.self) { store in
                    NavigationLink {
                        StoreInfo(store: store)
                    } label: {
                        FoodStoreInfoData(store: store)
                    }
                    .tint(.black)
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
