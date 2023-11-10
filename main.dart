/////변수1강

///일반 변수 타입 - 일반적인 변수들...
// void main() {
//   ///변수란 ? -변할 수 있는 수 (값)
//   ///자료형 - 변수가 저장허ㅏ는 데이터 형식
//   String name = "손드로이드"; //손드로이드 라는 문자열을 name이라는 변수에 값을 할당한다.
//   name = '준석2'; // 할당된 변수의 값을 변경
//   print(name);

//   int age = 30;
//   print(age);

//   //bool -true나 false의 논리를 정의할때 사용함.
//   bool isChecked = false;
//   print(isChecked);

//   //double - 소수 점 값을 표현하는 단위
//   double tall = 164.9;
//   print(tall);

//   //var - //dart 에서 지원하는 문법
//   //변수 값에 대한 타입을 추론하게 됩니다.

//   var name2 = '홍길동';
//   print(name2);

//   var age2 = 30;
//   print(age2);
// }

///dynamic type - 모든 데이터 타입을 포함할 수 있는 특수한 데이터 타입
// void main() {
//   //dynamic type - var 타입과는 다르게 인수를 할당할 때 마다 타입이 바뀌어도 상관없다.
//   dynamic car = 'benz';
//   car = 10;
//   print(car);
// }

///null safety(null 안정성) - 변수가 널이 될 수 있는지 명시적으로 지정할 수 있다.
///- 개발자의 실수 방지, 코드 안전성 향상

// void main() {
//   String name = 'hongdroid'; // not null
//   // String name2 = null; // 그냥 변수를 할당하면 에러가 발생된다. null 허용안함
//   String? name2 = null; //null (값이 비어있다.) null 허용함 ?
//   name2 = 'sondroid';
//   print(name2.length);

//   ///널 합류 연산자 (??)
//   String? name3 = null;
//   String result = name3 ?? 'sondroid';//절대 null이 올수 없게끔 했기 때문에 안정성 통과

//   print(result);
// }

///late 키워드
// late String name; //null, late 키워드로 인해서 초기화가 되지 않음
// //String? name2 와 같은 방법이지만 late의 경우 어느시점에는 반드시 값을 할당한다.

// void main() {
//   name = '홍길동'; // 늦은 초기화
// }

///상수 - 항상 같은 수
// void main() {
//   //final 키워드 - 최초에 값이 한번 할당되면 다시 할당할 수 없습니다. (런타임)
//   final int testVal = 30;
//   // testVal = 10; //한번 값이 할당되면 바꿀수 없다.
//   // 대신 최기화 되지 않은 상태에서 나중에 최초값을 할당 할수 있다.

//   //const 키워드 - 최초에 값이 한번 할당되면 다시 할당할 수 없습니다. (컴파일)
//   //+선언과 동시에 값을 할당해야 한다.(해당 값은 컴파일 시점에서 결정되어야만 한다.)
//   //런타임 시점은 컴파일 시점보다 늦은 시점이다.

//   const int testVal2 = 10;
//   // testVal2 = 10;
//   //초기화 되지 않은 상태에서 나중에 최초값을 할당 할 수 조차 없다.
// }

// ///연산자
// void main() {
//   ///1. 산술 연산자
//   int a = 10;
//   int b = 3;

//   //덧셈
//   int sum = a + b;
//   print(sum);
//   //뺄셈
//   int minus = a - b;
//   print(minus);
//   //곱셈
//   int product = a * b;
//   print(product);
//   //나눗셈
//   double divided = a / b;
//   print(divided);
//   //나머지
//   int remain = a % b;
//   print(remain);
//   //몫
//   int mok = a ~/ b;
//   print(mok);

//   ///2. 비교 연산자
//   bool isResult = (a == b); //false
//   print(isResult);

//   bool isResult2 = (a > b);
//   print(isResult2);

//   ///3. 논리 연산자
//   bool result1 = (true || false); // 논리 합(OR)
//   print(result1);

//   bool result2 = (false && false); // 논리 곱(AND)
//   print(result2);

//   bool result3 = !result2; // 논리 부정(NOT)
//   print(result3);

//   ///4. 할당 연산자
//   int c = 10;
//   c += 30;
//   print(c);
//   c -= 10;
//   c *= 10;

//   ///5. 조건 연산자
//   int age = 30;
//   String ageStatus = age >= 18 ? '성인' : '미성년자'; // 3항 연산자
//   print(ageStatus);
// }

///조건문과반복분
// void main() {
//   //if -else 조건문
//   int age = 50;

//   if (age <= 19) {
//     print("미성년자 입니다.");
//   } else if (age == 50) {
//     print('중년 입니다.');
//   } else {
//     print("성인 입니다.");
//   }

//   /// switch 문 (조건문)
//   String grade = 'C';
//   switch (grade) {
//     case 'A':
//       print('우수등급!');
//       break;
//     case 'B':
//       print('보통등급');
//       break;
//     case 'C':
//       print('부족등급');
//       break;
//     case 'D':
//       print('매우부족등급');
//       break;
//     default:
//       print('평가없음');
//       break;
//   }

//   ///for 반복문 - 일정한 범위에서 반복 작업을 수행할 때 사용
//   for (int i = 0; i < 5; i++) {
//     print('반복합니다.$i'); // String interpollation
//   }

//   ///while 반복문 - 조건이 참인 동안 반복 작업을 수행할 때 사용합니다.
//   int count = 0;
//   while (count < 3) {
//     print('While 반복 $count');
//     count++;
//   }
// }

///List - 순서가 있는 데이터 컬렉션(index)라는 개념을 활용해서 데이터 요소에 접근 할 수 있음

// List<int> numbers = [];
// //데이터가 들어있는 리스트
// List<int> numbers2 = [
//   1,
//   2,
//   3,
//   4,
//   5,
// ];

// ///Map - 키(Key) 와 값(Value)의 한 쌍으로 데이터를 저장하는 컬렉션, 각 키는 고유하며 키를 사용하여 불러옴.
// //빈 Map 생성
// Map<String, int> scoreMap = {};

// //데이터가 삽입된 Map 생성
// Map<String, int> scoreMap2 = {
//   '홍길동': 100,
//   '이홍철': 30,
//   '정발산': 50,
// };

// void main() {
//   print(numbers2[2]);
//   //리스트에 요소 (데이터) 추가
//   numbers.add(6);
//   print(numbers[0]);

//   //for문(반복문)을 활용해서 list의 데이터들을 모두 가져오기
//   for (int i = 0; i < numbers2.length; i++) {
//     print('$i ${numbers2[i]}');
//   }

//   //리스트의 요소 제거
//   numbers2.removeAt(0);

//   //리스트의 요소 수정
//   numbers.add(7);
//   numbers[0] = 8;
//   print(numbers[0]);

//   ////////
//   //Map 요소에 접근
//   print(scoreMap2['홍길동']);
//   //Map 값을 추가 하거나 갱신
//   scoreMap2['고길동'] = 88;
//   print(scoreMap2['고길동']);

//   ///Map 의 배열 순회하여 값들 가져오기(fore-each문)
//   scoreMap2.forEach((key, value) {
//     print('$key의 접수는 $value 입니다.');
//   });
// }

///함수와메서드

///함수 (Function) -코드의 논리를 분리하고 재 사용성을 높이는 데 사용 됩니다.
///함수 이름, 매개 변수(Parameter) 변환 유형 (return type) 으로 구성.
// void main() {
//   //프로그램의 시작지점인 main 함수
//   print(add(5, 3)); // 함수 호출
//   setStart();
// }

// int add(int a, int b) {
//   a = 20;
//   b = 30;
//   a = a * b;
//   return a + b;
// }

// void setStart() {
//   print('시작합니다.');
// }

// ///메서드 (Method) -클래스 내부에서 정의된 함수

// class UserInfo {
//   String name;
//   int age;
//   String hobby;

//   void setStart(){

//   }
// }

/// ** Positional Parameter vs named Parameter **

// void setStart(String name, int age) {
//   print('called set Started $name , $age');
// }

// //named Parameter - 명명파라미터(순서에 상관없이 값을 지정해서 매개변수를 넘겨준다.)
// //매개변수를 중괄호로 묶어주고 기본값을 설정해준다.
// void setStart2({String name = '홍길동', int age = 24}) {
//   print('called set Started $name, $age');
// }

// //named Parameter with required 필수적으로 매개변수를 넘겨줘야 한다. 그렇기 때문에
// //디폴트 밸류를 안적어도 상관이 없다.
// void setStart3({required String name}) {
//   print('called set Started $name');
// }

// void main() {
//   setStart('손드로이드', 30); //함수호출
//   setStart2(age: 50);
//   setStart3(name: '홍길동');
// }

/// 클래스(class) - 객체를 생성하기 위한 템플릿 또는 청사진(blueprint), 설계도

// class Person {
//   //상태 - 멤버 변수
//   String name; //이름
//   int age; //나이

//   //생성자(Constructor) - 함수
//   Person(this.name, this.age);

//   //행동 - 메서드 (함수)
//   void sayHello() {
//     print('안녕하세요 저는 $name 이고 $age 살 입니다.');
//   }
// }

// /// 상속 - 기존 클래스의 특성을 다른 클래스에서 재사용하고 확장하는 매커니즘
// /// 부모클래스(super class)와 자식 클래스(sub class) 간의 상속 관계가 형성
// class Man extends Person {
//   Man(String name, int age) : super(name, age);

//   @override
//   void sayHello() {
//     super.sayHello();
//     print('\n 제 성별은 남자 입니다.');
//   }
// }

// void main() {
//   Person person = new Person('홍드로이드', 30); //클래스 인스턴스 생성
//   Person person2 = new Person('홍길동', 50); //클래스 인스턴스 생성
//   Person person3 = new Person('이홍철', 20); //클래스 인스턴스 생성

//   person.sayHello(); //함수 내의 메서드 호출
//   person2.sayHello();
//   person3.sayHello();

//   var man = new Man('홍길동', 100);

//   man.sayHello();
// }

///생성자와 선택적 매개변수
///생성자(Contructor) - 클래스의 인스턴스를 초기화 하는 특별한 메서드. 클래스를 생성할때 가장 먼저 호출되는 자

// class Person {
//   //기본생성자(default contrstructor) - 클래스에서 별도의 생성자를 정의하지 않는다면, 기본생성자가 사용됨.생략도 가능!
//   Person();
// }

// class Person2 {
//   String name;
//   int age;

//   Person2(this.name, this.age);
// }

// class Person3 {
//   String name;
//   int age;

//   Person3({this.name = '홍길동', this.age = 20});
// }

// class Person4 {
//   String name;
//   int age;
//   Person4({required this.name, required this.age});
// }

// void main() {
//   var person = new Person(); // 클래스 인스턴스 생성(메모리에 올림)
//   var person2 = new Person2('홍드로이드', 30);
//   var person3 = new Person3(name: '홍드');
//   var person4 = new Person4(name: '이홍철', age: 10);
// }

///enum types
///enum (열거형) - 타입 정의 보통 많이 사용!, 상수들의 그룹을 정의할 때 유용합니다.
///왜 필요? - 협업하는 개발자들 간의 코드를 더 읽기 쉽고 이해하기 쉽게 만들어 줄 수 있기 때문에

// enum Color {
//   red,
//   green,
//   blue,
//   yellow,
// }

// void main() {
//   // enum 값을 변수에 할당
//   Color myColor = Color.blue;

//   //조건문으로 enum값을 비교
//   if (myColor == Color.red) {
//     print('빨간색');
//   } else if (myColor == Color.blue) {
//     print('파란색');
//   } else if (myColor == Color.green) {
//     print('초록색');
//   } else if (myColor == Color.yellow) {
//     print('노란색');
//   }

//   print(Color.blue.index);

//   for (int i = 0; i < Color.values.length; i++) {
//     print(Color.values[i]);
//   }
// }

/// Future와 await을 활용한 비동기 프로그래밍
/// Future(미래) - 비동기 작업의 결과 또는 완료 상태를 나타내는 객체
/// 동기 vs 비동기
/// 동기 - 작업이 순차적으로 실행
// /// 비동기 - 작업이 순차적으로 실행되지 않고 , 동시에 여러 작업을 처리 할 수 있습니다.
// void main() {
//   playComputerGage();
// }

// Future<void> playComputerGage() async {
//   startBoot(); // 1. 컴퓨터를 부팅한다.
//   await startInternet(); //2. 인터넷 실행
//   startGame(); // 3. 게임을 실행
// }

// void startBoot() {
//   print('1.boot completed');
// }

// Future<void> startInternet() async {
//   //sleep Vs delay
//   //await - 비동기 함수 내에서 사용되며, await 뒤에 나오는 결과 같이 완료될 때까지 실행을 일시적으로 중단시켜줍니다.
//   await Future.delayed(Duration(seconds: 3), () {
//     print('2.internet completed');
//   });
//   print('delay completed');
// }

// void startGame() {
//   print('3.game completed');
// }
