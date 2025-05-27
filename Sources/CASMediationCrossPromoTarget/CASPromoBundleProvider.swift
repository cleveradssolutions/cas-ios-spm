//
//  Target.swift
//  cas-ios-spm
//

import Foundation

@objc(CASPromoBundleProvider)
class CASPromoBundleProvider: NSObject {

    @objc func provideBundle() -> Bundle {
        Bundle.module
    }
}
