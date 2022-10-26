//
//  Article.swift
//  GoodNews
//
//  Created by Vladimir Pisarenko on 26.10.2022.
//

import Foundation

struct ArticleList: Decodable {
    var articles: [Article]
}

struct Article: Decodable {
    var title: String
    var description: String
}
