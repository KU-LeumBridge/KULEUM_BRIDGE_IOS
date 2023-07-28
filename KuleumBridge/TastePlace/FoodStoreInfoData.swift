import SwiftUI

struct FoodStoreInfoData: View {
    var store: Store
    var body: some View {
        HStack {
            VStack(alignment: .trailing) {
                Text(store.storeName)
                    .font(.system(size: 21))
                    .fontWeight(.black)

                Spacer().frame(height: 7)

                Text(store.oneLineReview)
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .font(.system(size: 14))

                Spacer().frame(height: 3)

                Text(store.address)
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .font(.system(size: 13))
                    .foregroundColor(.secondary)
            }
            .padding(.leading, 10)
            .padding(.trailing, 15)
            .padding(.vertical, 15)
        }
        .background(Color.white)
    }
}

struct FoodStoreInfoData_Previews: PreviewProvider {
    static var previews: some View {
        FoodStoreInfoData(store: Store(category: .한식, storeName: "배고픈 밥집", address: "서초대로29길 23-8 201호", latitude: 12.34243, longitude: 543.341, oneLineReview: "개존맛탱구리구리너구리", id: 1))
    }
}
