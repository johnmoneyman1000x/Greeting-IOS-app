//
//  LanguageOptionsView.swift
//  Greetings
//
//  Created by John Ming Yuk Ma on 9/29/24.
//

import SwiftUI

struct LanguageOptionsTapView: View {
    @Binding var language: String
    @Binding var layoutDirectionString: String
    var body: some View {
        Menu {
            Button("English") {
                language = "en"
                layoutDirectionString = LEFT_TO_RIGHT
            }
            
            Button("Spanish") {
                language = "es"
                layoutDirectionString = LEFT_TO_RIGHT
            }
            
            Button("Chinese-HK") {
                language = "zh-HK"
                layoutDirectionString = LEFT_TO_RIGHT
            }
            
            Button("Chinese-Simplified") {
                language = "zh-Hans"
                layoutDirectionString = LEFT_TO_RIGHT
            }
            
            Button("French") {
                language = "Fr"
                layoutDirectionString = LEFT_TO_RIGHT
            }

        } label: {
            Image(systemName: "gearshape.fill")
                .foregroundStyle(.black)
        }


    }
}



//struct LanguageOptionsView: View {
//    @Binding var language: String
//    @Binding var layoutDirectionString: String
//    var body: some View {
//        Image(systemName: "gearshape.fill")
//            .contextMenu{
//                Button("English") {
//                    language = "en"
//                    layoutDirectionString = LEFT_TO_RIGHT
//                }
//                
//                Button("Spanish") {
//                    language = "es"
//                    layoutDirectionString = LEFT_TO_RIGHT
//                }
//                
//                Button("Chinese-HK") {
//                    language = "zh-HK"
//                    layoutDirectionString = LEFT_TO_RIGHT
//                }
//                
//                Button("Chinese-Simplified") {
//                    language = "zh-Hans"
//                    layoutDirectionString = LEFT_TO_RIGHT
//                }
//                
//                Button("French") {
//                    language = "Fr"
//                    layoutDirectionString = LEFT_TO_RIGHT
//                }
//            }
//    }
//}

#Preview {
    LanguageOptionsTapView(language: .constant("en"), layoutDirectionString: .constant(LEFT_TO_RIGHT))
}
