#pragma once

namespace Kolab
{

class string
{
private:
    char* m_string = nullptr;
public:
    string() = default;
    string(const char* string);
    ~string() = default;
};

}
