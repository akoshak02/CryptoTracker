![Demo](https://i.imgur.com/xXVfkaF.png)

# Overview

Crypto Tracker allows users to track the prices of various cryptocurrencies in real-time. The application downloads live price data from an API, which provides up-to-date information about the market prices of various cryptocurrencies.

One of the key features of this app is its ability to save the user's current portfolio using CoreData. This means that users can keep track their investments in various cryptocurrencies over time, and monitor how their portfolio is performing.
<br>
<br>
# Features

 - Live cryptocurrency data
 - Saving current user's portfolio
 - Searching, filtering, sorting, and reloading data
 - Custom color theme and loading animation<br>
<br>

# Technical Features

 - MVVM Architecture
 - CoreData
 - FileManager for saving images
 - Combine
 - Multiple API calls
 - Codable (decoding JSON data)<br>
<br>

# How It Works?

 1. When a user opens Crypto Tracker, the app sends a request to the CoinGecko API, asking for information about all available cryptocurrencies.
 
 2. The CoinGecko API responds with a list of all cryptocurrencies, along with their details such as their current price, market capitalization, and trading volume.
 
 3. The app receives this data and organizes it into a user-friendly format, such as a list or a grid, that can be easily viewed and navigated by the user.

 4. The user can then select a specific cryptocurrency from the list, and your app sends another request to the CoinGecko API, asking for more detailed information about that specific cryptocurrency.

 5. The CoinGecko API responds with the requested information, and your app displays it to the user in a detailed view.

By using an API, Crypto Tracker is able to access up-to-date and accurate information about cryptocurrencies without having to manually update the data.
<br>
<br>
# Afterthought

The primary motivation for developing this app was for learning purposes and to have a reference for future projects. By building this app, I've gained valuable experience working with APIs and handling data, which can be applied to other projects in the future.
<br>
<br>
# Credits

CoinGecko API: https://www.coingecko.com/en/api

Swiftful Thinking Playlist: https://www.youtube.com/playlist?list=PLwvDm4Vfkdphbc3bgy_LpLRQ9DDfFGcFu
