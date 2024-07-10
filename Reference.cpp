#include <iostream>  // Standard input/output stream. Contains objects like cin, cout, cerr
#include <iomanip>   // Standard i/o manipulators. Contains objects like setw, setprecision, etc.
#include <fstream>   // Standard file stream, handles data being read to and from files.
#include <cstdio>    // Standard C i/o, stdin, scanf, etc | Not recommended
using namespace std; // Standard name space


// # define myname Theodore //here is where we would using define macros
int globalint;              // a global variable is declared before main
extern int exglobalint;     // an extern global int, can be used by other classes.
thread_local int threadtest;// this is a variable that can be used locally be each thread. 

/* Run program : Ctrl + F5 or Debug > Start Without Debugging menu
   Debug program: F5 or Debug > Start Debugging menu
   Tips for Getting Started: 
   1. Use the Solution Explorer window to add / manage files
   2. Use the Team Explorer window to connect to source control
   3. Use the Output window to see build output and other messages
   4. Use the Error List window to view errors
   5. Go to Project > Add New Item to create new code files, or Project > Add Existing Item to add existing code files to the project
   6. In the future, to open this project again, go to File > Open > Project and select the .sln file */

// You can nest namespaces if needed/desired
// You can call a piece of the namespace like such
// namespace_test::function()
// if you put a class within a namespace you can call a function from that class by using
// namespace_test::Class::function()
namespace namespace_test 
{
    void function()
    {
        int local = 0; // This would be a local variable, destroyed after the function is finished
        static int count = 0; //A static variable inside a class gets created once only, every repeated call of this function will interact with the same variable.
        count++; // This could be useful for something like a count of how many times a function has run.
        cout << "Inside namespace test\n" << endl;
    }
}
namespace namespace_test2
{
    void function()
    {
        cout << "Inside namespace test2\n" << endl;
    }
}
class mTest {
public:
    mutable int x; // A mutable variable is mutable if the rest of the object is const
    mTest()
    {
        x = 10;
    }
};

int main()
{
    std::cout << "Hello World!\n";
    cout << "Theodore's First C++ project.\n" << endl;
    static int testnumber = 0; // C++ has static variables available as well, not removed untill program finishes executing.
    // The following variables will all be instance variables. Variables defines inside a function are local variables.
    // you can declare multiple variables of the same type at the same type, optionally you can also assign their value.
    int firstnumber = 5, secondnumber = 6;
    // Constants can be declared a few ways
    const int thirdnumber = 6; // Inherited from C. Can be initialized at run time or compile time.
    constexpr int hours_in_day = 24; // Initalized at compile time. 
    // #define myname Theodore
    // The third way as shown above is using # define, and it will replace the keyword with the following value. 
    // count << "My name is: " << myname; would print
    // My name is Theodore
    extern int globalint; // extern tells us that a variable is defined elsewhere and not within the block it is used. We first define it to tell the compiler the variable is defined elsewhere.
    globalint = 5;        // then we can mutate the extern variable.
    int exglobalint;
    exglobalint = 5;
    register int regint = 0; // register tried to store a variable in the microprocessor, if available. This increases speed. If a free register is not available they are stored in memory.
    // important: we can NOT obtain the address of a register variable using pointers.
    // Note: Register is deprecated in C++ 17 and onwards.
    const mTest t1;
    t1.x = 20; // You can mutate the constant variable in mtest becuase it's set to mutable
    string mystring = "String are enclosed by double quotes.\"\nCharacters are enclosed by single quotes.\'";
    char mychar = 'c';
    std::ios_base::sync_with_stdio(false);  // this will imrove the runtime of cin by preventing it from trying to sync with stdin. cin will be faster than scanf by 8-10%
    string userinput;
    cin >> userinput; //console input via user
    cout << "The user input: \"" << userinput << "\"\n";
    // scanf("%s", userinput); there are ways to make standard C I/O work in C++, not recommended
    char name[5];
    cin.getline(name, 4); // Will get the first x characters for the related variable. Stops at EOF or \n
    cout << name << "\n";
    char nm[20];
    cin.get(nm, 15);      // Does not stop at newline
    cout << nm << "\n";
    // ws ignore whitespace - getline(inputstream >> std::ws, storagelocation)
    // ends inserts null character into the output stream -> useful if something needs to be processed as a C string
    // flush flushes output stream
    cout << "Output message 1" << endl;       // endl and \n do almost the same thing. endl will flush the stream and put immediate output out. \n will just insert a newline.
    cout << "Output message 2\n" << flush;    // Equivalent to  the above line. just using \n can save time complexity since it doesn't immediately flush. \n costs 1 byte of memory. endl does not. \n is also supported by C. Endl is not.
    cerr << "An error has occurred.\n";     // unbuffered std error stream
    clog << "An error has occurred.\n";     // buffered standard error stream. Doesn't get written until full or flushed using flush()


    return 0;
}