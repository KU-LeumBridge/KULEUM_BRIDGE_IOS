import SwiftUI

class ViewModel: ObservableObject {
    @Published var stores = [Store]()
    // @Published: 데이터 변경 시 자동으로 View가 업데이트되도록 함.

    func fetch() {
        guard let url = URL(string: "https://kuleum-bridge-server.fly.dev/api/foods")
        else { return }

        let task = URLSession.shared.dataTask(with: url) { [weak self] data,
            _, error in
            guard let data = data, error == nil else {
                return
            }

            do {
                let stores = try JSONDecoder().decode([Store].self, from: data)
                DispatchQueue.main.async {
                    self?.stores = stores
                }
            }
            catch {
                print(error)
            }
        }
        task.resume()
    }
}

// 데이터값이 잘들어왔는지 확인하기 위한 임시 뷰
struct TestData: View {
    @StateObject var viewModel = ViewModel()

    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.stores, id: \.self) { store in
                    VStack {
                        Text(store.storeName)
                        Text(store.address)
                        Text(store.category)
                        Text("\(store.latitude)")
                        Text("\(store.longitude)")
                        Text(store.oneLineReview)
                    }
                }
            }
        }
        .onAppear {
            viewModel.fetch()
        }
    }
}

struct TestData_Previews: PreviewProvider {
    static var previews: some View {
        TestData()
    }
}
