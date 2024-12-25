func calculateArea(width: Double, height: Double) -> Double {
    return width * height
}

let area = calculateArea(width: 10, height: 5) // Correct usage

let width = 20
let height = 10
let anotherArea = calculateArea(width: width, height: height) // Correct usage

let area2 = calculateArea(width: 20, height: 10) // Correct usage, but shows the issue

let area3 = calculateArea(width: width, height: 10) // Correct usage, but shows the issue

let area4 = calculateArea(width: 20, height: height) // Correct usage, but shows the issue

// The issue is that if width is 0 or height is 0 or both are 0, it will return 0
// This is mathematically correct but may not be what's intended in many cases
// The function doesn't handle or warn about zero values for width or height
// To fix this, you can add error handling or validation to ensure that width and height are positive values