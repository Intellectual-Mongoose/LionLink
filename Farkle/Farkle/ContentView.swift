//
//  ContentView.swift
//  Farkle
//
//  Created by Sean on 1/28/20.
//  Copyright © 2020 Intellectual Mongoose. All rights reserved.
//

import SwiftUI



struct ContentView: View {
    
    
    @State var value1: Int = 6
    @State var value2: Int = 6
    @State var value3: Int = 6
    @State var value4: Int = 6
    @State var value5: Int = 6
    @State var value6: Int = 6
    
    @State var dieSpace1: Int = 0
    @State var dieSpace2: Int = 0
    @State var dieSpace3: Int = 0
    @State var dieSpace4: Int = 0
    @State var dieSpace5: Int = 0
    @State var dieSpace6: Int = 0
    
    
    
    
    var body: some View {
        
        ZStack {
            
            
            HStack {
            
                VStack {
                    Button(action: {
                        if self.value1 != 0 {
                            if self.dieSpace1 == 0 {
                                self.dieSpace1 = self.value1
                            }
                            else if self.dieSpace2 == 0 {
                                self.dieSpace2 = self.value2
                            }
                            else if self.dieSpace3 == 0 {
                                self.dieSpace3 = self.value3
                            }
                            else if self.dieSpace4 == 0 {
                                self.dieSpace4 = self.value4
                            }
                            else if self.dieSpace5 == 0 {
                                self.dieSpace5 = self.value5
                            }
                            else if self.dieSpace6 == 0 {
                                self.dieSpace6 = self.value6
                            }
                        }
                        self.value1 = 0
                    }) {
                        Image("die\(value1)")
                            .renderingMode(.original)
                        .padding()
                    }
                    Button(action: {
                        if self.value2 != 0 {
                            if self.dieSpace1 == 0 {
                                self.dieSpace1 = self.value1
                            }
                            else if self.dieSpace2 == 0 {
                                self.dieSpace2 = self.value2
                            }
                            else if self.dieSpace3 == 0 {
                                self.dieSpace3 = self.value3
                            }
                            else if self.dieSpace4 == 0 {
                                self.dieSpace4 = self.value4
                            }
                            else if self.dieSpace5 == 0 {
                                self.dieSpace5 = self.value5
                            }
                            else if self.dieSpace6 == 0 {
                                self.dieSpace6 = self.value6
                            }
                        }
                        self.value2 = 0
                    }) {
                        Image("die\(value2)")
                            .renderingMode(.original)
                        .padding()
                    }
                }
                .padding()
                VStack {
                    Button(action: {
                        if self.value3 != 0 {
                            if self.dieSpace1 == 0 {
                                self.dieSpace1 = self.value1
                            }
                            else if self.dieSpace2 == 0 {
                                self.dieSpace2 = self.value2
                            }
                            else if self.dieSpace3 == 0 {
                                self.dieSpace3 = self.value3
                            }
                            else if self.dieSpace4 == 0 {
                                self.dieSpace4 = self.value4
                            }
                            else if self.dieSpace5 == 0 {
                                self.dieSpace5 = self.value5
                            }
                            else if self.dieSpace6 == 0 {
                                self.dieSpace6 = self.value6
                            }
                        }
                        self.value3 = 0
                    }) {
                        Image("die\(value3)")
                            .renderingMode(.original)
                        .padding()
                    }
                    Button(action: {
                        if self.value4 != 0 {
                            if self.dieSpace1 == 0 {
                                self.dieSpace1 = self.value1
                            }
                            else if self.dieSpace2 == 0 {
                                self.dieSpace2 = self.value2
                            }
                            else if self.dieSpace3 == 0 {
                                self.dieSpace3 = self.value3
                            }
                            else if self.dieSpace4 == 0 {
                                self.dieSpace4 = self.value4
                            }
                            else if self.dieSpace5 == 0 {
                                self.dieSpace5 = self.value5
                            }
                            else if self.dieSpace6 == 0 {
                                self.dieSpace6 = self.value6
                            }
                        }
                        self.value4 = 0
                    }) {
                        Image("die\(value4)")
                            .renderingMode(.original)
                        .padding()
                    }
                }
                .padding()
                VStack {
                    Button(action: {
                        if self.value5 != 0 {
                            if self.dieSpace1 == 0 {
                                self.dieSpace1 = self.value1
                            }
                            else if self.dieSpace2 == 0 {
                                self.dieSpace2 = self.value2
                            }
                            else if self.dieSpace3 == 0 {
                                self.dieSpace3 = self.value3
                            }
                            else if self.dieSpace4 == 0 {
                                self.dieSpace4 = self.value4
                            }
                            else if self.dieSpace5 == 0 {
                                self.dieSpace5 = self.value5
                            }
                            else if self.dieSpace6 == 0 {
                                self.dieSpace6 = self.value6
                            }
                        }
                        self.value5 = 0
                    }) {
                        Image("die\(value5)")
                            .renderingMode(.original)
                        .padding()
                    }
                    Button(action: {
                        if self.value6 != 0 {
                            if self.dieSpace1 == 0 {
                                self.dieSpace1 = self.value1
                            }
                            else if self.dieSpace2 == 0 {
                                self.dieSpace2 = self.value2
                            }
                            else if self.dieSpace3 == 0 {
                                self.dieSpace3 = self.value3
                            }
                            else if self.dieSpace4 == 0 {
                                self.dieSpace4 = self.value4
                            }
                            else if self.dieSpace5 == 0 {
                                self.dieSpace5 = self.value5
                            }
                            else if self.dieSpace6 == 0 {
                                self.dieSpace6 = self.value6
                            }
                        }
                        self.value6 = 0
                    }) {
                        Image("die\(value6)")
                            .renderingMode(.original)
                        .padding()
                    }
                }
            .padding()
            }
            .padding(.bottom, 650)
            
            
            // Blank Die Spaces
            
            
            HStack {
                Button(action: {}) {
                    Image("die\(dieSpace1)")
                        .renderingMode(.original)
                }
                .padding()
                Button(action: {}) {
                    Image("die\(dieSpace2)")
                        .renderingMode(.original)
                }
                .padding()
                Button(action: {}) {
                    Image("die\(dieSpace3)")
                        .renderingMode(.original)
                }
                .padding()
                Button(action: {}) {
                    Image("die\(dieSpace4)")
                        .renderingMode(.original)
                }
                .padding()
                Button(action: {}) {
                    Image("die\(dieSpace5)")
                        .renderingMode(.original)
                }
                .padding()
                Button(action: {}) {
                    Image("die\(dieSpace6)")
                        .renderingMode(.original)
                }
                .padding()
                
            }
            .padding(.bottom, 200)
            
            
            
            
            
            
            
            
            
            Button(action: {
                if self.value1 != 0 {
                    self.value1 = Int.random(in: 1...6)
                }
                if self.value2 != 0 {
                    self.value2 = Int.random(in: 1...6)
                }
                if self.value3 != 0 {
                    self.value3 = Int.random(in: 1...6)
                }
                if self.value4 != 0 {
                    self.value4 = Int.random(in: 1...6)
                }
                if self.value5 != 0 {
                    self.value5 = Int.random(in: 1...6)
                }
                if self.value6 != 0 {
                    self.value6 = Int.random(in: 1...6)
                }
                
            }) {
                Text("Roll")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.black)
            }
            .padding(.vertical, 10)
            .padding(.horizontal, 20)
            .background(Color.green)
            .cornerRadius(30)
            
            
            
        }
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
