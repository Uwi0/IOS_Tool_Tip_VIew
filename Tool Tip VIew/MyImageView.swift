//
//  MyImageView.swift
//  Tool Tip VIew
//
//  Created by dwi prasetyo on 29/08/24.
//

import SwiftUI

struct MyImageView: View {
    var body: some View {
        Image("imgPurpleLightening")
            .resizable()
            .scaledToFit()
            .cornerRadius(10)
            .shadow(radius: 5)
    }
}

#Preview {
    MyImageView()
}
