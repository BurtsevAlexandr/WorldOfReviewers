//
//  HomeView.swift
//  WorldOfReviewers
//
//  Created by Alexandr Burtsev on 02.04.2023.
//

import SwiftUI

enum DisplayedContent: Hashable {
    case reviewes
    case critics
}

struct HomeView: View {
    @State var displayedContent: DisplayedContent = .reviewes
    @State var searchText: String = ""
    @State var date = Date.now

    var body: some View {
        VStack(alignment: .leading, spacing: 25) {
            Header(displayedContent: $displayedContent)

            SearchBar(searchText: $searchText)
                .padding(.horizontal, 40)

            switch displayedContent {
            case .reviewes:
                VStack(alignment: .center, spacing: 25) {
                    FilterOnDateView(date: $date)
                        .padding(.horizontal, 40)
                }
            case .critics:
                EmptyView()
            }

            Spacer()
        }
        .foregroundColor(.black)
        .font(Fonts.DefaultTextFont)
        .background(Colors.BackgroundColor)
    }
}

private struct Header: View {
    @Binding var displayedContent: DisplayedContent

    var headerColor: Color {
        switch displayedContent {
        case .reviewes:
            return Colors.ReviewesHeaderColor
        case .critics:
            return Colors.CriticsHeaderColor
        }
    }

    var body: some View {
        VStack(alignment: .center, spacing: 25) {
            Text("Reviewes")
                .foregroundColor(.white)
                .font(Fonts.TitleFont)
                .padding(.top, 70)

            Picker("Displayed Content", selection: $displayedContent) {
                Text("Reviwes")
                    .tag(DisplayedContent.reviewes)
                Text("Critics")
                    .tag(DisplayedContent.critics)
            }
            .font(Fonts.AccentTextFont)
            .padding(.horizontal, 10)
            .pickerStyle(.segmented)
            .background(headerColor)
        }
        .ignoresSafeArea()
        .frame(maxWidth: .infinity, maxHeight: 100, alignment: .leading)
        .background(headerColor)
    }
}

struct SearchBar: View {
    @Binding var searchText: String
    @State private var isEditing = false
    @FocusState private var focusOnSearchTextField: Bool
 
    var body: some View {
        HStack(alignment: .center, spacing: 0) {
            HStack(alignment: .center, spacing: 0) {
                SystemImages.Magnifyingglass
                    .padding(.horizontal, 10)
                    .onTapGesture {
                    }

                TextField("Enter the text", text: $searchText)
                    .padding(.vertical, 10)
            }
            .font(Fonts.EnlargedDefaultTextFont)
            .focused($focusOnSearchTextField)
            .background(Color.white)
            .submitLabel(.done)
            .onSubmit {
                focusOnSearchTextField = false
            }

            if focusOnSearchTextField {
                Button(action: {
                    self.isEditing = false
                    hideKeyboard()
                }) {
                    Text("Cancel")
                        .foregroundColor(Color.blue)
                        .font(Fonts.EnlargedDefaultTextFont)
                }
                .padding(.leading, 10)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
