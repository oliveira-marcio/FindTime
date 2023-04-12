//
//  Utils.swift
//  iosApp
//
//  Created by Márcio Oliveira on 12/04/2023.
//  Copyright © 2023 orgName. All rights reserved.
//

import Foundation

extension DateFormatter {
    static let short: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .none
        formatter.timeStyle = .short
        return formatter
    }()
    static let long: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        formatter.timeStyle = .none
        return formatter
    }()
}
