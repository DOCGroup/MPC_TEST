
#include <iostream>
#include "hello.h"

Hello*
HelloFactory::createHello(const Fig& p) {
  std::cout << "p " << p << std::endl;
  return &hello_;
}

Hello::Hello() {
}

void Hello::hello(Fig& p) {
  std::cout << "Hello " << p << std::endl;
}

void Hello::zzz(long int& p) {
  std::cout << "zzz " << p << std::endl;
}

void Hello::poo(Hello*& p) {
  p = this;
}
