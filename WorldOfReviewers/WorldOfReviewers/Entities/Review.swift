//
//  Review.swift
//  WorldOfReviewers
//
//  Created by Alexandr Burtsev on 02.04.2023.
//

import Foundation
import SwiftUI

struct Review: Identifiable {
    var id: UUID = .init()
    var image: Image?
    var text: String
    var title: String
    var date: String
    var time: String
    var author: String
}
