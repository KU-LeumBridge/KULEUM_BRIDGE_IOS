import SwiftUI

struct FoodListView: View {
    @State var category: Category
    @StateObject var viewModel = ViewModel()

    var filteredStores: [Store] {
        viewModel.stores.filter { store in
            store.category == category
        }
    }

    var body: some View {
        ZStack {
            Image("background_img")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()

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

            .navigationTitle(category.title)
            .navigationBarTitleDisplayMode(.inline)
            .onAppear {
                viewModel.fetch()
            }
        }
    }
}

struct FoodListView_Previews: PreviewProvider {
    static var previews: some View {
        FoodListView(category: .고기)
    }
}
