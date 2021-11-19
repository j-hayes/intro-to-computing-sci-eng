print("Enter ΔH in kJ/mol: ")
ΔH = tryparse(Float64, readline())
print("Enter ΔS in kJ/(mol*K): ")
ΔS = tryparse(Float64, readline())

ΔSPositive = ΔS > 0 # BOOLEAN VALUE (TRUE OR FASE)
ΔHPositive = ΔH > 0


if ΔHPositive  && !ΔSPositive
    println("Reaction is not spontaneous at any temperature")
elseif !ΔHPositive  && ΔSPositive
    println("Reaction is spontaneous at any temperature")
else 
    temperatureDecription = ""
    if !ΔHPositive  && !ΔSPositive            
        temperatureDecription = "low"
    else
        temperatureDecription = "high"
    end 
    println("Spontaneous at $temperatureDecription Temperatures")
end