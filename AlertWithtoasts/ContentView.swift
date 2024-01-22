//
//  ContentView.swift
//  AlertWithtoasts
//
//  Created by Kevin Martinez on 1/22/24.
//

import SwiftUI
import ToastUI

struct ContentView: View {
    
    @State private var showToast = false
    
    
    var body: some View {
        VStack {
            Spacer()
            Button {
                showToast.toggle()
            } label: {
                Text("Show Toast")
                    .bold()
                    .frame(width: 100, height: 50)
            }
            .tint(.blue)
            .buttonStyle(.bordered)
            .padding()
        }
        .toast(isPresented: $showToast, dismissAfter: 1.0) {
            ToastView {
                Text("This is a toast 🍞!")
            }
        }
        
    }
}

#Preview {
    ContentView()
}
