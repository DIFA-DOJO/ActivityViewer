//
//  ActivityStore.swift
//  ActivityViewer
//
//  Created by Laurent JEANJEAN on 18/05/2023.
//

import Foundation

struct ActivitySession {
    enum Kind {
        case running
        case swimming
        case cycling
    }
    
    let id: String
    let kind: Kind
    let date: Date
    let place: String
    let duration: Int
    let distance: Int?
    let bpmMax: Int?
    
    init(id: String, type: Kind, date: Date, place: String, duration: Int, distance: Int? = nil, bpmMax: Int? = nil) {
        self.id = id
        self.kind = type
        self.date = date
        self.place = place
        self.duration = duration
        self.distance = distance
        self.bpmMax = bpmMax
    }
}

struct ActivityRepository {
    private static let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        return formatter
    }()
    
    static func getActivities() -> [ActivitySession] {
        let sessions = [
            ActivitySession(
                id: "eddded",
                type: .running,
                date: dateFormatter.date(from: "2018-10-27T08:00:00")!,
                place: "Paris, France",
                duration: 2700,
                distance: 8217,
                bpmMax: 164
            ),
            ActivitySession(
                id: "ad8778df",
                type: .running,
                date: dateFormatter.date(from: "2018-10-18T08:00:00")!,
                place: "Paris 11e arrondissement, France",
                duration: 4312
            ),
            ActivitySession(
                id: "g78trgb",
                type: .running,
                date: dateFormatter.date(from: "2018-10-16T08:00:00")!,
                place: "Paris 8e arrondissement, France",
                duration: 2817,
                bpmMax: 112
            ),
            ActivitySession(
                id: "sdf785f",
                type: .cycling,
                date: dateFormatter.date(from: "2018-10-12T08:00:00")!,
                place: "La Chaux-de-Fonds, Suisse",
                duration: 11342,
                distance: 48312
            ),
            ActivitySession(
                id: "aa457fds",
                type: .swimming,
                date: dateFormatter.date(from: "2018-10-09T08:00:00")!,
                place: "Neuchatel, Suisse",
                duration: 932,
                distance: 832,
                bpmMax: 121
            ),
            ActivitySession(
                id: "afg5df5",
                type: .swimming,
                date: dateFormatter.date(from: "2018-10-03T08:00:00")!,
                place: "Saint Blaise, Suisse",
                duration: 1418,
                distance: 1231
            ),
            ActivitySession(
                id: "s5gh15z",
                type: .running,
                date: dateFormatter.date(from: "2018-09-08T08:00:00")!,
                place: "San Rapahel, San Francisco Bay Area, USA",
                duration: 3112,
                distance: 9387,
                bpmMax: 145
            ),
            ActivitySession(
                id: "sf5qq5",
                type: .running,
                date: dateFormatter.date(from: "2018-09-08T08:00:00")!,
                place: "San Rapahel, San Francisco Bay Area, USA",
                duration: 7321,
                distance: 8123,
                bpmMax: 128
            ),
            ActivitySession(
                id: "87aklm",
                type: .swimming,
                date: dateFormatter.date(from: "2018-07-18T08:00:00")!,
                place: "Brest, France",
                duration: 1201,
                distance: 943
            ),
            ActivitySession(
                id: "asfd55sfg",
                type: .swimming,
                date: dateFormatter.date(from: "2018-07-13T08:00:00")!,
                place: "Lorient, France",
                duration: 731
            ),
            ActivitySession(
                id: "sqd254",
                type: .swimming,
                date: dateFormatter.date(from: "2018-07-11T08:00:00")!,
                place: "La Plaine-sur-Mer, France",
                duration: 1312
            ),
            ActivitySession(
                id: "asfdas34",
                type: .cycling,
                date: dateFormatter.date(from: "2018-07-06T08:00:00")!,
                place: "Geneva, Switzerland",
                duration: 5218,
                distance: 20193,
                bpmMax: 155
            ),
            
            ActivitySession(
                id: "e24df43",
                type: .running,
                date: dateFormatter.date(from: "2018-06-28T08:00:00")!,
                place: "London, UK",
                duration: 3819,
                distance: 10450,
                bpmMax: 140
            ),
            
            ActivitySession(
                id: "sdfg567",
                type: .swimming,
                date: dateFormatter.date(from: "2018-06-19T08:00:00")!,
                place: "Barcelona, Spain",
                duration: 2289,
                distance: 2016,
                bpmMax: 130
            ),
            
            ActivitySession(
                id: "qwe23ed",
                type: .cycling,
                date: dateFormatter.date(from: "2018-06-11T08:00:00")!,
                place: "Amsterdam, Netherlands",
                duration: 4791,
                distance: 16875,
                bpmMax: 147
            ),
            
            ActivitySession(
                id: "y6u78i9",
                type: .running,
                date: dateFormatter.date(from: "2018-06-02T08:00:00")!,
                place: "New York City, USA",
                duration: 4562,
                distance: 12000,
                bpmMax: 135
            ),
            ActivitySession(
                 id: "asdf123",
                 type: .cycling,
                 date: dateFormatter.date(from: "2018-05-26T08:00:00")!,
                 place: "Berlin, Germany",
                 duration: 3600,
                 distance: 15000,
                 bpmMax: 140
             ),
             
             ActivitySession(
                 id: "qwer456",
                 type: .running,
                 date: dateFormatter.date(from: "2018-05-19T08:00:00")!,
                 place: "Tokyo, Japan",
                 duration: 4210,
                 distance: 10000,
                 bpmMax: 150
             ),
             
             ActivitySession(
                 id: "zxcv789",
                 type: .swimming,
                 date: dateFormatter.date(from: "2018-05-12T08:00:00")!,
                 place: "Sydney, Australia",
                 duration: 1800,
                 distance: 1500,
                 bpmMax: 125
             ),
             
             ActivitySession(
                 id: "bnmg432",
                 type: .cycling,
                 date: dateFormatter.date(from: "2018-05-05T08:00:00")!,
                 place: "Rome, Italy",
                 duration: 5400,
                 distance: 20000,
                 bpmMax: 160
             ),
             
             ActivitySession(
                 id: "lkjh987",
                 type: .running,
                 date: dateFormatter.date(from: "2018-04-28T08:00:00")!,
                 place: "Rio de Janeiro, Brazil",
                 duration: 4000,
                 distance: 8000,
                 bpmMax: 130
             )
        ]
        
        return sessions
    }
}
