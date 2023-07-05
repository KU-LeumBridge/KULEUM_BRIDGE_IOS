//
//  FoodCategoryView.swift
//  KuleumBridge
//
//  Created by 최서연 on 2023/07/05.
//

import SwiftUI

struct FoodCategoryView: View {
    
    @State var foodName: String
    @State var foodImage: String
    
    var body: some View {
        VStack {
            NavigationLink(destination: FoodListView(foodName: foodName)) {
                Image(foodImage)
                    .resizable()
                    .frame(width: 75, height: 75)
                    .shadow(radius: 6, x: 5, y: 5)
            }
            Text(foodName)
                .foregroundColor(.black)
                .font(.system(size: 15))
                .fontWeight(.bold)
                .padding(7)
        }
    }
}

struct FoodCategoryView_Previews: PreviewProvider {
    static var previews: some View {
        FoodCategoryView(foodName: "한식", foodImage: "koreanfood")
    }
}
