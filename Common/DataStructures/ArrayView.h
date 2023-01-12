#pragma once

#include <Types.h>

namespace Kolab
{

template<typename T>
class ArrayView
{
public:
    const T* array = nullptr;
    uArchInt length = 0;
public:
    ArrayView() = default;
    
    ArrayView(const T* array, uArchInt length)
    {
        this->array = array;
        this->length = length;
    }

};

}
