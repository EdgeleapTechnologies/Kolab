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
    string(const string& string) = default;
    string(string&& string);
    ~string() = default;
    string& operator=(const string& other);
    string& operator=(string&& other);

    char* ptr() const;
    char& operator[](uArchInt index);
    char at(uArchInt index) const;
    uArchInt length() const;
};

}
