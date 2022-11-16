# Numeric Data Types

## Integer 

(5;100;-200;1,000, Whole number with no decimal points) 

INTEGER INT

Keywords:
1. TINYINT
2. SMALLINT
and more


| integer | fixed-point | floating-point|
|---------|-------------|---------------|
| integer| decimal, numeric| float, double |



## Fixed and Floating-Point Data Types

1. Precision: Count of digits include decimal points.
2. Scale: Refers to the number of digits to the right of the decimal point in a number.

| number | precision | scale  |
---------| --------- | ------ |
| 10.523 | 5 | 3


```
decimal(5,3) // Where, 5 precision, 3 scale(decimal point)
```

### FIXED-POINT DATA REPRESENT EXACT VALUES

decimal(5,3) -> 10.523

| decimal |  value |
----------|--------|
| 10.5 | 10.500 |
| 10.52367 | 10.54 | 

Donde 10.52367 está redodeando. 

Decimal and numeric are used to salaries and dollars. 

### FLOATING-POINT DATA TYPE

1. Used for approximate values only.
2. Aims to balance between range and precision ( => "floating" )

|Float(5,3)|10.523|
|----------|------|
|10.5236789|10.524|

10.524 is an approximate value.

## DIFFERENCE 

The main difference between the fixed and the floating-point type is in the way the value is represented in the memory of the computer. 


| Floating-point data type | size(bytes) | precision | maximum number of digits |
| ------------------------ | ----------- | --------- | ------------------------ |
| float | 4 | single | 23 |
| double | 8 | double | 53 |
 
 


