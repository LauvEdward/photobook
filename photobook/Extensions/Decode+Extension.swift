//
//  Decode+Extension.swift
//  photobook
//
//  Created by edward on 28/06/2024.
//

import Foundation
extension JSONDecoder {
    func decode<T: Decodable>(data: Data, modelType: T.Type) -> Result<T, Error> {
        do {
            let decodedModel = try self.decode(modelType, from: data)
            return .success(decodedModel)
        } catch {
            return .failure(error)
        }
    }
}
