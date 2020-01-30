//
//  ContentView.swift
//  Lion-Link
//
//  Created by Sean Francis on 1/24/20.
//  Copyright © 2020 Sean Francis. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var image: String = "LionsLogo"
    @State var webSheet: Bool = false
    @State var powerSchoolSheet: Bool = false
    @State var pawPrintSheet: Bool = false
    @State var sportSheet: Bool = false
    @State var bullSheet: Bool = false
    @State var alert: Bool = true
    var body: some View {
        ZStack {
            Color.gray
                .edgesIgnoringSafeArea(.all)
            Text("Please give us feedback on Instagram at:\n @Intellectual_Mongoose")
                .foregroundColor(Color.black)
                .multilineTextAlignment(.trailing)
                .lineLimit(2)
                .padding(.top, 800)
            Text("Lion Link")
                    .font(.largeTitle)
                    .foregroundColor(Color.white)
                    .padding(.bottom, 650)
            Image("\(image)")
                .padding(.bottom, 250)
            Image ("PawPrint")
                .padding(.top, 350)
            Button(action: {
                self.powerSchoolSheet = true
            }) {
                Text("\nPower \nSchool\n")
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.black)
            }
            .padding(.top, 230)
            .padding(.trailing, 350)
            .rotationEffect(.degrees(-22))
            .sheet(isPresented: $powerSchoolSheet) {
                Webview(url: "https://accounts.powerschool.com/as/authorization.oauth2?redirect_uri=https%3A%2F%2Fclassroom.powerschool.com%2Fcallback&scope=openid%20profile&client_id=commonportal&response_type=code")
            }
            Button(action: {
                self.sportSheet = true
            }) {
                Text("\nSports \n \n")
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.black)
            }
            .padding(.top, 145)
            .padding(.leading, 130)
            .rotationEffect(.degrees(13))
         //   .sheet(isPresented: $sportSheet) {
           //     Sports()
      //      }
            Button(action: {
                self.bullSheet = true
                
            }) {
                Text("\nStudent \nInfo\n")
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.black)
            }
            .padding(.top, 130)
            .padding(.trailing, 140)
            .rotationEffect(.degrees(-13))
            .sheet(isPresented: $bullSheet) {
                StudentInfo()
            }
            Button(action: {
                self.pawPrintSheet = true
            }) {
                Text("\nPaw \nPrint\n")
                    .fontWeight(.semibold)
                    .foregroundColor(Color.black)
                    .multilineTextAlignment(.center)
            }
            .padding(.top, 220)
            .padding(.leading, 340)
            .rotationEffect(.degrees(22))
            .sheet(isPresented: $pawPrintSheet) {
                Webview(url: "https://sites.google.com/ksd.org/the-paw-print/home")
            }
            Button(action: {
                self.webSheet = true
            }) {
                Text("\nKennewick \nHigh Website               \n\n\n")
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.black)
            }
            .padding(.top, 540)
            .sheet(isPresented: $webSheet) {
                Webview(url: "https://kennewick.ksd.org")
            }
        .alert(isPresented: $alert) { () -> Alert in
                return Alert(title: Text("This is just a test"), message: Text("Just makeing sure the alerts work."), dismissButton: .default(Text("OK")))
        }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
