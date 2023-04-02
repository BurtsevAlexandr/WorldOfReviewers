//
//  ViewExtensions.swift
//  WorldOfReviewers
//
//  Created by Alexandr Burtsev on 02.04.2023.
//

import Foundation
import SwiftUI

extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
