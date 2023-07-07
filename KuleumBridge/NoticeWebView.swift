import SwiftUI
import WebKit


struct WKWebViewPractice: UIViewRepresentable {
    var url: String
    
    func makeUIView(context: Context) -> WKWebView {
        guard let url = URL(string: url) else {
            return WKWebView()
        }
        let webView = WKWebView()

        webView.load(URLRequest(url: url))
        
        return webView
    }
    
    func updateUIView(_ webView: WKWebView, context: UIViewRepresentableContext<WKWebViewPractice>) {
        guard let url = URL(string: url) else { return }
        
        webView.load(URLRequest(url: url))
    }
    
    // 추가구현 해보기 : webView의 ProgressBar 생성하기.
}

// http 통신 허용 필요 - ATS의 Allow Arbitary Loads YES 설정
struct NoticeWebView: View{
    var body: some View{
        WKWebViewPractice(url: "http://www.konkuk.ac.kr/jsp/Plaza/plaza_01_01.jsp")
    }
}

struct NoticeWebView_Previews: PreviewProvider{
    static var previews: some View{
        WKWebViewPractice(url: "http://www.konkuk.ac.kr/jsp/Plaza/plaza_01_01.jsp")
    }
}
