# Module 5 – Why is this function 20,000 lines long: Going from spaghetti code to clean software  
## 	Software Best Practices 
- Thinking in functions, objects, data 
- SOLID Principles 
- Design Patterns 
- Design Anti-patterns 
- Sage advice from long time software programmers  
    - Don’t reinvent the wheel (Use Prebuilt Packages if they exist) 
    - Read the code
    - Don’t repeat yourself (DRY)
    - Keep it Simple Stupid 
    - Everyone has a test environment, some people are lucky enough to have a dedicated production environment 
    - Separation of Concerns (SOC) / Law of Demeter 
        - Classes or entities should be independent
        - Need to try to reduce the number of connections between different classes (aka coupling)
        - Related classes should be in the same module/package/directory (aka cohesion)
    - Copy Paste is not your friend or if you are copying and pasting you are probably doing something wrong
    - You aren’t gonna need it 
    - Corollary to all this advice: A journeyman knows the rules, a master knows when to break them and how
##	“Prove to me it says what you say it does”: Testing
- Unit testing
    - Integration Testing (Unit tests with bigger “Units”)
    - Test Suites 
## "I have no idea what this function is doing": why documentation matters 
    - Self-documenting code 
    - When to use comments
    - Other documentation ideas
    - Writing Documentation, Versioning, autogenerated 