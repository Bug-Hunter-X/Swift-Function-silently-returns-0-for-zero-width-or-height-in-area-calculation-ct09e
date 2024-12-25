func calculateArea(width: Double, height: Double) -> Double?
{
    guard width > 0 && height > 0 else {
        print("Error: Width and height must be positive values.")
        return nil
    }
    return width * height
}

// Example usage
if let area = calculateArea(width: 10, height: 5) {
    print("Area: ", area)
} else {
    print("Area calculation failed.")
}

if let area = calculateArea(width: 0, height: 5) {
    print("Area: ", area)
} else {
    print("Area calculation failed.")
}

func calculateArea2(width: Double, height: Double) throws -> Double {
    guard width > 0 && height > 0 else {
        throw CalculationError.invalidInput
    }
    return width * height
}

enum CalculationError: Error {
    case invalidInput
}

// Example usage
doa {
    let area = try calculateArea2(width: 10, height: 5)
    print("Area: ", area)
} catch CalculationError.invalidInput {
    print("Invalid input values.")
} catch {
    print("An unexpected error occurred.")
}