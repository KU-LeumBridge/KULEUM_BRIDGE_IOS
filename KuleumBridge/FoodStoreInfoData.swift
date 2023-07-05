//
//  FoodStoreInfoData.swift
//  KuleumBridge
//
//  Created by 최서연 on 2023/07/05.
//

import SwiftUI

struct FoodStoreInfoData: View {
    
    var body: some View {

            HStack {
                Image("koreanfood")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .padding(.horizontal, 20)
                    
                
                VStack(alignment: .center) {
                    Text("가게 이름")
                        .font(.system(size: 26))
                        .fontWeight(.black)
                    
                    Spacer().frame(height: 7)
                    
                    Text("가게 주소")
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        
                    Text("가게 한줄 평")
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
                .padding(.leading, 10)
                .padding(.trailing, 40)
                .padding(.vertical, 15)
                
            }
            .border(.black, width: 2)
        
    }
}

struct FoodStoreInfoData_Previews: PreviewProvider {
    static var previews: some View {
        FoodStoreInfoData()
    }
}
