import SwiftUI

enum Field {
    case id
    case pw
}

struct LoginView: View {
    @State var id: String = ""
    @State var pw: String = ""
    
    @FocusState private var focusField: Field?
    
    var body: some View {
        NavigationStack {
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
                        .keyboardType(.default)
                        .focused($focusField, equals: .id)
                    
                    TextField("PASSWORD", text: $pw)
                        .padding([.leading, .top, .bottom], 12)
                        .border(.black, width: 2)
                        .background(Color(uiColor: .white))
                        .padding([.leading, .trailing], 80)
                        .tint(.black)
                        .keyboardType(.default)
                        .focused($focusField, equals: .pw)
                    
                    Spacer().frame(height: 30)
                    
                    // ContentView는 임시
                    // TODO: 탭바로 연결하기
                    // TODO: id, pw가 일치할 경우에만 넘어가도록 처리
                    NavigationLink(destination: ContentView()) {
                        Text("Login")
                            .font(.system(size: 23))
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .padding(EdgeInsets(top: 15, leading: 60, bottom: 15, trailing: 60))
                            .background(.black)
                            .cornerRadius(2)
                    }
                }
            }
        }.onTapGesture {
            hideKeyboard()
        }
    }
}

extension View {
    // 키보드 바깥 화면을 클릭 시 키보드를 내립니다.
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
