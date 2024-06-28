//
//  APIRouter.swift
//  photobook
//
//  Created by edward on 28/06/2024.
//

import Foundation
enum APIRouter {
    case getListImage
    
    var path: String {
        switch self {
        case .getListImage:
            return "/photos"
        }
    }
}
