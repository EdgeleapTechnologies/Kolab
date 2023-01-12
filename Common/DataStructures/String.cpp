#include "String.h"
#include "DataStructures/String.h"
#include "Types.h"

namespace Kolab
{

string::string(const char* string):m_string(string) {}
string::string(const string& string):m_string(string.m_string) {}
string::string(string&& string):m_string((std::string&&)string.m_string) {}

const char* string::ptr() const
{
    return this->m_string.data();
}

char& string::operator[](uArchInt index)
{
    return this->m_string[index];
}

char string::at(uArchInt index) const
{
    return this->m_string[index];
}

uArchInt string::length() const
{
    return this->m_string.size();
}

}
