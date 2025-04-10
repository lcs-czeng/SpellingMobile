//
//  Filter.swift
//  SpellingMobile
//
//  Created by 曾梓恒 on 2025-04-10.
//

import Foundation

// Define the function

// name: filtering

// input:
//      the original array (originalList)
//      what to filter on (desiredOutcome)
// output: an array filtered based on outcome
func filtering(
    originalList: [Result],
    on desiredOutcome: Outcome
) -> [Result] {
    // Sequence (steps in order)
    
    // 0. See if the user selected "All results"
    if desiredOutcome == .undetermined {
        return originalList
    }
    
    // 1. Make a new array
    var filteredHistory: [Result] = []
    
    // 2. Iterate over each item in the original array
    //    and decide whether copy to the filteredHistory
    
    // "fooditem" point at each element in the array in turn
    for foodItem in originalList {
        
        // 3. decide whether to copy over
        // eg. say "desiredOutcome" is "correct"
        //     we will only copy over foodItems
        //     that user guessed correctly
        if foodItem.outcome == desiredOutcome {
            
            filteredHistory.append(foodItem)
            
            
        }
        
    }
    
    // Return the filtered array
    return filteredHistory
    
    
}

