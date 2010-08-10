
typedef long int Fig;

class Hello {
public:
  Hello();
  void hello(Fig& p);
  void zzz(long& p);
  void poo(Hello*& zar);
};

class HelloFactory {
public:
  Hello* createHello(const Fig& p);

private:
  Hello hello_;
};

