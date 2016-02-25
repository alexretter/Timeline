//
//  Post.swift
//  Timeline
//
//  Created by Alex Retter on 2/23/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation

struct Post: Equatable {
    let imageEndPoint: String
    let caption:String
    let username:String
    let comments:[String]
    let likes:[Int]
    let identifier:String?
    
    init(imageEndPoint:String, caption:String, username:String,comments:String,likes:Int, identifier:String?) {
        
        self.imageEndPoint = imageEndPoint
        self.caption = caption
        self.username = username
        self.comments = [comments]
        self.likes = [likes]
        self.identifier = nil
    }
    
}

func == (lhs:Post, rhs:Post) -> Bool {
    
  return lhs.username == rhs.username && lhs.identifier == rhs.identifier
    
}