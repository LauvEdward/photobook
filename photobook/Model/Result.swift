//
//  Result.swift
//  photobook
//
//  Created by edward on 28/06/2024.
//

import Foundation
enum Result<Success, Fail> where Fail: Error {
    case success(Success)
    case failure(Fail)
}
