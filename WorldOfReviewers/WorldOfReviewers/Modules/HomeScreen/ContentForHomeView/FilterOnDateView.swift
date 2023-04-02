//
//  FilterOnDateView.swift
//  WorldOfReviewers
//
//  Created by Alexandr Burtsev on 02.04.2023.
//

import SwiftUI

struct FilterOnDateView: View {
    var action: (() -> Void)?
    @Binding var date: Date

    var body: some View {
        DatePicker(selection: $date, displayedComponents: .date) {
            SystemImages.Calendar
                .padding(.horizontal, 10)
                .padding(.vertical, 10)
        }
        .datePickerStyle(.compact)
        .frame(maxWidth: .infinity, alignment: .center)
        .clipped()
        .background(Color.white)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        FilterOnDateView(date: .constant(Date.now))
    }
}
