import SwiftUI

struct NoticeView: View {
    var body: some View {
        NavigationStack {
            NavigationLink(destination: NoticeWebView()) {
                Text("웹 공지사항으로 이동 ↖︎")
                    .foregroundColor(.white)
                    .fontWeight(.black)
                    .padding()
                    .background(Color.pink)
                    .cornerRadius(20)
                    .shadow(color: Color.pink.opacity(0.45), radius: 4, x: 5, y: 4)
            }
        }
    }
}

struct NoticeView_Previews: PreviewProvider {
    static var previews: some View {
        NoticeView()
    }
}
