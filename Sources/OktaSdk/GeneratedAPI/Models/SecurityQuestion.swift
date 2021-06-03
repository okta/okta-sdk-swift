//
// SecurityQuestion.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct SecurityQuestion: Codable, Hashable {

    public var answer: String?
    public var question: String?
    public var questionText: String?

    public init(answer: String? = nil, question: String? = nil, questionText: String? = nil) {
        self.answer = answer
        self.question = question
        self.questionText = questionText
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case answer
        case question
        case questionText
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(answer, forKey: .answer)
        try container.encodeIfPresent(question, forKey: .question)
        try container.encodeIfPresent(questionText, forKey: .questionText)
    }



}
