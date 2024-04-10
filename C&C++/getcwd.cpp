#include <iostream>
#include <filesystem>

using namespace std;

namespace fs = std::filesystem;

int main() {
    //system("chcp 65001");

    //C++
    //std::cout<< "Hello, World中文!" << std::endl;
    //C
    //printf("hello world!&中文测试");
    fs::path currentDir = fs::current_path();
    //std:cout<< "current working directory: "<<currentDir<<std::endl;
    return 0;
}

