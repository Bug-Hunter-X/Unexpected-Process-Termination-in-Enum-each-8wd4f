# Elixir Enum.each and Process.exit Unexpected Behavior

This repository demonstrates a subtle bug involving the use of `Process.exit/2` inside an `Enum.each/2` loop in Elixir.  Improperly handling process termination within enumerations can lead to incomplete operations and difficulty in debugging.

The `bug.exs` file shows the erroneous code. The `bugSolution.exs` provides a corrected approach.

## The Problem

The original code attempts to iterate through a list and print each element, exiting the process if the element is 3.  This approach is problematic because `Process.exit/2` immediately terminates the entire process.  Subsequent list elements are never processed.

## The Solution

The solution demonstrates safer alternatives to handle conditional termination.  Rather than using `Process.exit/2`, error handling and control flow mechanisms such as `try...catch` blocks or early exit from the enumeration are recommended.
