//
//  main.swift
//  Day7
//
//  Created by MacStudent on 2019-02-15.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

var s1 : Student
s1 = Student()

//Failable init - as we are passing sid negative value
var s2 : Student?
print("****** S2 ******")
s2 = Student(sid: -21,sname: "Maninder",email: "m@m.com")
if let s = s2{
    print("object s2 created")
    s.printData()
}

var s3 : Student?
print("****** S3 ******")
s3 = Student(sid: 21,sname: "Maninder",email: "m...m.com")
if let s = s3{
    print("object s3 created")
    s.printData()
}

var s4 : Student?
print("****** S4 ******")
s4 = Student(sid: 21,sname: "Maninder Singh",email: "maninder@mst.com")
if let s = s4{
    print("object s4 created")
    s.printData()
}

var s5 : Student?
print("****** S5 ******")
s5 = Student(sid: 21,sname: "Maninder Singh",email: "m...asddfgfbnghjmum.com")
if let s = s5{
    print("object s5 created")
    s.printData()
}

