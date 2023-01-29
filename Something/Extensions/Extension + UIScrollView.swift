//
//  Extension + UIScrollView.swift
//  Something
//
//  Created by Artem on 29.01.2023.
//

import Foundation
import UIKit

extension UIScrollView {
    func createScroll() -> UIScrollView {
        let scrollView = UIScrollView()
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }
}
