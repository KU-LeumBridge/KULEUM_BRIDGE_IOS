import SwiftUI

struct TabBarView: View {
    @State private var selectedIdx = 0

    let tabBarText = ["홈", "맛집", "공지사항"]

    var body: some View {
        VStack {
            ZStack {
                switch selectedIdx {
                case 0:
                    HomeView()
                case 1:
                    TastePlaceView()
                case 2:
                    NoticeView()
                default:
                    HomeView()
                }
            }

            Spacer()

            Divider()
                .frame(height: 1)
                .background(.black)

            HStack {
                Spacer()
                ForEach(0 ..< tabBarText.count, id: \.self) { idx in
                    Spacer()
                    VStack {
                        Text(tabBarText[idx])
                            .font(.system(size: 18, weight: .bold))
                            .foregroundColor(selectedIdx == idx ? Color(.black) : Color(.gray))
                            .padding(.top, 15)
                    }
                    .gesture(
                        TapGesture().onEnded { _ in
                            selectedIdx = idx
                        })
                    Spacer()
                }
            }
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
