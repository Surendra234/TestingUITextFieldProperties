//
//  TestingUITextFieldPropertiesTests.swift
//  TestingUITextFieldPropertiesTests
//
//  Created by XP India on 05/01/24.
//

import XCTest
@testable import TestingUITextFieldProperties

final class TestingUITextFieldPropertiesTests: XCTestCase {
    
    var sut: SignupViewController!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        sut = storyboard.instantiateViewController(identifier: "SignupViewController") as? SignupViewController
        sut.loadViewIfNeeded()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sut = nil
    }
    
    func testEmailTextField_WhenCreated_EmailAddressContentTypeSet() throws {
        let emailTextField = try XCTUnwrap(sut.emailTextField, "Email address UITextField is not connected")
        XCTAssertEqual(emailTextField.textContentType, .emailAddress, "Email address UITextField does not had textContentType of emailAddress")
    }
    
    func testEmailTextField_WhenCreated_EmailAddressKeyboardTypeSet() throws {
        let emailTextField = try XCTUnwrap(sut.emailTextField, "Email address UITextField is not connected")
        XCTAssertEqual(emailTextField.keyboardType, .emailAddress, "Email address UITextField does not had keyboardContentType of emailAddress")
    }
    
    func testPasswordTextField_WhenCreated_IsSecureTextEntryTextField() throws {
        let passwordTextField = try XCTUnwrap(sut.passwordTextField, "Password UItextField is not connected")
        XCTAssertTrue(passwordTextField.isSecureTextEntry, "Password UITextField is not a secure text entry")
    }
}

