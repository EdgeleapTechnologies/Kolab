#pragma once

#include <GLFW/glfw3.h>
#include <Types.h>
#include <DataStructures/String.h>
#include <DataStructures/ArrayView.h>

namespace Kolab
{

namespace Renderer
{

    class Window
    {
    public:
        uint32 width = 0;
        uint32 height = 0;

    private:
        GLFWwindow* m_window = nullptr;
        string test;

    public:
        Window();
    };

}

}
