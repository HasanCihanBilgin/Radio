//
//  RadioButtonView.swift
//  Radio
//
//  Created by Hasan Cihan Bilgin on 19.08.2024.
//



import SwiftUI

struct RadioButtonView: View {
    var label: String
    var isSelected: Bool
    var onTap: () -> Void

    var body: some View {
        HStack {
            Circle()
                .stroke(isSelected ? Color.blue : Color.gray, lineWidth: 2)
                .background(Circle().fill(isSelected ? Color.blue : Color.white))
                .frame(width: 20, height: 20)
                .onTapGesture {
                    onTap()
                }
            
            Text(label)
                .font(.body)
                .foregroundColor(isSelected ? Color.black : Color.gray)
                .onTapGesture {
                    onTap()
                }

            Spacer()
        }
        .padding(.vertical, 8)
    }
}
