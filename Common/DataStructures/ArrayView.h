#pragma once

/*TODO(Tiago):
 * [] Once we have fully removed all uses of std:: from other files
 * we can substitute the usage of std::initializer_list from the stl
 * header by our own.
 *
 *
 */

#include <Types.h>
#include <initializer_list>

namespace Kolab
{

template<typename T>
class ArrayView
{
public:
    T* const array = nullptr;
    const uArchInt length = 0;

public:
    ArrayView() = default;

    ArrayView(T* array, uArchInt length): array(array), length(length) {}

    ArrayView(const std::initializer_list<T>& array): array(array.begin()), length(array.size()) {}

    T& operator[](uArchInt index)
    {
        return this->array[index];
    }

    T at(uArchInt index)
    {
        return this->array[index];
    }

    operator T*()
    {
        return this->array;
    }
};

}
