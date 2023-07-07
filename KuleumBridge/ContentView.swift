import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "bookmark.fill")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, KuleumBridge!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
