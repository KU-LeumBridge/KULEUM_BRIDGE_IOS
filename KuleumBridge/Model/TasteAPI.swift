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
