#import "template.typ": *

#show: report.with(
  title: "本科生实习报告书",
  banner: "banner.png",
  school: "摸鱼学院摸鱼专业",
  grade: "xxxx 级 x 班",
  name: "张三",
  stu_id: "22223333",
  company: "某某公司",
  start_time: "2077 年 7 月 1 日",
  end_time: "2077 年 8 月 31 日",
  teacher: "李四",
  year: "2077",
  month: "12",
  day: "25",
)

// Add your content here
1. `C++` 中 Hello World 的 114514 种写法

1.1 C With Class 风格

```cpp
#include <stdio.h>

int main() {
  printf("Hello World!\n");
  return 0;
}
```

1.2 C++ 风格

```cpp
#include <iostream>

using namespace std;

int main() {
  cout << "Hello World!\n";
  return 0;
}
```

1.3 面向对象风格

```cpp
#include <iostream>

using namespace std;

class HelloWorld {
private:
  const char *str = "Hello World!";

public:
  HelloWorld() {
    cout << str << endl;
  }
};

int main() {
  HelloWorld hw;
  return 0;
}
```

1.5 操作符重载风格

```cpp
#include <iostream>
#include <ostream>

using namespace std;

class HelloWorld {
private:
  const char *str = "Hello World!";

public:
  friend ostream &operator<<(ostream &os, const HelloWorld &hw);
};

ostream &operator<<(ostream &os, const HelloWorld &hw) {
  os << hw.str;
  return os;
}

int main() {
  cout << HelloWorld() << endl;
}
```

1.6 操作符重载 (2)

```cpp
#include <iostream>

using namespace std;

class HelloWorld {
private:
  const char *str = "Hello World!";

public:
  operator int() {
    cout << str << '\n';
    return 0;
  }
};

int main() {
  return HelloWorld();
}
```

1.7 抽风风格

```cpp
#include <iostream>

using namespace std;

class HelloWorld {
private:
  const char *str = "Hello World!";

public:
  ~HelloWorld() {
    cout << str << endl;
  }
};

HelloWorld hw;

int main() {
  return 0;
}
```

1.8 仿 lambda 风格

```cpp
#include <iostream>

using namespace std;

class HelloWorld {
private:
  const char *str = "Hello World!";

public:
  int operator()() {
    cout << str << endl;
    return 0;
  }
};

HelloWorld hw;

int a = hw();

int main() {
  return a;
}
```

1.9 lambda 风格

```cpp
#include <iostream>

using namespace std;

auto f = []() -> int {
  cout << "Hello World\n";
  return 0;
};

int main() {
  return f();
}
```

...

#lorem(2500)

