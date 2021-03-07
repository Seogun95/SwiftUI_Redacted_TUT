//
//  ContentView.swift
//  SwiftUI_Redacted_TUT
//
//  Created by 김선중 on 2021/03/07.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Image("mydog")
                .resizable()
                .frame(width: 140, height: 140)
                .clipShape(Circle())
            
            Text("서근")
                .font(.title)
                .fontWeight(.bold)
            
            Spacer().frame(height: 30)
            
            VStack(alignment: .leading, spacing: 12) {
                HStack {
                    Image(systemName: "envelope.circle.fill")
                        .renderingMode(.original)
                    Text("ksj083895@gmail.com")
                }
                HStack {
                    Image(systemName: "phone.circle.fill")
                        .renderingMode(.original)
                    Text("+82 10 1234 5678")
                }
                HStack {
                    Image(systemName: "network")
                        .foregroundColor(.yellow)
                    Text("seons-dev.tistory.com")
                }
                
            }
            
            Spacer().frame(height: 30)
            
            Button(action: {
                print("프로필을 업데이트 합니다.")
            }){
                Text("Update Profile")
                    .frame(width: 200, height: 40)
                    .background(Color.orange)
                    .cornerRadius(10)
                    .foregroundColor(.white)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
