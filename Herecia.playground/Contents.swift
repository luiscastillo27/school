//: Playground - noun: a place where people can play

import UIKit

class User {
    
    var idUser: String
    var avatar: String
    var name: String
    var lastname: String
    var state: String

    var email: String?
    var password: String?
    var typeUser: String?
    
    init(idUser: String, avatar: String, email: String, password: String, name: String, lastname: String, typeUser: String, state: String){
        self.idUser = idUser
        self.avatar = avatar
        self.email = email
        self.password = password
        self.name = name
        self.lastname = lastname
        self.typeUser = typeUser
        self.state = state
    }
    
    init(idUser: String, avatar: String, name: String, lastname: String, state: String){
        self.idUser = idUser
        self.avatar = avatar
        self.name = name
        self.lastname = lastname
        self.state = state
    }
    
}


class Teacher: User {
    
    var carrier: String
    var studies: String
    var ranting: String
    var professional_license: String
    
    init(idUser: String, avatar: String, name: String, lastname: String, state: String, carrier: String, studies: String, ranting: String, professional_license: String){
        self.carrier = carrier
        self.studies  = studies
        self.ranting = ranting
        self.professional_license = professional_license
        super.init(idUser: idUser, avatar: avatar, name: name, lastname: lastname, state: state)
    }
    
}


class DataUser{
    
    var listUser = [User]()
    
    init() {
        getAllUsers()
    }
    
    func getAllUsers(){
        listUser.append( User(idUser: "1", avatar: "1.jpg", email: "luis@gmail.com", password: "jimyluis", name: "luis manuel", lastname: "castillo zamorano", typeUser: "alumno", state: "0"))
        listUser.append( User(idUser: "2", avatar: "2.jpg", email: "jim@gmail.com", password: "jimyluis", name: "ana mireya", lastname: "jimenez perez", typeUser: "alumno", state: "0"))
        listUser.append( User(idUser: "3", avatar: "3.jpg", email: "prueba3@gmail.com", password: "jimyluis", name: "prueba", lastname: "alumno 3", typeUser: "alumno", state: "0"))
        listUser.append( User(idUser: "3", avatar: "4.jpg", email: "prueba4@gmail.com", password: "jimyluis", name: "prueba", lastname: "alumno 4", typeUser: "alumno", state: "0"))
        listUser.append( User(idUser: "5", avatar: "5.jpg", email: "docente1@gmail.com", password: "jimyluis", name: "docente1", lastname: "docente numero 1", typeUser: "docente", state: "0"))
        listUser.append( User(idUser: "6", avatar: "6.jpg", email: "docente3@gmail.com", password: "jimyluis", name: "docente2", lastname: "docente numero 2", typeUser: "docente", state: "0"))
    }
    
}



class DataTeacher{
    
    var listTeacher = [Teacher]()
    
    init() {
        getAllTeachers()
    }
    
    func getAllTeachers(){
        listTeacher.append( Teacher(idUser: "5", avatar: "5.jpg", name: "docente 1", lastname: "docente uno", state: "0", carrier: "Ingenieria en Software", studies: "Ing Software", ranting: "0", professional_license: "123456"))
        listTeacher.append( Teacher(idUser: "6", avatar: "6.jpg", name: "docente 2", lastname: "docente dos", state: "0", carrier: "Ingenieria Telematica", studies: "Ing Telematica", ranting: "0", professional_license: "654321"))
    }
    
}


var dataUser = DataUser()
print("TODOS LOS USUARIOS")
print(" ")
for i in 0...dataUser.listUser.count - 1 {
    print("idUser: \(dataUser.listUser[i].idUser) | avatar: \(dataUser.listUser[i].avatar) | email: \(String(describing: dataUser.listUser[i].email)) | pass: \(String(describing: dataUser.listUser[i].password)) | name: \(dataUser.listUser[i].name) | tipo:  \(dataUser.listUser[i].typeUser) | estado: \(dataUser.listUser[i].state) ")
    print(" ")
}
print(" ")
print(" ")


var dataTeacher = DataTeacher()
print("TODOS LOS PROFESORES")
print(" ")
for i in 0...dataTeacher.listTeacher.count - 1 {
    print("idUser: \(dataTeacher.listTeacher[i].idUser) | avatar: \(dataTeacher.listTeacher[i].avatar) | name: \(dataTeacher.listTeacher[i].name) | ranting: \(dataTeacher.listTeacher[i].ranting) | state: \(dataTeacher.listTeacher[i].state) | professional_license: \(dataTeacher.listTeacher[i].professional_license) | carrier: \(dataTeacher.listTeacher[i].carrier) | studies: \(dataTeacher.listTeacher[i].studies)")
    print(" ")
}
print(" ")
print(" ")




















