//
//  PersonViewModel.swift
//  Curious-Katie
//
//  Created by Ahmed Chishti on 12/11/20.


import Foundation

// Used struct instead of class because copying is much safer than having multiple references to the same instance as happens with classes.

struct Katie {
    
    private var persons : [[String]]
    private var interests: [String: [String]]
    private var participants = [Person]()
    
    init() {
        self.persons = getData()
        self.interests = getInterests()
    }
    // Sends data to console
    
    func sendData() -> [[String]] {
        
        return persons
        
    }
    
    // Gets participants, makes sure that at minimum 2 participants are used and at max 12 participants are used.
    
    mutating func getParticipants() {
        let cutoff = (2...12).randomElement() ?? 12
        var count = 0
        for participant in persons {
            if count < cutoff {
                defer { count += 1 }
                let thisParticipant =
                    Person(name: participant[0],
                           hometown: participant[1],
                           age: participant[2],
                           interest: interests[participant[0]]!)
                participants.append(thisParticipant)
            } else {
                break
            }
            
        }
    }
    // Katie asks for introduction
    
    func introduceParticipants() {
        print("Katie: Please introduce yourselves...\n")
        for participant in participants {
            print("Hi, my name is \(participant.name), I'm \(participant.age) and I grew up in \(participant.hometown).", "\n")
        }
    }
    
    // Iterates through the interests until all participants have been used
    
    func iterateInterests() {
        var participants = self.participants
        while !participants.isEmpty {
            participants.shuffle()
            let person = participants[0]
            
            
            if person.interest.isEmpty {
                participants.remove(at: 0)
                continue
            }
            
            // Removes random interest
            participants[0].interest.shuffle()
            let randomInterest = participants[0].interest.removeFirst()
            
            print("Katie: \(person.name), tell me an interest of yours.\n")
            
            print("\(person.name): I like \(randomInterest).\n")
            
        }
        print("Katie: Thank you for sharing your interests.\n")
    }
    
    // Pairs up the participants and interests
    
    func pairInterests() {
        var matches: [[Person]: [String]] = [:]
        var participants = self.participants
        
        while !participants.isEmpty {
            participants.shuffle()
            let person = participants.removeFirst()
            
            var candidates = self.participants
            while !candidates.isEmpty {
                candidates.shuffle()
                let candidate = candidates[0]
                
                // Prevents duplicate pairings
                
                func sortPair  (lhs: Person, rhs: Person) -> Bool {
                    lhs.name < rhs.name
                }
                
                // Forms difference by comparing both candidate and person interests
                let pair = [person, candidate].sorted(by: sortPair)
                var difference: [String] = []
                
                if matches[pair] == nil {
                    for interest in person.interest
                    where !candidate.interest.contains(interest) {
                        difference+=[interest]
                    }
                    for interest in candidate.interest
                    where !person.interest.contains(interest) {
                        difference+=[interest]
                    }
                    if !difference.isEmpty {
                        matches.updateValue(difference, forKey: pair)
                    }
                }
                candidates.remove(at: 0)
            }
        }
        
        for (pair, interests) in matches {
            print(
                """
                Katie: \(pair[0].name) please gather with \(pair[1].name) \
                and discuss \(interests.joined(separator: ", ")).\n
                """
            )
        }
    }
    
    // Katie says thanks for participating
    
    func sayThanks() {
        print("Katie: Thank you all for participating.")
        
        // Gets interests for each person from the data model
        
        func getPersonInterests(name: String) -> [String]? {
            if let interest = interests[name] {
                return interest
            }
            
            return nil
            
        }
        
        // Gets participant names from the data model
        
        func getParticipantNames() -> [String] {
            var names = [String]()
            
            for participant in participants {
                
                names.append(participant.name)
                
            }
            
            return names
        }
    }
}
