//
//  Student.swift
//  Day7
//
//  Created by MacStudent on 2019-02-15.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

extension String
{
    func isValidEmail() -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailTest = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with:self)
    }
}

class Student {
    var sid : Int!
    var sname : String!
    var email : String!
    var m1,m2,m3: Int
    var totalMarks : Int{
        return m1+m2+m3
    }
    
    init() {
        self.sid = 0
        self.sname = String()
        self.email = String()
        self.m1 = 25
        self.m2 = 25
        self.m3 = 25
    }
    
    init? (sid: Int, sname: String, email: String) {
        if sid < 0{
            print("Student must be >= 0")
            return nil
        }
        if sname.count < 10{
            print("Student sname must be >= 10 length")
            return nil
        }
        if email.count < 15{
            print("Student email must be >= 15 length")
            return nil
        }else{
            if !email.isValidEmail()
            {
                print("Invalid Email")
                return nil
            }
        }
        
        self.sid = sid
        self.sname = sname
        self.email = email
        self.m1 = 25
        self.m2 = 25
        self.m3 = 25
    }
    
    func printData(){
        print("Student id: \(String(describing: self.sid!))")
        print("Student id: \(String(describing: self.sname))")
        print("Student id: \(String(describing: self.email))")
        print("Total marks: \(totalMarks)")
    }
}
