//
//  CASBaseBundleProvider.swift
//  cas-ios-spm
//

import Foundation

@objc(CASBaseBundleProvider)
public class CASBaseBundleProvider: NSObject {
    @objc func provideBundle() -> Bundle {
        Bundle.module
    }
}
