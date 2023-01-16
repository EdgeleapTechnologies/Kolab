#pragma once

#include "ArrayView.h"
#include "DataStructures/ArrayView.h"
#include "String.h"
#include "Types.h"

namespace Kolab
{

class StringView: public ArrayView<char>
{
public:
    StringView(const string& string)
    {
        this->array = string.ptr();
        this->length = string.length();
    }

    const char& operator[](uArchInt index)
    {
        return this->array[index];
    }

    char at(uArchInt index)
    {
        return this->array[index];
    }
};

}
