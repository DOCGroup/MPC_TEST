#include <qapplication.h>
#include "demo.h"

int main(int argc, char **argv)
{
  QApplication a(argc, argv);

  Form1 *f = new Form1(0, "Form1", 0);

  a.setMainWidget(f);
  f->show();

  return a.exec();
}

