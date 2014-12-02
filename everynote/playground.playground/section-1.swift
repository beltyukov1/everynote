//func skilledIn(#languages: String...) {
//    for language in languages {
//        println("Skilled in \(language)")
//    }
//}
//
//skilledIn(languages: "Swift", "Obj-C", "Java", "Groovy")


//func skilledIn(#languages: String...) -> (count: Int, languages: String) {
//    return (languages.count, languages.description)
//}
//var (count, desc) = skilledIn(languages: "Swift", "Obj-C", "Java", "Groovy")
//
//var myFunction = skilledIn
//
//
//var languages = ["Swift", "Obj-C"]
//for (i, language) in enumerate(languages) {
//    println("\(i): \(language)")
//}
//
//var numbers = ["one": 1, "two": 2, "three": 3]
//numbers["one"]
//numbers["four"]
//
//if let one = numbers["one"] {
//    println("one has a value \(one)")
//} else {
//    println("one is nil")
//}


func skilledIn(languages: String...) -> (count: Int, value: String) {
    return (languages.count, languages.reduce("skilled in ") {
        "\($0), \($1)"
    })
}

skilledIn("Swift", "Obj-C").1