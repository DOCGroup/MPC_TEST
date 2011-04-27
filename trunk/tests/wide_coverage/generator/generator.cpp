#include "generator_be.h"
#include <sys/stat.h>
#include <ctype.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <string>

#if defined(WIN32)
#include <windows.h>
#define makedir(X,Y) CreateDirectory(X, 0)
#else
#define makedir(X,Y) mkdir(X,Y)
#endif

const char* exebase(const char* str)
{
  for(int i = strlen(str) - 1; i >= 0; i--) {
    if (str[i] == '/' || str[i] == '\\') {
      return (str + i + 1);
    }
  }

  return str;
}

static char* rtrim(char* str)
{
  int i, length;

  length = strlen(str) - 1;

  for(i = length; i >= 0; i--) {
    if (!isspace(str[i])) {
      break;
    }
    else {
      str[i] = '\0';
    }
  }

  return str;
}

static char* ltrim(char* str)
{
  int i, length;

  length = strlen(str);

  for(i = 0; i < length; i++) {
    if (!isspace(str[i])) {
      break;
    }
  }

  strcpy(str, str + i);
  return str;
}

static void usageAndExit(const char* name, const char* msg = 0)
{
  int status = 0;
  if (msg != 0) {
    printf("%s\n", msg);
    status++;
  }
  printf("Usage: %s [-n <name>] [-o <output dir>] <keyword file>\n", name);
  exit(status);
}

int main(int argc, char** argv)
{
  int status = 0;
  std::string outputdir = ".";
  std::string key_file;
  std::string name;

  for(int i = 1; i < argc; i++) {
    if (strcmp(argv[i], "-n") == 0) {
      i++;
      if (i < argc) {
        name = argv[i];
      }
      else {
        usageAndExit(argv[0], "-n requires a name parameter");
      }
    }
    else if (strcmp(argv[i], "-o") == 0) {
      i++;
      if (i < argc) {
        outputdir = argv[i];
      }
      else {
        usageAndExit(argv[0], "-o requires a directory name parameter");
      }
    }
    else if (key_file.length() == 0) {
      key_file = argv[i];
    }
    else {
      usageAndExit(argv[0]);
    }
  }

  if (key_file.length() == 0) {
    usageAndExit(argv[0], "You must pass a keyword filename");
  }
  else {
    if (name.length() == 0) {
      name = key_file;
      size_t extstart = name.rfind('.');
      if (extstart != std::string::npos) {
        name.resize(extstart);
      }
    }

    std::string pre;
    if (outputdir.length() != 0) {
      pre = outputdir + "/";
      makedir(outputdir.c_str(), 0755);
    }
    std::string header = pre + name + ".h";
    std::string source = pre + name + ".cpp";

    generator_be generator(header.c_str(), source.c_str());
    generator_be::KeywordList keywords; FILE* fp =
    fopen(key_file.c_str(), "r"); if (fp != 0) {
      while(!feof(fp)) {
        char line[4096] = "";
        fgets(line, 4096, fp);
        ltrim(rtrim(line));

        if (strlen(line) != 0) {
          keywords.push_back(line);
        }
      }
      fclose(fp);

      if (generator.generate(keywords)) {
        fprintf(stderr, "Error while generating from %s\n", key_file.c_str());
        status = 1;
      }
    }
    else {
      fprintf(stderr, "Unable to open %s for reading\n", key_file.c_str());
      status = 1;
    }
  }

  return status;
}
