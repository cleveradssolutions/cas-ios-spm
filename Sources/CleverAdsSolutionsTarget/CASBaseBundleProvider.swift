//
//  Target.swift
//  cas-ios-spm
//

import Foundation

@objc(CASBaseBundleProvider)
class CASBaseBundleProvider: NSObject {

    @objc func provideBundle() -> Bundle {
        Bundle.module
    }
}
