//
//  CASPromoBundleProvider.swift
//  cas-ios-spm
//

import Foundation

@objc(CASPromoBundleProvider)
public class CASPromoBundleProvider: NSObject {
    @objc public func provideBundle() -> Bundle {
        Bundle.module
    }
}
