import SwiftUI

struct LoginView: View {
    @State var id: String = ""
    var body: some View {
        ZStack {
            Image("background_img")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
            
            VStack {
                Image("kuleum_icon")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 250, height: 250, alignment: .top)
                
                Text("학교생활의 연결,")
                    .font(.system(size: 18))
                
                Text("KU:LEUM BRIDGE")
                    .font(.system(size: 18))
                
                Spacer().frame(height: 50)
                
                TextField("PORTAL ID", text: $id)
                    .padding([.leading, .top, .bottom], 12)
                    .border(.black, width: 2)
                    .background(Color(uiColor: .white))
                    .padding([.leading, .trailing], 80)
                    .tint(.black)
                
                TextField("PASSWORD", text: $id)
                    .padding([.leading, .top, .bottom], 12)
                    .border(.black, width: 2)
                    .background(Color(uiColor: .white))
                    .padding([.leading, .trailing], 80)
                    .tint(.black)
                
                Spacer().frame(height: 30)
                
                Button(action: {
                    // TODO: action 추가
                    print("action")
                }, label: {
                    Text("Login")
                        .font(.system(size: 23))
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .padding(EdgeInsets(top: 15, leading: 60, bottom: 15, trailing: 60))
                        .background(.black)
                        .cornerRadius(2)
                })
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
