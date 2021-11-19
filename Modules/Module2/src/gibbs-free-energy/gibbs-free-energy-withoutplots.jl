R = 8.314

function main()
    choice = ""
    while choice != "EXIT"
        try 
            choice = readFunctionChoice()
            if choice == "STR"
                temperatureRangeSolver();
            elseif choice == "GFE"
                calculateGibbsFreeEnery()
            elseif choice == "EQC"
                calculateEquillibriumConstant()
            end
        catch e
            println("Error, Check input and try again")
        end 
    end 

end

function readFunctionChoice()
    println("Which problem do you want to solve?")
    println("Spontenaity Temperature Range: STR")
    println("Calculate Gibbs Free Energy: GFE")
    println("Calculate Equillibrium Constant: EQC")
    
    println("exit: EXIT")
    print("Your Choice: ") 
    return readline()
end

function temperatureRangeSolver()
    ΔH, ΔS = getThermodynamicValues()

    ΔSPositive = ΔS > 0
    ΔHPositive = ΔH > 0

    println("-----------------------------")
    println("Results of Temperature Range Solver: ")
    if ΔHPositive  && !ΔSPositive
        println("Reaction is not spontaneous at any temperature")
    elseif !ΔHPositive  && ΔSPositive
        println("Reaction is spontaneous at any temperature")
    else 
        if ΔS == 0
            prinln(getDivideByZeroErrorMessage())
        end  
        equillibriumTemperature = ΔH / ΔS 
        println("Equllibrium Temperature: $(equillibriumTemperature) K")
        greaterThanOrLessThan = ""
        if !ΔHPositive  && !ΔSPositive            
            greaterThanOrLessThan = "<"
        else
            greaterThanOrLessThan = ">"
        end 
        println("Spontaneous at T $greaterThanOrLessThan $(equillibriumTemperature)")
    end
    println("-----------------------------")
    println("")
end

function calculateGibbsFreeEnery()
    ΔH, ΔS = getThermodynamicValues()
    print("Enter T in K: ")
    T = tryparse(Float64, readline())
    
    ΔG = computeGibbsFreeEnergy(ΔH,T,ΔS)
    println("-----------------------------")
    println("Results of Gibbs Free Energy: ")
    println("$(ΔG) kJ/mol")
    println("-----------------------------")
    println("")
    return ΔG, T

end 

function computeGibbsFreeEnergy(ΔH,T,ΔS)
    return ΔH - T*ΔS
end

function calculateEquillibriumConstant()
    ΔG, T = calculateGibbsFreeEnery()
    
    Kp = exp(-(ΔG*1000)/(R*T))
    println("Results of Equillibrium Constant Calculation: ")
    println(Kp)
    println("-----------------------------")
    println("")
    
end 

function getThermodynamicValues()
    print("Enter ΔH in kJ/mol: ")
    ΔH = tryparse(Float64, readline())
    print("Enter ΔS in kJ/(mol*K): ")
    ΔS = tryparse(Float64, readline())

    return ΔH, ΔS

end

function getDivideByZeroErrorMessage()
    println("https://www.amazon.com/photos/shared/C0TKlZEbRdSsoz4nfCss0A.4jaAmCVpQFo4k-8OuntBTn")
end


main()