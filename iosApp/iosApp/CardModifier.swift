//
//  CardModifier.swift
//  iosApp
//
//  Created by Márcio Oliveira on 12/04/2023.
//  Copyright © 2023 orgName. All rights reserved.
//

import SwiftUI

struct CardModifier: ViewModifier {
  func body(content: Content) -> some View {
    content
      .cornerRadius(16)
      .shadow(color: Color.black.opacity(0.2), radius: 16, x: 0, y: 0)
  }
}
