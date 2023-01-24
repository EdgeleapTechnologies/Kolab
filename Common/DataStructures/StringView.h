#pragma once

//TODO(Tiago):
// [] Once we have a good implementation of strlen, then here we should
// substitute the use of strlen from the c-stdlib for our own implementation

#include <string.h>

#include "ArrayView.h"
#include "String.h"
#include "Types.h"

namespace Kolab
{

class StringView: public ArrayView<char>
{
public:
    //NOTE(Tiago): whithout the const-qualifier the compiler doesnt know how to distinguish between
    //a string and a string literal and would try to use string methods
    StringView(const char* string): ArrayView<char>((char*)string, strlen(string)) {}
    StringView(const string& string): ArrayView<char>(string.ptr(), string.length()) {}
};

}
