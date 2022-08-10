//
//  ButtonModifier.swift
//  Honeymoon
//
//  Created by Abduqodir's MacPro on 2022/07/26.
//

import SwiftUI

struct ButtonModifier: ViewModifier {
  func body(content: Content) -> some View {
    content
      .font(.headline)
      .padding()
      .frame(minWidth: 0, maxWidth: .infinity)
      .background(
        Capsule().fill(.pink)
      )
      .foregroundColor(.white)
  }
}
