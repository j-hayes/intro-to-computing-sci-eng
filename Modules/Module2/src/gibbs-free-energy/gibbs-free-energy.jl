using Plots
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
            elseif choice == "PEC"
                plotKpAtTemp()
            end
        catch e
            println("Error, Check input and try again")
            
            println(e)
        end 
    end 

end

function readFunctionChoice()
    println("Which problem do you want to solve?")
    println("Spontenaity Temperature Range: STR")
    println("Calculate Gibbs Free Energy: GFE")
    println("Calculate Equillibrium Constant: EQC")
    println("Plot Equillibrium Constant For Temperature Range: PEC")

    
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
    
    Kp = computeKp(ΔG, T)
    println("Results of Equillibrium Constant Calculation: ")
    println(Kp)
    println("-----------------------------")
    println("")
    
end 

function computeKp(ΔG, T)
    return exp(-(ΔG*1000)/(R*T))
end

function plotKpAtTemp()
    ΔH, ΔS = getThermodynamicValues()

    print("Enter beginning temp T1 in K: ")
    T1 = tryparse(Float64, readline())
    print("Enter beginning temp T2 in K: ")
    T2 = tryparse(Float64, readline())

   
    if T1 >= T2
        print("T2 must be larger than T1 ")
        return 
    end
    T = T1
    equilibriumConstants = Float64[]
    temperatures = Float64[]
    while T <= T2 
        ΔG = computeGibbsFreeEnergy(ΔH, T, ΔS)
        push!(equilibriumConstants, computeKp(ΔG, T)) 
        push!(temperatures, T)
        T += 1
    end 
    
    chart = plot(temperatures, equilibriumConstants, fmt = :png)
    
    println("Plot Complete, Enter File Name")
    fileName = readline()
    savefig(chart,"./$fileName.png")
end

function getThermodynamicValues()
    print("Enter ΔH in kJ/mol: ")
    ΔH = tryparse(Float64, readline())
    print("Enter ΔS in kJ/(mol*K): ")
    ΔS = tryparse(Float64, readline())

    return ΔH, ΔS

end



main()