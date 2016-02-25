//
//  PostController.swift
//  Timeline
//
//  Created by Alex Retter on 2/23/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation

class PostController {
    
    static func fetchTimelineForUser(user:User, completion: [Post] -> Void) {
   
    }
    
    static func addPost(image: String, caption:String?, completion: (success:Bool, post:Post?) -> Void) {
        
        
    }
    
    static func postFromIdentifier(identifier:String, completion: (post:Post?) -> Void) {
        
        
    }
    
    static func postsForUser(user:User, completion: ([Post]) -> Void) {
        
    }
    
    static func deletePost(post:Post) {
        
        
    }
    
    static func addCommentWithTextToPost(text:String, post:Post, completion: (success: Bool, post:Post?) -> Void) {
        
    }
    
    static func deleteComment(comment: Comment, completion: (success:Bool, post:Post?) -> Void) {
        
        
    }
    
    static func addLikeToPost(post:Post, completion: (success:Bool, post:Post?) -> Void) {
        
    
    }
    
    static func deleteLike(like:Like, completion: (success:Bool, post:Post?) -> Void) {
        
        
    }
    
    static func orderPosts(posts: [Post]) -> [Post] {
        
        return posts.sort({$0.0.identifier > $0.1.identifier})
    }
    
    static func mockPosts() -> [Post]{
        
        let post1 = Post(imageEndPoint: "15413", caption: "summertime", username: "alex", comments: "waddup", likes: 54, identifier: "fdga43534")
        let post2 = Post(imageEndPoint: "sdfasd", caption: "ballin", username: "alexretter", comments: "got the lambo", likes: 32, identifier: "fsdf34543")
        let post3 = Post(imageEndPoint: "34534", caption: "good eat", username: "alexretter", comments: "got the pchop", likes: 5454, identifier: "fdasdf5")
        
        return [post1, post2, post3]
    }

}