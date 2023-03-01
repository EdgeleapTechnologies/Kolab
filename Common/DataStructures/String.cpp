#include "String.h"
#include "DataStructures/String.h"
#include "Types.h"

namespace Kolab
{

string::string(const char* string): m_string(string){};
string::string(string&& string): m_string(rmove(string.m_string)){};

string& string::operator=(const string& other)
{
    if(&other == this) return *this;
    this->m_string = other.m_string;
    return *this;
}

string& string::operator=(string&& other)
{
    if(&other == this) return *this;
    this->m_string = rmove(other.m_string);
    return *this;
}

char* string::ptr() const
{
    return (char*)this->m_string.c_str();
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
