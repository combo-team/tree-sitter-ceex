import XCTest
import SwiftTreeSitter
import TreeSitterCeex

final class TreeSitterCeexTests: XCTestCase {
    func testCanLoadGrammar() throws {
        let parser = Parser()
        let language = Language(language: tree_sitter_ceex())
        XCTAssertNoThrow(try parser.setLanguage(language),
                         "Error loading Ceex grammar")
    }
}
