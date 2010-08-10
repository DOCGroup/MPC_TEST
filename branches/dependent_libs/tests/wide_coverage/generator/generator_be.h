#ifndef GENERATOR_BE_H
#define GENERATOR_BE_H

#include "generator_be_export.h"
#include <string>
#include <vector>

class GENERATOR_BE_Export generator_be
{
public:
  typedef std::vector<std::string> KeywordList;
  generator_be(const char* header,
               const char* source);
  ~generator_be();

  int generate(const KeywordList& keywords);

private:
  enum StringSize { strsize = 1024 };

  char header_[strsize];
  char source_[strsize];
};

#endif
