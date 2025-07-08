//
//  CustomCell.swift
//  TestURL
//
//  Created by DimaTru on 08.07.2025.
//

import SwiftUI

struct CustomCell: View {
    let post: PostModel
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(post.title)
                .font(.headline)
            Text(post.body)
                .foregroundStyle(.secondary)
                .lineLimit(.zero)
        }
    }
}

#Preview {
    CustomCell(post: PostModel(userId: 1, id: 1, title: "Teest", body: "Test test "))
}
