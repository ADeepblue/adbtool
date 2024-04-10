//
// Created by Deepblue on 2024/4/8.
//
#include "iostream"
#include "filesystem"

namespace fs = std::filesystem;

int main(){

    fs::path workpath = fs::current_path();
    printf("");
    return 0;
}



#include <iostream>
#include <filesystem>

namespace fs = std::filesystem;

int main() {
    fs::path newDir = "C:\\Users\\User\\Documents\\NewFolder";
    fs::create_directory(newDir);
    std::cout << "Created directory: " << newDir << std::endl;
    return 0;
}
