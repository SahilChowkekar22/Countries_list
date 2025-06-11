//
//  APIServiceError.swift
//  Countries_list
//
//  Created by Sahil ChowKekar on 6/11/25.
//

import Foundation

// Defines network-related errors for API handling
enum APIServiceError: Error {
    case responseFailure
    case invalidURL
    case urlError(Error)
    case decodingError(Error)
    case otherError(Error)
}
