//
//  ConstraintTest.swift
//  InterfaceUtilitiesTests
//
//  Created by Hai Pham on 27/4/18.
//  Copyright © 2018 Swiften. All rights reserved.
//

import SwiftUtilities
import XCTest
@testable import InterfaceUtilities

public final class ConstraintTest: XCTestCase {}

public extension ConstraintTest {
  public func test_constraintDimensionOptions_shouldWork() {
    XCTAssertTrue(HPConstraintUtil.Dimension.all.contains(HPConstraintUtil.Dimension.left))
    XCTAssertTrue(HPConstraintUtil.Dimension.all.contains(HPConstraintUtil.Dimension.top))
    XCTAssertTrue(HPConstraintUtil.Dimension.all.contains(HPConstraintUtil.Dimension.right))
    XCTAssertTrue(HPConstraintUtil.Dimension.all.contains(HPConstraintUtil.Dimension.bottom))
    XCTAssertFalse(HPConstraintUtil.Dimension.left.contains(HPConstraintUtil.Dimension.top))
    XCTAssertFalse(HPConstraintUtil.Dimension.top.contains(HPConstraintUtil.Dimension.right))
    XCTAssertFalse(HPConstraintUtil.Dimension.right.contains(HPConstraintUtil.Dimension.bottom))
  }

  public func test_createDimensionalConstraints_shouldWork() {
    /// Setup
    let view1 = UIView(frame: CGRect.zero)
    let view2 = UIView(frame: CGRect.zero)

    /// When
    let constraints1 = HPConstraintUtil
      .dimensionalConstraints(firstItem: view1,
                              secondItem: view2,
                              dimensions: .all)

    let constraints2 = HPConstraintUtil
      .dimensionalConstraints(firstItem: view1,
                              secondItem: view2,
                              dimensions: [.left, .right])

    /// Then
    XCTAssertTrue(constraints1.all({$0.firstAttribute == $0.secondAttribute}))
    XCTAssertTrue(constraints1.contains(where: {$0.firstAttribute == .left}))
    XCTAssertTrue(constraints1.contains(where: {$0.firstAttribute == .top}))
    XCTAssertTrue(constraints1.contains(where: {$0.firstAttribute == .right}))
    XCTAssertTrue(constraints1.contains(where: {$0.firstAttribute == .bottom}))
    XCTAssertTrue(constraints2.all({$0.firstAttribute == $0.secondAttribute}))
    XCTAssertTrue(constraints2.contains(where: {$0.firstAttribute == .left}))
    XCTAssertFalse(constraints2.contains(where: {$0.firstAttribute == .top}))
    XCTAssertTrue(constraints2.contains(where: {$0.firstAttribute == .right}))
    XCTAssertFalse(constraints2.contains(where: {$0.firstAttribute == .bottom}))
  }
}
