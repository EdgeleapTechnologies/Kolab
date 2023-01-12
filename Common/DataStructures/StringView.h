#pragma once

#include "ArrayView.h"
#include "DataStructures/ArrayView.h"
#include "String.h"

namespace Kolab
{

class StringView: public ArrayView<string>
{
public:
    StringView(const string& string)
    {
        this->array = string.ptr();
        this->length = string.length();
    }
};

}
