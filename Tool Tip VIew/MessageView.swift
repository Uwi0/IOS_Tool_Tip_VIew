//
//  MessageView.swift
//  Tool Tip VIew
//
//  Created by dwi prasetyo on 29/08/24.
//

import SwiftUI

struct MessageView: View {
    let text: String
    
    var body: some View {
        Text(text)
            .font(.headline)
            .fontWeight(.bold)
            .foregroundStyle(.white)
            .padding()
            .background(Color.cyan.cornerRadius(5.0))
            .shadow(radius: 3)
    }
}

#Preview {
    MessageView(text: "hello world")
}
