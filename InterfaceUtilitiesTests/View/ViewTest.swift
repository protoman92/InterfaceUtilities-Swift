//
//  ViewTest.swift
//  InterfaceUtilitiesTests
//
//  Created by Hai Pham on 27/4/18.
//  Copyright © 2018 Swiften. All rights reserved.
//

import XCTest
@testable import InterfaceUtilities

public final class ViewTest: XCTestCase {}

public extension ViewTest {
  public func test_initWithNib_shouldWork() {
    /// Setup
    let customView1 = CustomView(frame: CGRect.zero)
    let customView2 = CustomView(frame: CGRect.zero)
    customView1.addSubview(UIView())

    /// When
    HPViewUtil.initializeWithNib(view: customView1)
    HPViewUtil.initializeWithNib(view: customView2, nibName: "CustomView")

    /// Then
    XCTAssertEqual(customView1.subviews.count, 1)
    XCTAssertEqual(customView2.subviews.count, 1)
    XCTAssertNil(customView1.label1)
    XCTAssertNotNil(customView2.label1)
  }
}
