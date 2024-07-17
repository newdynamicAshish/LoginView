//
//  AuthView.swift
//  LoginView
//
//  Created by Apple on 11/07/24.
//

import SwiftUI

struct AuthView: View {
    // login & signUp
    @State private var currentViewShowing: String = "login"
    
    var body: some View {
        
        if(currentViewShowing == "login"){
            ContentView(currentShowingView: $currentViewShowing)
                .preferredColorScheme(.light)
        }else{
            SignUpView(currentShowingView: $currentViewShowing)
                .preferredColorScheme(.dark)
                .transition(.move(edge: .bottom))
        }
    }
}

//#Preview {
//    AuthView()
//}
