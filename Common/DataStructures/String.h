#pragma once

#include <string>
#include <Types.h>

namespace Kolab
{

class string
{
private:
    std::string m_string = "";
public:
    string() = default;
    string(const char* string);
    string(const string& string);
    string(string&& string);
    ~string() = default;

    const char* ptr() const;
    char& operator[](uArchInt index);
    char at(uArchInt index) const;
    uArchInt length() const;
};

}
