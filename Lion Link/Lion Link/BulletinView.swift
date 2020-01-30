//
//  BulletinView.swift
//  KennewickConnectWithAC
//
//  Created by Sean on 1/25/20.
//  Copyright © 2020 Sean Francis. All rights reserved.
//

import SwiftUI


// The Buttons aren't working in this scene


struct BulletinView: View {
    @State var pdfView: Bool = false
    @State var vidView: Bool = false
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            Image("LionsLogo")
                .padding(.bottom,250)
            Text("Swipe down from top to go back.")
                .fontWeight(.semibold)
                .foregroundColor(Color.white)
                .padding(.bottom, 750)
            Text("Sean is the absolute best!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n")
                .foregroundColor(Color(red: 0.939, green: 0.408, blue: 0.148))
                .background(Color(red: 0.939, green: 0.408, blue: 0.148))
                .padding(.bottom, 650)
            Text("School Bulletin")
                .foregroundColor(Color.black)
                .fontWeight(.bold)

                .padding(.bottom, 650)
            VStack {
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Button(action: {
                    self.pdfView = true
                }) {
                    Text("Bulletin PDF")
                        .fontWeight(.semibold)
                        .foregroundColor(Color.black)
                }
                    .padding(.all, 5)
                    .background(Color.gray)
                    .cornerRadius(30)
                .sheet(isPresented: $pdfView) {
                    Webview(url: "https://kennewick.ksd.org/apps/kennewick_documents/record/af3ffe749834a3c3b1cb67d69adc1702/bulletin12720.pdf")
                }
                Spacer()
                Button(action: {
                    self.vidView = true
                }) {
                    Text("$68 Pie")
                        .fontWeight(.semibold)
                        .foregroundColor(Color.black)
                }
                    .padding(.all, 5)
                    .background(Color.gray)
                    .cornerRadius(30)
                .sheet(isPresented: $vidView) {
                    Webview(url: "https://www.youtube.com/watch?v=W2RvL4VbOAA")
                }
                Spacer()
            }
        }
    }
}
struct BulletinView_Previews: PreviewProvider {
    static var previews: some View {
        BulletinView()
    }
}
