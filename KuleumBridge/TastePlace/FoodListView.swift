import SwiftUI

struct FoodListView: View {
    @State var category: String
    @StateObject var viewModel = ViewModel()

    var body: some View {
        ScrollView {
            LazyVStack(alignment: .center) {
                ForEach(viewModel.stores, id: \.self) { store in
                    FoodStoreInfoData(store: store)
                        .padding(.vertical, 10)
                }
            }
        }
        .navigationTitle(category)
        .navigationBarTitleDisplayMode(.inline)
        .onAppear {
            viewModel.fetch()
        }
    }
}

struct FoodListView_Previews: PreviewProvider {
    static var previews: some View {
        FoodListView(category: "한식")
    }
}
