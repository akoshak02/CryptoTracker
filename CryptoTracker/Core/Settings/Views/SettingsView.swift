//
//  SettingsView.swift
//  CryptoTracker
//
//  Created by Abdulkarim Koshak on 3/24/23.
//

import SwiftUI

struct SettingsView: View {
    
    let youtubeURL = URL(string: "https://www.youtube.com/playlist?list=PLwvDm4Vfkdphbc3bgy_LpLRQ9DDfFGcFu")!
    let coinGeckoURL = URL(string: "https://www.coingecko.com")!
    let projectURL = URL(string: "https://www.github.com/abdulkarim-koshak")!
    let personalURL = URL(string: "https://www.github.com/abdulkarim-koshak")!

    var body: some View {
        NavigationStack {
            ZStack {
                // background
                Color.theme.background
                    .ignoresSafeArea()
                
                // content
                List {
                    swiftfulThinkingSection
                        .listRowBackground(Color.theme.background.opacity(0.5))
                    coinGeckoSection
                        .listRowBackground(Color.theme.background.opacity(0.5))
                    developerSection
                        .listRowBackground(Color.theme.background.opacity(0.5))
                    applicationSection
                        .listRowBackground(Color.theme.background.opacity(0.5))
                }
            }
            .tint(.blue)
            .listStyle(GroupedListStyle())
            .navigationTitle("Settings")
            .navigationBarTitleDisplayMode(.large)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    XMarkButton()
                }
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

extension SettingsView {
    
    private var swiftfulThinkingSection: some View {
        Section {
            VStack(alignment: .leading) {
                Image("logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                
                Text("The following app was made by following a @SwiftfulThinking course on YouTube. It uses MVVM Architecture, Combine, and CoreData.")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical)
            
            Link("YouTube Playlist", destination: youtubeURL)
        } header: {
            Text("About CryptoTracker")
        }
    }
    
    private var coinGeckoSection: some View {
        Section {
            VStack(alignment: .leading) {
                Image("coingecko")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                
                Text("CryptoTracker is receiving real-time information about the current value, trading volume, and other important metrics for various cryptocurrencies directly from CoinGecko.")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical)
            
            Link("Visit CoinGecko", destination: coinGeckoURL)
        } header: {
            Text("CoinGecko")
        }
    }
    
    private var developerSection: some View {
        Section {
            VStack(alignment: .leading) {
                Image("github")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                
                Text("\nCryptoTracker is an open source project, which means that anyone can view and contribute to the source code on GitHub. This provides complete transparency on how our app works and ensures that it is reliable and secure.")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
                
                Text("\nIf you're interested in exploring the codebase, or even contributing to the project, head over to our GitHub repository and take a look. We appreciate any feedback or suggestions you might have to improve our app!")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical)
            
            Link("Visit Source Code", destination: projectURL)
            Link("Visit Developer Page", destination: personalURL)
        } header: {
            Text("Developer")
        }
    }
    
    private var applicationSection: some View {
        Section {
            Text("Privacy policy")
            
            Text("Terms & conditions")
            
            Text("Help & support")
        } header: {
            Text("Application")
        }
    }
    
}
