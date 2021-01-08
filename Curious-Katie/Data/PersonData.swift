//
//  PersonData.swift
//  Curious-Katie
//
//  Created by Ahmed Chishti on 12/16/20.
//

import Foundation

func getData() -> [[String]] {
    
    let persons = [
        
        ["Bill Gates", "Seattle", "65"],
        
        ["Jeff Bezos", "Albuquerque", "56"],
        
        ["Mark Zuckerberg", "San Francisco", "36"],
        
        ["Steve Jobs", "San Francisco", "56"],
        
        ["Tom Cruise", "Syracuse", "58"],
        
        ["Will Smith", "Philadephia", "52"],
        
        ["Johnny Depp", "Owensboro", "57"],
        
        ["Tom Holland", "London", "24"],
        
        ["Drake", "Toronto", "34"],
        
        ["Zayn Malik", "Bradford", "27"],
        
        ["Travis Scott", "Houston", "28"],
        
        ["Ahmed Chishti", "Luton", "15"]
        
    ]
    
    return persons
}

func getInterests() -> [String: [String]] {
    
    let interests = [
        
        "Bill Gates": ["Business", "Technology", "Philanthropy", "Microsoft", "Cooking"],
        
        "Jeff Bezos": ["Business", "Finance", "Technology", "Amazon", "Travel", "Social Media", "Money", "Innovation"],
        
        "Mark Zuckerberg": ["Facebook", "Technology", "Business", "Innovation", "Social Media", "Music", "News", "Money", "Video Games", "Sports"],
        
        "Steve Jobs": ["Apple", "Business", "Technology", "Finance", "Innovation"],
        
        "Tom Cruise": ["Acting", "Movies", "Sports", "Awards", "Aviation"],
        
        "Will Smith": ["Movies", "Acting", "Rap", "Awards", "Technology", "Clothing", "Basketball", "Dancing"],
        
        "Johnny Depp": ["Movies", "Acting", "Awards", "Politics", "Travel", "Cooking", "Dancing"],
        
        "Tom Holland": ["Movies", "Marvel", "Acting", "Awards", "Cooking", "Social Media"],
        
        "Drake": ["Music", "Rap", "Finance", "Sports", "Jewelry", "Dancing"],
        
        "Zayn Malik": ["Music", "Sports", "Awards", "Social Media", "Fashion"],
        
        "Travis Scott": ["Music", "Rap", "Social Media", "Awards", "Sneakers", "Money", "Fashion", "Video Games", "Jewelry", "Sports"],
        
        "Ahmed Chishti": ["Apple", "Technology", "Movies", "Social Media", "Travel", "Rap", "Video Games", "Sports", "Finance"]
        
    ]
    
    return interests
    
}

