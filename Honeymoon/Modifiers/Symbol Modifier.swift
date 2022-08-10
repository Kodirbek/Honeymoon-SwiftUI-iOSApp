//
//  Symbol Modifier.swift
//  Honeymoon
//
//  Created by Abduqodir's MacPro on 2022/08/01.
//

import SwiftUI

struct Symbol_Modifier: ViewModifier {
  func body(content: Content) -> some View {
    content
      .foregroundColor(.white)
      .font(.system(size: 128))
      .shadow(color: Color(UIColor(red: 0, green: 0, blue: 0, alpha: 0.2)), radius: 12, x: 0, y: 0)
  }
}


