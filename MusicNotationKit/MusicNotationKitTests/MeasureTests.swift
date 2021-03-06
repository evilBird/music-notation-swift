//
//  MeasureTests.swift
//  MusicNotationKit
//
//  Created by Kyle Sherman on 7/13/15.
//  Copyright © 2015 Kyle Sherman. All rights reserved.
//

import XCTest
@testable import MusicNotationKit

class MeasureTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
	
	func testAddNote() {
		var measure = Measure(
			timeSignature: TimeSignature(topNumber: 4, bottomNumber: 4, tempo: 120),
			key: Key(noteLetter: .C))
		XCTAssertEqual(measure.notes.count, 0)
		measure.addNote(Note(noteDuration: .Whole))
		XCTAssertEqual(measure.notes.count, 1)
	}
}
