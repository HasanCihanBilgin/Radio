//
//  ContentView.swift
//  Radio
//
//  Created by Hasan Cihan Bilgin on 19.08.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            RadioButtonListView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("")
    }
}
