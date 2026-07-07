# Scavenger Hunt App

## Overview

The **Scavenger Hunt App** is an iOS application developed in **SwiftUI** using the **Model-View-ViewModel (MVVM)** architecture. The app allows users to participate in a virtual scavenger hunt by locating hidden items, viewing clues, marking items as found, tracking their progress, and earning rewards based on the number of completed items.

This project was created as part of an iOS development assignment to demonstrate SwiftUI concepts including NavigationStack, Lists, state management, MVVM, Photo Picker integration, and reusable views.

---

## Features

* Display 10 scavenger hunt items
* View clues for each hidden item
* Select or take a photo using PhotosPicker
* Mark items as found
* Track hunt progress
* Automatic reward calculation
* Results summary screen
* Navigation using NavigationStack
* MVVM architecture
* Reusable SwiftUI views

---

## Reward System

| Items Found | Reward                           |
| ----------- | -------------------------------- |
| 0–4         | No Reward                        |
| 5–6         | 10% Discount                     |
| 7–9         | 20% Discount                     |
| 10          | 20% Discount + Grand Prize Entry |

---

## App Structure

```
ScavengerHunt
│
├── Models
│   └── HuntItem.swift
│
├── ViewModels
│   └── HuntViewModel.swift
│
├── Views
│   ├── HomeView.swift
│   ├── HuntListView.swift
│   ├── ItemRowView.swift
│   ├── ItemDetailView.swift
│   ├── RewardView.swift
│   └── ResultsView.swift
│
├── Assets.xcassets
├── ScavengerHuntApp.swift
└── README.md
```

---

## Technologies Used

* Swift 5
* SwiftUI
* MVVM Architecture
* NavigationStack
* PhotosPicker
* Xcode 16
* Git & GitHub

---

## Screens

The application contains the following screens:

* Home Screen
* Hunt Item List
* Item Detail
* Results Screen

## Screenshots

### Home Screen
!## Screenshots

### Home Screen
!<img width="407" height="738" alt="HOME SCREEN" src="https://github.com/user-attachments/assets/17dec97b-7115-4f67-a3e0-72e1162f03f1" />


### Hunt List
![Hunt List](Screenshots/HuntList.png)

### Item Detail
![Item Detail](Screenshots/ItemDetail.png)

### Results
![Results](Screenshots/Results.png)

### Hunt List
![Hunt List](Screenshots/HuntList.png)

### Item Detail
![Item Detail](Screenshots/ItemDetail.png)

### Results
![Results](Screenshots/Results.png)


---

## How to Run

1. Clone this repository.
2. Open **ScavengerHunt.xcodeproj** in Xcode.
3. Select an iPhone Simulator.
4. Press **Run (⌘R)**.

---

## Learning Outcomes

This project demonstrates the following SwiftUI concepts:

* MVVM Architecture
* NavigationStack
* Lists
* Custom Views
* ObservableObject
* State Management
* Data Binding
* PhotosPicker
* Conditional Views
* Arrays and Data Models

---

## Future Improvements

Potential enhancements include:

* Save hunt progress using local storage.
* Upload completed hunt results to an online server.
* Display the selected photo after an item is marked as found.
* Add location services using MapKit.
* Include animations and sound effects.
* Generate a unique discount code after completion.

---

## GitHub

This project is version controlled using Git and hosted on GitHub.

---

## Author

**Nigel Kallan**

iOS Development – Assignment 4

Built with SwiftUI and MVVM Architecture.
