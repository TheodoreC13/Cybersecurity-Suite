#include <iostream>
using namespace std; //name spaces prevent name collisions

// # define myname Theodore //here is where we would using define macros
int globalint;              // a global variable is declared before main
extern int exglobalint;     // an extern global int, can be used by other classes.

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

int main()
{
    static int testnumber = 0; // C++ has static variables available as well, not removed untill program finishes executing.
    // The following variables will all be instance variables. Variables defines inside a function are local variables.
    string mystring = "String are enclosed by double quotes.\"\nCharacters are enclosed by single quotes.\'";
    char mychar = 'c';
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
    exglobalint = 5;
    register int regint = 0; // register tried to store a variable in the microprocessor, if available. This increases speed. If a free register is not available they are stored in memory.
    // important: we can NOT obtain the address of a register variable using pointers.
    std::cout << "Hello World!\n";
    cout << "Theodore's First C++ project.\n" << endl;
}