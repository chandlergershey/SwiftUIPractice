//
//  DynamicListsSwiftUIUITests.swift
//  DynamicListsSwiftUIUITests
//
//  Created by Chandler Gerstenslager on 1/31/20.
//  Copyright © 2020 MVT. All rights reserved.
//

import XCTest

class test_buttons: XCTestCase {

    override func setUp() {

        continueAfterFailure = false

    }

    func testMoveToNextView() {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        let permissionsEnabledToggle = app.switches["permissionsEnabledToggle"]
        let permissionsEnabledText = app.staticTexts["permissionsEnabledText"]
    
        // need to figure out how to get the current view
        
        permissionsEnabledToggle.tap()
        
        XCTAssertEqual("ON", permissionsEnabledText.label)
    }
    
    func testMoveToNextView2() {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        let permissionsEnabledToggle = app.switches["permissionsEnabledToggle"]
        let permissionsEnabledText = app.staticTexts["permissionsEnabledText"]
    
        // need to figure out how to get the current view
        
        permissionsEnabledToggle.tap()
        permissionsEnabledToggle.tap()
        
        XCTAssertEqual("OFF", permissionsEnabledText.label)
    }
    
    func testOkayButton() {
        let app = XCUIApplication()
        app.launch()
        let goToSelectMood = app.buttons["goToSelectMood"]
        goToSelectMood.tap()

        let okayButton = app.buttons["okayButton"]
        
        okayButton.tap()
        
        XCTAssert(app.buttons["recordButton"].exists)
    }

}
