//
//  TimezoneItems.swift
//  iosApp
//
//  Created by Márcio Oliveira on 12/04/2023.
//  Copyright © 2023 orgName. All rights reserved.
//

import SwiftUI
import shared

class TimezoneItems: ObservableObject {
  @Published var timezones: [String] = []
  @Published var selectedTimezones = Set<String>()

  init() {
      self.timezones = TimeZoneHelperImpl().getTimeZoneStrings()
  }
}
