//
//  MenuController.swift
//  DarkModeBar
//
//  Created by rehez on 10.07.18.
//  Copyright © 2018 Rene Herrmann. All rights reserved.
//

import Cocoa

class MenuController: NSObject {
    
    @IBOutlet weak var statusMenu: NSMenu!
    
    let statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
   
   override func awakeFromNib() {
        let icon = NSImage(named: NSImage.Name(rawValue: "TrayIcon"))
        icon?.isTemplate = true
        statusItem.image = icon
        statusItem.menu = statusMenu
    }
    
    @IBAction func quitClicked(_ sender: NSMenuItem) {
        NSApplication.shared.terminate(self)
    }
    
    @IBAction func toggleClicked(_ sender: NSMenuItem) {
        DarkModeUtils.toggle()
    }

}
