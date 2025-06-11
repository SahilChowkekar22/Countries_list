//
//  Country.swift
//  Countries_list
//
//  Created by Sahil ChowKekar on 6/11/25.
//

import Foundation

struct Country: Decodable {
    let capital: String?
    let code: String?
    let currency: Currency?
    let flag: String?
    let language: Language?
    let name: String?
    let region: String?

    struct Currency: Decodable {
        let code: String?
        let name: String?
        let symbol: String?
    }

    struct Language: Decodable {
        let code: String?
        let name: String?
    }

}

extension Country: Identifiable {
    var id: String {
        return [code, region]
            .compactMap { $0 }
            .joined(separator: "-")
    }
}
