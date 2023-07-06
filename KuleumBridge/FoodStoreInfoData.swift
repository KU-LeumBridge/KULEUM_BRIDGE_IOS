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
                Image("burgerking")
                    .resizable()
                    .frame(width: 90, height: 90)
                    .padding(.horizontal, 15)
                    
                
                VStack(alignment: .center) {
                    Text("버거킹 건대입구역점")
                        .font(.system(size: 21))
                        .fontWeight(.black)
                    
                    Spacer().frame(height: 7)
                    
                    Text("서울특별시 광진구 화양동 아차산로 229")
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .font(.system(size: 12))
                        .foregroundColor(.secondary)
                        //.background(Color.red)
                    
                    Spacer().frame(height: 3)
                        
                    Text("항상 패티 뜨겁고 감튀 바삭해서 좋네요😋👍")
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .font(.system(size: 13))
                        //.background(Color.purple)
                }
                .padding(.leading, 10)
                .padding(.trailing, 15)
                .padding(.vertical, 15)
                //.background(Color.yellow)
                
            }
            .border(.black, width: 1)
            //.background(Color.green)
        
    }
}

struct FoodStoreInfoData_Previews: PreviewProvider {
    static var previews: some View {
        FoodStoreInfoData()
    }
}
