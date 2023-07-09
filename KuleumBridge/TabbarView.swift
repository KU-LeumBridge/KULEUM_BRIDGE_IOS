import SwiftUI

struct TabbarView: View {
    @State private var selectedIdx = 0

    let tabbarText = ["홈", "맛집", "공지사항"]

    var body: some View {
        VStack {
            ZStack {
                switch selectedIdx {
                case 0:
                    // TODO: 홈 뷰 연결
                    ContentView()
                case 1:
                    TastePlaceView()
                default:
                    // TODO: 공지사항 뷰 연결
                    ContentView()
                }
            }

            Spacer()

            Divider()
                .frame(height: 1)
                .background(.black)

            HStack {
                Spacer()
                ForEach(0 ..< tabbarText.count, id: \.self) { num in
                    Spacer()
                    VStack {
                        Text(tabbarText[num])
                            .font(.system(size: 18, weight: .bold))
                            .foregroundColor(selectedIdx == num ? Color(.black) : Color(.gray))
                            .padding(.top, 15)
                    }
                    .gesture(
                        TapGesture().onEnded { _ in
                            selectedIdx = num
                        })
                    Spacer()
                }
            }
        }
    }
}

struct TabbarView_Previews: PreviewProvider {
    static var previews: some View {
        TabbarView()
    }
}
