//
//  FoodListView.swift
//  KuleumBridge
//
//  Created by 최서연 on 2023/07/05.
//

import SwiftUI

struct FoodListView: View{
    @State var foodName: String
    var body: some View{
        ScrollView {
                    LazyVStack(alignment: .center) {
                        ForEach(1...20, id: \.self) {_ in
                            FoodStoreInfoData()
                                .padding(.vertical, 10)
                        }
                    }
        }
        .navigationTitle(foodName)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct FoodListView_Previews: PreviewProvider{
    static var previews: some View{
        FoodListView(foodName: "한식")
    }
}
