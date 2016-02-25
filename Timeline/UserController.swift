//
//  UserController.swift
//  Timeline
//
//  Created by Alex Retter on 2/23/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation

class UserController {
    
    static let sharedInstance = UserController()

    
    let currentUser: User! = UserController.mockUsers()[0]
    

    static func userForIndentifier(identifier:String, completion: (user:User?) -> Void) {
        completion(user: mockUsers()[0])
        
    }
    
    static func userForIdentifier(identifier: String, completion: (user: User?) -> Void) {
    
    }
    
    static func fetchAllUsers(completion: (users: [User]) -> Void) {
        
    
    }
    
    static func followUser(user: User, completion: (success: Bool) -> Void) {
        completion(success: true)
        
    }
    
    static func unfollowUser(user: User, completion: (success: Bool) -> Void) {
    
        completion(success: true)
    }
    
    static func userFollowsUser(user1:User, user2: User, completion: (follows:Bool) -> Void) {
        
        completion(follows: true)
    }
    
    
     static func authenticateUser(email: String, password: String, completion: (success: Bool, user: User?) -> Void) {

 
    }
    
    static func createUser(email:String, username:String, password:String, bio:String?, url:String?, completion: (success:Bool, user:User?) -> Void) {
        
        
    }
    
    static func updateUser(user:User, username:String, bio:String?, url:String?, completion: (success:Bool, user:User?) -> Void) {
        
        
    }
    
    static func logOutCurrentUser() {
        
        
    }
    
    static func mockUsers() -> [User] {
        
        let user1 = User(username: "alexretter", bio: "siiick", url: "google.com", identifier: "1345134")
        let user2 = User(username: "prog", bio: "quinoa and chicken 4 lyfe", url: "bodybuilding.com", identifier: "31451345")
        let user3 = User(username: "johnstamos", bio: "full house", url: "abc.com", identifier: "431513")
        
        return [user1, user2, user3]
    }

}











