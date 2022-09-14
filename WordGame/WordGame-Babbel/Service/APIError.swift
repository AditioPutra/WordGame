//
//  APIError.swift
//  WordGame-Babbel
//
//  Created by Aditio Dharmaputra on 14/09/22.
//

import Foundation

enum APIError: Error {
    case decodingError
    case httpError(Int)
    case invalidURL
    case unknown
}

