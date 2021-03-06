//
//  Spacing.swift
//  
//
//  Created by Carson Katri on 9/4/19.
//

/// Add padding to all `Sides`
public func padding(_ amount: CSSUnit = .pixels(10)) -> Declaration {
    Declaration(property: .padding, value: amount.description)
}
/// Add padding to specific `Sides`
public func padding(_ sides: [Side], _ amount: CSSUnit = .pixels(10)) -> Declaration {
    var decls = [Declaration]()
    for side in sides {
        let prop: CSSProperty!
        switch side {
        case .top:
            prop = .paddingTop
        case .right:
            prop = .paddingRight
        case .bottom:
            prop = .paddingBottom
        case .left:
            prop = .paddingLeft
        }
        decls.append(Declaration(property: prop, value: amount.description))
    }
    return Declaration(code: decls.map { $0.string() }.joined(separator: " "))
}

/// Add a margin to all `Sides`
public func margin(_ amount: CSSUnit = .pixels(10)) -> Declaration {
    Declaration(property: .margin, value: amount.description)
}

/// Add a margin to specific `Sides`
public func margin(_ sides: [Side], _ amount: CSSUnit = .pixels(10)) -> Declaration {
    var decls = [Declaration]()
    for side in sides {
        let prop: CSSProperty!
        switch side {
        case .top:
            prop = .marginTop
        case .right:
            prop = .marginRight
        case .bottom:
            prop = .marginBottom
        case .left:
            prop = .marginLeft
        }
        decls.append(Declaration(property: prop, value: amount.description))
    }
    return Declaration(code: decls.map { $0.string() }.joined(separator: " "))
}
