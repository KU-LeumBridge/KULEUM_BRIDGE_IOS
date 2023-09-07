import Alamofire
import Foundation
import KeychainSwift

class ResourceAPI {
    let keychain = KeychainSwift()
    private let url = "https://kuis.konkuk.ac.kr/ui/cpr-lib/user-modules.js?p=0.4897527439677374"
    
    func getParameters(completion: @escaping (_ parameter: [String: String]) -> Void) {
        var parameters: [String: String] = [:]
        
        let headers: HTTPHeaders = [
            "Content-Type": "application/x-www-form-urlencoded; charset=UTF-8"
        ]
        
        // Request 생성
        let dataRequest = AF.request(url, method: .get, encoding: URLEncoding.default, headers: headers)
//        print(dataRequest)
        dataRequest.responseString { response in
            switch response.result {
            case .success(let data):
//                print(data)
                /* data 안에서 submit.addParameter("key", "value") 형태로 구하고자 하는 key, value가 저장되어 있습니다.
                 * 정규표현식을 이용하여 값을 빼낸 후 변수 parameters에 key와 value를 저장합니다.
                 */
                let regex = try! NSRegularExpression(pattern: #"submit\.addParameter\("(.*?)","(.*?)"\);"#)
                let matches = regex.matches(in: data, range: NSRange(data.startIndex..., in: data))
                
                for match in matches {
                    if let keyRange = Range(match.range(at: 1), in: data),
                       let valueRange = Range(match.range(at: 2), in: data)
                    {
                        let key = String(data[keyRange])
                        let value = String(data[valueRange])
                        
                        // 쓸모없는 부분이 저장되는 것을 막습니다.
                        if parameters.count < 10 {
                            // parameters에 key, value 저장
                            parameters[key] = value
                        }
                    }
                }
                
                completion(parameters)
                
                if let jsonData = try? JSONSerialization.data(withJSONObject: parameters),
                   let jsonString = String(data: jsonData, encoding: .utf8) {
                    self.keychain.set(jsonString, forKey: "payload")
                }
                
            case .failure(let error):
                print("DEBUG(get parameters api) error: \(error)")
            }
        }
    }
}