//
//  ListModifier.swift
//  iosApp
//
//  Created by Márcio Oliveira on 12/04/2023.
//  Copyright © 2023 orgName. All rights reserved.
//

import SwiftUI

struct ListModifier: ViewModifier {

    func body(content: Content) -> some View {
        if #available(iOS 15.0, *) {
            content
                .listRowInsets(.init())
                .listRowSeparator(.hidden)
        } else {
            content
        }
    }
}

extension View {
    func withListModifier() -> some View {
        modifier(ListModifier())
    }
}
