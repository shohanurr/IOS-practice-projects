//
//  PrimaryButton.swift
//  SwiftUI-Weather
//
//  Created by Shohan's Mac on 2/10/23.
//

import SwiftUI

struct PrimaryButton: View {
    var btntext: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
        Text(btntext)
            .frame(width: 300, height: 54)
            .background(backgroundColor.gradient)
            .foregroundColor(textColor)
            .cornerRadius(12)
            .font(.system(size: 20, weight: .medium))    }
}
