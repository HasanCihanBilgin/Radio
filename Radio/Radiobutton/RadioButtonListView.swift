//
//  RadioButtonListView.swift
//  Radio
//
//  Created by Hasan Cihan Bilgin on 19.08.2024.
//

import SwiftUI

struct RadioButtonListView: View {
    @State private var selectedRadioIndex: Int? = nil
    let labels: [String] = [
        "Radio with Label",
        "Radio with Label",
        "Cap                    Radio with Label",
        "Cap                    Radio with Label",
        "Radio with Label              Radio with Label",
        "Radio with Label              Radio with Label"
    ]
    
    var body: some View {
        VStack(spacing: 16) {
            ForEach(labels.indices, id: \.self) { index in
                HStack {
                    RadioButton(isSelected: selectedRadioIndex == index) {
                        selectedRadioIndex = index
                    }
                    
                    if index == 2 || index == 3 {
                        HStack {
                            Text("Cap")
                                .foregroundColor(Color(red: 25/255, green: 28/255, blue: 36/255))
                            Spacer()
                            Text("Radio with Label")
                                .foregroundColor(Color(red: 76/255, green: 85/255, blue: 107/255))
                        }
                    } else if index == 4 || index == 5 {
                        HStack {
                            Text("Radio with Label")
                                .foregroundColor(Color(red: 76/255, green: 85/255, blue: 107/255))
                            Spacer()
                            Text("Radio with Label")
                                .foregroundColor(Color(red: 25/255, green: 28/255, blue: 36/255))
                        }
                    } else {
                        Text(labels[index])
                            .foregroundColor(Color(red: 25/255, green: 28/255, blue: 36/255))
                        Spacer()
                    }
                }
                Divider() // Her radyo düğmesinden sonra bir ayraç çizgisi ekleniyor
            }
        }
        .padding()
        .navigationTitle("Radio Buttons")
    }
}


struct RadioButton: View {
    var isSelected: Bool
    var action: () -> Void
    
    var body: some View {
        Button(action: {
            action()
        }) {
            Image(systemName: isSelected ? "largecircle.fill.circle" : "circle")
                .resizable()
                .frame(width: 24, height: 24)
                .foregroundColor(isSelected ? .blue : .gray)
        }
        .buttonStyle(PlainButtonStyle())
    }
}

struct RadioButtonListView_Previews: PreviewProvider {
    static var previews: some View {
        RadioButtonListView()
    }
}
