//
//  APIManage.swift
//  photobook
//
//  Created by edward on 28/06/2024.
//

import Foundation
import Alamofire
let accessKey = "iQaYbNGUdDpQDrVWJpJGKHFTChxr22iAWWDN6z8Outs"
class APIManage {
    static let shared = APIManage()
    let baseURL = "https://api.unsplash.com"
    func request(url: APIRouter, param: Parameters?, method: HTTPMethod, completion: @escaping (Result<Data, Error>) -> Void) {
        print("\(baseURL)\(url.path)/?client_id=\(accessKey)")
        AF.request("\(baseURL)\(url.path)/?client_id=\(accessKey)", method: method, parameters: param).response { response in
            switch response.result {
            case .success(let _):
                guard let data = response.data else {
                    completion(.failure(ErrorCustom.apifail))
                    return
                }
                completion(.success(data))
            case .failure(let _):
                completion(.failure(ErrorCustom.apifail))
            }
        }
    }
}

