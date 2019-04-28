//
//  UITableViewModelContent.swift
//  testingPods
//
//  Created by Lainel John Dela Cruz on 28/04/2019.
//  Copyright © 2019 Lainel John Dela Cruz. All rights reserved.
//

import Foundation

import ObjectMapper

public class UITableViewModelContent:Mappable{
    public var label:String!;
    public var backgroundImage:String!;
    public var ratings:Double!;
    public init(){
        self.label="";
        self.backgroundImage="";
        self.ratings=0;
    }
    public convenience init(label:String, bgimage:String, ratings:Double){
        self.init();
        self.label=label;
        self.backgroundImage=bgimage;
        self.ratings=ratings;
    }
    public required init?(map: Map) {
    }
    public func mapping(map: Map) {
    }
    public static func initStubData()->[UITableViewModelContent]{
        var list:[UITableViewModelContent]=[];
        list.append(UITableViewModelContent(label: "Avengers End game", bgimage: "sample_movie_desc", ratings: 9.0))
        list.append(UITableViewModelContent(label: "Spiderman away from home", bgimage: "sample_movie_desc", ratings: 9.0))
        return list;
    }
    
    
}
