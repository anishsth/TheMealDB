# TheMealDB

A simple project that fetch data from https://themealdb.com/api.php


# Description

It consists of two screens:
The homescreen list of meals in the dessert category.
On selection, it navigates to the receipe details of particular dessert.


# Getting started
1. Make sure you have the Xcode version 14.0 or above installed on your computer.
2. Download the TheMealDB project files from the repository.
3. Open the project files in Xcode.
4. Run the active scheme.

Both UIKit & SwiftUI version of code are added. (UIKit implementation bundled with enthusiasm to learn SwiftUI)
By default UIKit version gets installed in device.
To install SwiftUI version, please uncomment line number (23-25) in SceneDelegate.swift
For SwiftUI: In case SceneDelegate method doesn't get call, please refer this answer -> https://stackoverflow.com/a/67372349/9855456


# Design

Basic UI 


#API

List of API calls are here:
https://themealdb.com/api/json/v1/1/filter.php?c=Dessert for fetching the list of meals in the Dessert category.
https://themealdb.com/api/json/v1/1/lookup.php?i=MEAL_ID for fetching the meal details by its ID.

URLSession & Combine are being used
