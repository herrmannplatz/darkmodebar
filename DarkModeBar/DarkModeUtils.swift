//
//  DarkModeToggle.swift
//  DarkModeBar
//
//  Created by rehez on 10.07.18.
//  Copyright © 2018 Rene Herrmann. All rights reserved.
//

import Cocoa

struct DarkModeUtils {
    
    private static let source = "tell application \"System Events\" to tell appearance preferences to set dark mode to not dark mode"
    
    static var mode = {
        return UserDefaults.standard.string(forKey: "AppleInterfaceStyle")
    }
    
    static func toggle() {
        NSAppleScript(source: source)?.executeAndReturnError(nil)
    }
    
}

