#include "generator_be.h"
#include <stdio.h>
#include <string.h>
#include <ctype.h>

generator_be::generator_be(const char* header,
                           const char* source)
{
  strcpy(header_, header);
  strcpy(source_, source);
}

generator_be::~generator_be()
{
}

int
generator_be::generate(const generator_be::KeywordList& keywords)
{
  int status = 1;
  FILE* fp = fopen(header_, "w");
  if (fp) {
    char guard[strsize];
    strcpy(guard, header_);
    size_t slength = strlen(guard);
    for(size_t o = 0; o < slength; o++) {
      if (guard[o] == '-' || guard[o] == '.' ||
          guard[o] == '/' ||  guard[o] == '\\') {
        guard[o] = '_';
      }
      else {
        guard[o] = toupper(guard[o]);
      }
    }

    fprintf(fp, "#ifndef %s\n"
                "#define %s\n\n", guard, guard);
    for(size_t i = 0; i < keywords.size(); i++) {
      fprintf(fp, "void %s();\n", keywords[i].c_str());
    }
    fprintf(fp, "\n#endif\n");
    fclose(fp);

    fp = fopen(source_, "w");
    if (fp) {
      fprintf(fp, "#include \"%s\"\n"
                  "#include <stdio.h>\n\n", header_);
      for(size_t j = 0; j < keywords.size(); j++) {
        fprintf(fp,
                "void %s() {\n"
                "  printf(\"Generated %s\\n\");\n"
                "}\n\n",
                keywords[j].c_str(), keywords[j].c_str());
      }
      fclose(fp);
      status = 0;
    }
  }

  return status;
}
