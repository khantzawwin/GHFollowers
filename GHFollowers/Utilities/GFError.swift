//
//  ErrorMessage.swift
//  GHFollowers
//
//  Created by Khant Zaw Win on 24/10/21.
//

import Foundation

enum GFError: String, Error{
    case invalidUsername = "This username created an invalid request. Please try again."
    case unableToComplete = "Unable to complete your request. Please check your internet connection."
    case invliadResponse = "Invalid response from the server. Please try again."
    case invalidData = "Data received from the server was invalid. Please try again."
    case unableToFovorite = "There was an error foavoriting this user. Please try again."
    case alreadyInFavorites = "You've already favorited this user."
}
