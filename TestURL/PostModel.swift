//
//  PostModel.swift
//  TestURL
//
//  Created by DimaTru on 08.07.2025.
//

import Foundation

struct PostModel: Identifiable, Codable {
    let userId: Int
    let id: Int
    let title: String
    let body: String
}
