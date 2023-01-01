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
