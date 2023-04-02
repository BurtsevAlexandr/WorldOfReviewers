//
//  ResourcesDescription.swift
//  WorldOfReviewers
//
//  Created by Alexandr Burtsev on 02.04.2023.
//

import Foundation
import SwiftUI

public final class Colors {
    static let AccentTextColor = Color.black
    static let BackgroundColor = Color("BackgroundColor")
    static let CriticsHeaderColor = Color("CriticsHeaderColor")
    static let NotAccentTextColor = Color("NotAccentTextColor")
    static let ReviewesHeaderColor = Color("ReviewesHeaderColor")
}

public final class SystemImages {
    static let Magnifyingglass = Image(systemName: "magnifyingglass")
    static let Calendar = Image(systemName: "calendar")
    static let Share = Image(systemName: "square.and.arrow.up")
}

public final class Fonts {
    static let TitleFont = Font.system(size: 24, weight: .bold)
    static let DefaultTextFont = Font.system(size: 14, weight: .light)
    static let AccentTextFont = Font.system(size: 18, weight: .bold)
    static let EnlargedDefaultTextFont = Font.system(size: 18, weight: .light)
}

public final class Images {
    static let DefaultReviewImage = Image("DefaultReviewImage")
}
