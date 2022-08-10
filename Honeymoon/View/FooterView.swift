//
//  FooterView.swift
//  Honeymoon
//
//  Created by Abduqodir's MacPro on 2022/07/26.
//

import SwiftUI

struct FooterView: View {
  //MARK: - Properties
  
  @Binding var showBookingAlert: Bool
  let haptics = UINotificationFeedbackGenerator()
  
  //MARK: - Body
  var body: some View {
    HStack {
      Image(systemName: "xmark.circle")
        .font(.system(size: 42, weight: .light))
      
      Spacer()
      
      Button {
        playSound(sound: "sound-click", type: "mp3")
        haptics.notificationOccurred(.success)
        showBookingAlert.toggle()
      } label: {
        Text("Book destination".uppercased())
          .font(.system(.subheadline, design: .rounded))
          .fontWeight(.heavy)
          .padding(.horizontal, 20)
          .padding(.vertical, 12)
          .tint(.pink)
          .background(
            Capsule().stroke(Color.pink, lineWidth: 2)
          )
      }

      
      Spacer()
      
      Image(systemName: "heart.circle")
        .font(.system(size: 42, weight: .light))
    } //: HStack
    .padding()
  }
}

struct FooterView_Previews: PreviewProvider {
  @State static var showAlert: Bool = false
  static var previews: some View {
    FooterView(showBookingAlert: $showAlert)
      .previewLayout(.fixed(width: 375, height: 80))
  }
}
