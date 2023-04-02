//
//  ReviewesSearchResultView.swift
//  WorldOfReviewers
//
//  Created by Alexandr Burtsev on 02.04.2023.
//

import SwiftUI

struct ReviewesSearchResultView: View {
    var defaultMessage: String
    var reviewes: [Review]

    var body: some View {
        if reviewes.isEmpty {
            Text(defaultMessage)
        } else {
            ScrollView() {
                ForEach(reviewes) { review in
                    ReviewView(review: review)
                }
            }
        }
    }
}

private struct ReviewView: View {
    var review: Review

    var body: some View {
        HStack(alignment: .center, spacing: 10) {
            if let image = review.image {
                image
                    .resizable()
                    .cornerRadius(10)
                    .frame(width: 150)
            } else {
                Images.DefaultReviewImage
                    .resizable()
                    .cornerRadius(10)
                    .frame(width: 150)
            }

            VStack(alignment: .leading, spacing: 10) {
                Text(review.title)
                    .foregroundColor(.black)
                    .font(Fonts.TitleFont)

                Text(review.text)
                    .lineLimit(nil)

                Text(review.author)
                    .foregroundColor(.black)
                    .font(Fonts.AccentTextFont)

                HStack(spacing: 20) {
                    Text(review.date)

                    Text(review.time)

                    Spacer()

                    SystemImages.Share
                        .padding(.horizontal, 10)
                        .foregroundColor(.black)
                        .font(Fonts.AccentTextFont)
                }
            }
        }
        .font(Fonts.DefaultTextFont)
        .foregroundColor(Colors.NotAccentTextColor)
        .frame(maxWidth: .infinity, maxHeight: 200)
    }
}

struct ReviewesSearchResultView_Previews: PreviewProvider {
    static var previews: some View {
        ReviewesSearchResultView(
            defaultMessage: "No search found",
            reviewes: [
                Review(
                    text: "asdfasfasfasfasfasdfsadfasfsafdsafasfdsafasfdasfdasdfsdfasdfasdfasdfasdfasdfasdfasfasdfasdfasdfsadfasdfasdfasdfasdfasdfasdfasdfasdfasdfadsfadf",
                    title: "Soufra",
                    date: "2017/23/1",
                    time: "12:23:12",
                    author: "asdf adfadf")
            ])
    }
}
