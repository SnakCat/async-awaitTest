//
//  PostViewModel.swift
//  TestURL
//
//  Created by DimaTru on 08.07.2025.
//

import Foundation

@MainActor
final class PostViewModel: ObservableObject {
    @Published var posts: [PostModel] = []
    @Published var errorMessage: String?
    
    private let networkService = NetworkService()
    
    func fetchPosts() async {
        do {
            let fetchPosts = try await networkService.fetchData()
            self.posts = fetchPosts
        } catch {
            self.errorMessage = "Ошибка загрузки\(error.localizedDescription)"
        }
    }
}
