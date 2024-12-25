# Swift Silent Zero Area Calculation Bug

This repository demonstrates a subtle bug in a Swift function that calculates the area of a rectangle. The function silently returns 0 if either the width or height is zero, without providing any indication of the error.  This can lead to unexpected behavior and incorrect results in applications.

The `bug.swift` file contains the buggy code.  The `bugSolution.swift` file provides a corrected version with improved error handling.

## Bug Description
The `calculateArea` function does not handle cases where the width or height is zero. This leads to a mathematically correct but potentially misleading result of 0.  The function lacks error handling or warnings to alert the user of this condition.

## Solution
The solution involves adding checks to ensure that both width and height are positive values.  If either is zero or negative, an appropriate error is thrown or a specific value (like -1) or an optional is returned to signal an issue.