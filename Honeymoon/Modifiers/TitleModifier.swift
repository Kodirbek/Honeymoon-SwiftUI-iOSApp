//
//  TitleModifier.swift
//  Honeymoon
//
//  Created by Abduqodir's MacPro on 2022/07/26.
//

import SwiftUI

struct TitleModifier: ViewModifier {
  func body(content: Content) -> some View {
    content
      .font(.largeTitle)
      .foregroundColor(.pink)
  }
}


