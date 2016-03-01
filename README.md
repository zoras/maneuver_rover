# A simple Ruby Program to maneuver Mars rover according to given co-ordinates

## Steps to run the app

1. Run `ruby maneuver.rb`

2. Enter inputs sequentially (rectangular platue size, rover1 position, rover1 moving instruction, rover2 position, rover2 moving instruction)

Example input:

```[bash]
5 5

1 2 N

LMLMLMLMM

3 3 E

MMRMMRMRRM
```

Expected Output

```[bash]
1 3 N

5 1 E
```

# Note: This program assumes direction as cardinal compass points

```[pre]
   N
W     E
   S
```

# Passing Tests

To run the tests `bundle install` and then `guard start`
