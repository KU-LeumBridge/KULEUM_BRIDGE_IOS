import Alamofire
import Foundation
import KeychainSwift

class AuthAPI {
    let keychain = KeychainSwift()
    let baseUrl = "https://kuis.konkuk.ac.kr"
    static let shared = AuthAPI()
    
    func postLogin(id: String, pw: String) {
        let url = "\(baseUrl)/Login/login.do"
        
        let headers: HTTPHeaders = [
            "Accept": "*/*",
            "Accept-Encoding": "gzip, deflate, br",
            "Accept-Language": "en-US,en;q=0.9,ko-KR;q=0.8,ko;q=0.7",
            "Connection": "keep-alive",
//            "Content-Length": "283",
            "Content-Type": "application/x-www-form-urlencoded; charset=UTF-8",
//            "Cookie": "_gcl_au=1.1.1873349838.1689056812; WMONID=Mu8B0BdUhFq; JSESSIONID=0001auBVoTdgZG5GxQZD5Rt34xh:12CJTEDUM6",
            "Host": "kuis.konkuk.ac.kr",
            "Origin": "https://kuis.konkuk.ac.kr",
            "Referer": "https://kuis.konkuk.ac.kr/index.do",
//            "Sec-Ch-Ua": "\"Not/A)Brand\";v=\"99\", \"Google Chrome\";v=\"115\", \"Chromium\";v=\"115\"",
            "Sec-Ch-Ua-Mobile": "?0",
//            "Pragma": "no-cache",
//            "Cache-Control": "no-cache",
            "Sec-Ch-Ua-Platform": "macOS",
            "Sec-Fetch-Dest": "empty",
            "Sec-Fetch-Mode": "cors",
            "Sec-Fetch-Site": "same-origin",
            "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36",
            "X-Requested-With": "XMLHttpRequest"
        ]
        
        var getParameter: [String: Any] = [:]
        
        ResourceAPI().getParameters { parameter in
            print()
        }
        
        if let getJSONString = keychain.get("payload"),
           let getData = getJSONString.data(using: .utf8),
           let getPayload = try? JSONSerialization.jsonObject(with: getData, options: []) as? [String: Any] {
            getParameter = getPayload
        }
        
        let parameters: [String: String] = ["@d1#SINGLE_ID": id, "@d1#PWD": pw, "@d1#default.locale": "ko", "@d#": "@d1#", "@d1#": "dsParam", "@d1#tp": "dm"]
        parameters.forEach { key, value in
            getParameter[key] = value
        }
        
        print(getParameter)
        
        // Request 생성
        let dataRequest = AF.request(url, method: .post, parameters: getParameter, encoding: URLEncoding.default, headers: headers)

        dataRequest.responseString { response in
            switch response.result {
            case .success(let data):
                print(data)
                
//                    completion(.success(data))
            case .failure(let error):
                print("DEBUG(login api) error: \(error)")
//                    completion(.failure(error))
            }
        }
        
//        ResourceAPI().getParameters { parameter in
//            getParameter = parameter
//            let parameters: [String: String] = ["@d1#SINGLE_ID": id, "@d1#PWD": pw, "@d1#default.locale": "ko", "@d#": "@d1#", "@d1#": "dsParam", "@d1#tp": "dm"]
//            parameters.forEach { key, value in
//                getParameter[key] = value
//            }
//            print(getParameter)
//            // Request 생성
//            let dataRequest = AF.request(url, method: .post, parameters: getParameter, encoding: URLEncoding.default, headers: headers)
//
//            dataRequest.responseString { response in
//                switch response.result {
//                case .success(let data):
//                    print(data)
////                    completion(.success(data))
//                case .failure(let error):
//                    print("DEBUG(login api) error: \(error)")
////                    completion(.failure(error))
//                }
//            }
//        }
        
        
    }
}
