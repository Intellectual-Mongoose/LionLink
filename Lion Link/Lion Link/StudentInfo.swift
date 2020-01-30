//
//  StudentInfo.swift
//  KennewickConnectWithAC
//
//  Created by Sean on 1/24/20.
//  Copyright © 2020 Sean Francis. All rights reserved.
//

import SwiftUI

struct StudentInfo: View {
    @State var toggleBellSheet: Bool = false
    @State var toggleLunchSheet: Bool = false
    @State var toggleBulletin: Bool = false
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            Text("Swipe down from the top to go to home page.")
                .fontWeight(.semibold)
                .foregroundColor(Color.white)
                .padding(.bottom, 750)
            Image("LionsLogo")
                .padding(.bottom, 250)
            VStack {
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Button(action: {
                    self.toggleBellSheet = true
                }) {
                    Text("Bell Schedule")
                        .fontWeight(.semibold)
                        .foregroundColor(Color.black)
                }
                .padding(.all, 5)
                .background(Color.gray)
                .cornerRadius(20)
                .sheet(isPresented: $toggleBellSheet) {
                    Webview(url: "https://kennewick.ksd.org/apps/kennewick_documents/record/e0abb350b377f13f0e64b69366d964b4/bellscheduleswith2ndchancebreakfast1.pdf")
                }
                Spacer()
                Button(action: {
                    self.toggleLunchSheet = true
                }) {
                    Text("Lunch Menu")
                    .fontWeight(.semibold)
                    .foregroundColor(Color.black)
                }
                .padding(.all, 5)
                .background(Color.gray)
                .cornerRadius(20)
                Spacer()
                Button(action: {
                    self.toggleBulletin = true
                }) {
                    Text("School Bulletin")
                    .fontWeight(.semibold)
                    .foregroundColor(Color.black)
                }
                .padding(.all, 5)
                .background(Color.gray)
                .cornerRadius(20)
                .sheet(isPresented: $toggleBulletin) {
                    BulletinView()
                }
                Spacer()
            }
        }
    }
}
struct StudentInfo_Previews: PreviewProvider {
    static var previews: some View {
        StudentInfo()
    }
}
