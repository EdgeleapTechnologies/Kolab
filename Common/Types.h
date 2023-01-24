#pragma once

//8-bit data types
typedef unsigned char uint8;
typedef unsigned char u8;
typedef signed char int8;
typedef signed char i8;

//16-bit data types
typedef unsigned short uint16;
typedef unsigned short u16;
typedef signed short int16;
typedef signed short i16;

//32-bit data types
typedef unsigned int uint32;
typedef unsigned int u32;
typedef signed int int32;
typedef signed int i32;
typedef float float32;
typedef float f32;

//64-bit data types
typedef unsigned long long int uint64;
typedef unsigned long long int u64;
typedef signed long long int int64;
typedef signed long long int i64;
typedef double float64;
typedef double f64;

#ifdef __x86_64__

typedef uint64 uArchInt;
typedef int64 sArchInt;

#else

typedef uint32 uArchInt;
typedef int32 sArchInt;

#endif

//NOTE(Tiago): clang format is dogshit and for some reason it shits itself with
//a class to an r-value not allowing any configuration of the style. To avoid this
//we created here our own move implementation that casts to T&&. This way we can
//use move without having to turn off the linter all over the place. Ideally
//clang format would not be shit and would have this a configurable option, however
//after spending much time looking into this it does not seem like such an option
//exists.
// clang-format off
template<typename T>
T&& move(T param) 
{ 
    return (T&&)param; 
}
// clang-format on
