//
//  Menu.swift
//  Little Lemon
//
//  Created by Vitaliy Iakushev on 29.01.2023.
//

import SwiftUI

struct Menu: View {
    var body: some View {
        VStack {
            Text("Little Lemon")
            Text("Chicago")
            Text("Some description")
            List {
                
            }
        }
    }
}

struct Menu_Previews: PreviewProvider {
    static var previews: some View {
        Menu()
    }
}
