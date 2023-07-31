import SwiftUI

struct GradeListView: View {
    var body: some View {
        HStack {
            Text("이수구분")
            Spacer().frame(width: 50)
            Text("과목명")
            Spacer().frame(width: 50)
            Text("학점")
            Spacer().frame(width: 50)
            Text("성적")
        }
    }
}
