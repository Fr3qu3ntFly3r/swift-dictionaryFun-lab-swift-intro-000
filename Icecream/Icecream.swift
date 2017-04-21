//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    
    var favoriteFlavorsOfIceCream: [String : String] = ["Joe": "Peanut Butter and Chocolate",
                                            "Tim": "Natural Vanilla",
                                            "Sophie": "Mexican Chocolate",
                                            "Deniz": "Natural Vanilla",
                                            "Tom": "Mexican Chocolate",
                                            "Jim": "Natural Vanilla",
                                            "Susan": "Cookies 'N' Cream"]
    
    
    
    // 2.
    
    func names(forFlavor: String) -> [String] {
        var names:[String] = []
        
        for (name, flavor) in favoriteFlavorsOfIceCream {
            if flavor == forFlavor {
                names.append(name)
            }
        }
        
        return names
    }
    
    
    
    
    // 3.
    
    
    func count(forFlavor: String) -> Int {
        var flavorCount = 0
        
        for (_, flavor) in favoriteFlavorsOfIceCream {
            if flavor == forFlavor {
                flavorCount += 1
            }
        }
        
        return flavorCount
    }
    
    
    
    
    // 4.
   
    func flavor(forPerson: String) -> String? {
        
        var flavorForPerson: String?
        
        for (name, flavor) in favoriteFlavorsOfIceCream {
            if name == forPerson {
                flavorForPerson = flavor
            }
        }
        
        return flavorForPerson
    }
    
    
    
    
    
    // 5.
   
    func replace(flavor: String, forPerson: String) -> Bool {
        var flavorChanged = false
        
        for (name, _) in favoriteFlavorsOfIceCream {
            if name == forPerson {
                favoriteFlavorsOfIceCream.updateValue(flavor, forKey: name)
                
                flavorChanged = true
            }
        }
        
        return flavorChanged
    }
    
    
    
    
    
    // 6.
    
    func remove(person: String) -> Bool {
        var personRemoved = false
        
        for (name, _) in favoriteFlavorsOfIceCream {
            if name == person {
                favoriteFlavorsOfIceCream.removeValue(forKey: name)
                personRemoved = true
            }
        }
        
        return personRemoved
    }
    
    
    
    
    
    
    // 7.
    
    
    func numberOfAttendees() -> Int {
        
        
        
        
        return favoriteFlavorsOfIceCream.count
    }
    
    
    
    
    
    // 8.
    
    func add(person: String, withFlavor: String) -> Bool {
        
        var alreadyOnList = false
        
        for (name, _) in favoriteFlavorsOfIceCream {
            if name == person {
                alreadyOnList = true
            }
            
            
        }
        
        if alreadyOnList == false {
            favoriteFlavorsOfIceCream[person] = withFlavor
        }
        
        return !alreadyOnList
    }
    
    
    
    
    
    
    
    // 9.
    
    func attendeeList() -> String {
        var listString: String = ""
        var list: [String] = []
        
        for (name, flavor) in favoriteFlavorsOfIceCream {
            list.append("\(name) likes \(flavor)")
        }
        
        for entry in list.sorted() {
            if entry == list.sorted()[list.count - 1] {
                listString += "\(entry)"
            } else {
            
            listString += "\(entry)\n"
            }
        }
        
        return listString
    }
    
    
    
    
    
    

}
