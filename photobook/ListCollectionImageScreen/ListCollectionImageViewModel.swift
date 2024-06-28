//
//  ListCollectionImageViewModel.swift
//  photobook
//
//  Created by edward on 28/06/2024.
//

import Foundation
class ListCollectionImageViewModel {
    var listImage: ImageModel?
    func getListImage() {
        APIManage.shared.request(url: .getListImage, param: nil, method: .get) { results in
            switch results {
            case .success(let data):
                let decoder = JSONDecoder()
                let result: Result<ImageModel, Error> = decoder.decode(data: data, modelType: ImageModel.self)
                switch result {
                case .success(let model):
                    self.listImage = model
                case .failure(let error):
                    print("Failed to decode with error: \(error)")
                }
            case .failure(let fail):
                print("")
            }
        }
    }
}
