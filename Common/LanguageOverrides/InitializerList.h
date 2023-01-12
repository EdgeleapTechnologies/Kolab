#pragma once

//NOTE(Tiago): This can only be used once we remove all uses of std;
namespace std
{

template<typename Type>
class initializer_list
{
private:
    const Type* m_begin = nullptr;
    const Type* m_end = nullptr;

public:
#ifdef _MSC_VER
    initializer_list(const Type* first, const Type* last)
        :m_begin(first), m_end(last) {}
#else
    initializer_list(const Type* first, size_t len)
        :m_begin(first), m_end(first + len) {}
#endif

    const Type* begin() const
    {
        return this->m_begin;
    }

    const Type* end() const
    {
        return this->m_end;
    }

    size_t size() const
    {
        return m_end - m_begin;
    }

};

}

