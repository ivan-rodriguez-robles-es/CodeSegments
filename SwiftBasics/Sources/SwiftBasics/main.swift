

func switchAndLoopsLabeled2 (){
    let End = 100
    var index1 = 0
    var index2 = 0
    var index3 = 0
    let End3 = 100
    label1: while (index1 < End){
        
        let End2 = 100
        label2: while (index2 < End2){
            
            index3 = 0 + index2
            
            label3: repeat {
                
                label4: switch(index3)
                {
                    case 1...3:
                        print ("case 1...3")
                        if (index3 < 3){
                            index3 += 1
                            index2 += 1
                            print ("continue label3")
                            continue label3
                        }
                        else
                        {
                            index2 += 1
                            print ("continue label2")
                            continue label2
                        }
                    case 4...6:
                        print ("case 1...3")
                        if (index3 < 6){
                            index3 += 1
                            print ("break label4")
                            break label4
                        }
                        else
                        {
                            print ("continue label1")
                            index1 += 1
                            
                        }
                        print ("This is executed")
                        continue label1
                    default:
                        print("default is the first")
                }
                index3 += 1
            }while (index3 < End3)
            index2 += 1
        }
        index1 += 1
        
        
    }
}


func guardVsIf (){
    var person = [String : String]()
    person["name"] = nil
    print ("A")
    while (true) {
        print ("B")
        guard nil != person["name"] else {
            print ("name:\(String(describing: person["name"]))")
            person["name"] = "Judas"
            person["location"] = nil
            continue
        }
        print ("name:\(String(describing: person["name"]))")
        guard nil != person["location"] else{
            print ("location:\(String(describing: person["location"]))")
            person["location"] = "israel"
            person["finished"] = nil
            continue
        }
        print ("location:\(String(describing: person["location"]))")
        guard (nil != person["finished"]) else{
            print ("finished:\(String(describing: person["finished"]))")
            break;
        }
    }
}

print("swift Basics!")
print("Very easy examples for Swift base")

print("Please write the option and press enter:")
print("1: Swithches and Loops With Labels")
print("2: Guards. A very easy sample to see guards behaviours")

let option = readLine()
if (option == "1"){
    switchAndLoopsLabeled2 ()
} else if (option == "2"){
    guardVsIf()
} else{
    print("Unknown Option.")
}
