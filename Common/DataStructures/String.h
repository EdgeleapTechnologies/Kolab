#pragma once

#include <string>

namespace Kolab
{

class string
{
private:
    std::string m_string = "";
public:
    string() = default;
    string(const char* string);
    ~string() = default;
};

}
