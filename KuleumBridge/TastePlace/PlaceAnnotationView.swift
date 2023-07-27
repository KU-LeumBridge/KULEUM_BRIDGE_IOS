import SwiftUI

struct PlaceAnnotationView: View {
    @State var store: Store
    @State private var showingTitle: Bool = false
    @State private var selectedStore: Store?

    var body: some View {
        VStack(spacing: 0) {
            Text(store.storeName)
                .fontWeight(.bold)
                .padding(5)
                .background(Color(.white).opacity(0.5))
                .cornerRadius(10)
                .opacity(showingTitle ? 1 : 0)
                .onTapGesture {
                    selectedStore = store
                }
                .sheet(item: $selectedStore) { store in
                    StoreInfo(store: store)
                }

            Image(store.category.image)
                .resizable()
                .frame(width: 35, height: 35)
                .onTapGesture {
                    withAnimation(.easeOut) {
                        showingTitle.toggle()
                    }
                }
        }
    }
}
