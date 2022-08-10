//
//  CardView.swift
//  Honeymoon
//
//  Created by Abduqodir's MacPro on 2022/07/26.
//

import SwiftUI

struct CardView: View, Identifiable {
  //MARK: - Properties
  
  let id = UUID()
  var honeymoon: Destination
  
  //MARK: - Body
  var body: some View {
    Image(honeymoon.image)
      .resizable()
      .cornerRadius(24)
      .scaledToFit()
      .frame(minWidth: 0, maxWidth: .infinity)
      .overlay(alignment: .bottom) {
        VStack(alignment: .center, spacing: 12) {
          Text(honeymoon.place.uppercased())
            .foregroundColor(.white)
            .font(.largeTitle)
            .fontWeight(.bold)
            .shadow(radius: 1)
            .padding(.horizontal, 18)
            .padding(.vertical, 4)
            .overlay(alignment: .bottom) {
              Rectangle()
                .fill(Color.white)
                .frame(height: 1)
            }
          Text(honeymoon.country.uppercased())
            .foregroundColor(.black)
            .font(.footnote)
            .fontWeight(.bold)
            .frame(minWidth: 85)
            .padding(.horizontal, 10)
            .padding(.vertical, 5)
            .background(
              Capsule()
                .fill(Color.white)
            )
        } //: VStack
        .frame(minWidth: 280)
        .padding(.bottom, 50)
      } //: overlay
  } //: body
} //: CardView

//MARK: - Preview
struct CardView_Previews: PreviewProvider {
  static var previews: some View {
    CardView(honeymoon: honeymoonData[0])
      .previewLayout(.fixed(width: 375, height: 600))
  }
}
