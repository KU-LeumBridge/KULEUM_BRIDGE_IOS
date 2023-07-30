import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Image("background_img")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()

            VStack(alignment: .leading) {
                VStack(alignment: .leading) {
                    Text("안녕, 최서연👋")
                        .font(.system(size: 30))
                        .fontWeight(.black)

                    Text("너의 학교 생활을 이어줄게 😃")
                        .font(.system(size: 20))
                        .fontWeight(.semibold)
                }
                .padding(.leading, 20)

                Spacer().frame(height: 30)

                HStack(spacing: 30) {
                    Image("맹구")
                        .resizable()
                        .frame(width: 120, height: 160)

                    VStack(alignment: .leading, spacing: 15) {
                        HStack {
                            Text("이름")
                                .fontWeight(.semibold)
                            Text("최서연")
                        }

                        HStack {
                            Text("학번")
                                .fontWeight(.semibold)
                            Text("202111381")
                        }
                        HStack {
                            Text("학과")
                                .fontWeight(.semibold)
                            Text("공과대학 컴퓨터공학부")
                        }
                        HStack {
                            Text("생년월일")
                                .fontWeight(.semibold)
                            Text("2001년 10월 3일")
                        }
                    }
                }
                .padding().frame(width: UIScreen.main.bounds.size.width)
                .background(Color.white)
                .border(.green, width: 3)

                Spacer().frame(height: 40)

                VStack(spacing: 20) {
                    HStack {
                        Text("이수구분")
                        Spacer().frame(width: 50)
                        Text("과목명")
                        Spacer().frame(width: 50)
                        Text("학점")
                        Spacer().frame(width: 50)
                        Text("성적")
                    }
                    .fontWeight(.black)
                    .font(.system(size: 18))

                    Divider()

                    GradeListView()
                    GradeListView()
                    GradeListView()
                    GradeListView()
                    GradeListView()
                }
                .padding().frame(width: UIScreen.main.bounds.size.width)
                .background(Color.white)
                .border(.green, width: 3)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
