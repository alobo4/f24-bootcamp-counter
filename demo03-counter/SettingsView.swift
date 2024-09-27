//
//  SettingsView.swift
//  demo03-counter
//
//  Created by Alec Lobanov on 9/24/24.
//

import SwiftUI

struct SettingsView: View {
    @Binding var maxCount: Int
    var body: some View {
        Stepper("Max Count: \(maxCount)",value: $maxCount)
            .font(.title)
            .padding()
            .background(Color.white, in: .rect(cornerRadius: 10))
            .padding()
    }
}

#Preview {
    SettingsView(maxCount: .constant(10))
}
