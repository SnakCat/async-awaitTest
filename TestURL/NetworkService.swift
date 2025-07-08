//
//  NetworkService.swift
//  TestURL
//
//  Created by DimaTru on 08.07.2025.
//

import Foundation

protocol NetworkServiceProtocol {
    func fetchData() async throws -> [PostModel]
}

final class NetworkService: NetworkServiceProtocol {

    private let baseURL = "https://jsonplaceholder.typicode.com/posts"
    
    func fetchData() async throws -> [PostModel] {
        guard let url = URL(string: baseURL) else {
            throw URLError(.badURL)
        }
        let (data, responce) = try await URLSession.shared.data(from: url)
        if let httpPesponce = responce as? HTTPURLResponse, httpPesponce.statusCode != 200 {
            fatalError("status code \(httpPesponce.statusCode)")
        }
        let users = try JSONDecoder().decode([PostModel].self, from: data)
        return users
    }
}
