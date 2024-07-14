# JavaScript Interview Questions & Answers

| No. | Questions |
|---- | ---------
|1  | [What are different data types in JavaScript](#what-are-different-data-types-in-javaScript) |
|2  | [Is Javascript single-threaded?](#is-javascript-single-threaded?)|


1. ### What are different data types in JavaScript
    JavaScript has a variety of data types that can be broadly categorized into two groups: primitive types and objects. Here is an overview of each data type in JavaScript:

    #### Primitive Types
    1. Number: Represents both integer and floating-point numbers.

        ```javascript
        
            let age = 25;
            let price = 19.99;
        ```
    2. String: Represents a sequence of characters used to represent text.

        ```javascript
    
        let name = "Alice";
        let greeting = 'Hello, world!';
        ```
    3. Boolean: Represents a logical entity and can have two values: true or false.

        ```javascript
        let isActive = true;
        let hasPermission = false;
        ```
    4. Undefined: A variable that has been declared but not assigned a value.

        ```javascript
        let x;
        console.log(x); // Output: undefined
        ```
    5. Null: Represents the intentional absence of any object value.

        ```javascript
        let y = null;
        ```
    6. Symbol: Represents a unique identifier.

        ```javascript
        let sym = Symbol('identifier');
        ```
    7. BigInt: Represents integers with arbitrary precision.

        ```javascript
        let bigInt = 1234567890123456789012345678901234567890n;
        ```
    ### Objects
    1. Object: A collection of properties, where each property is defined as a key-value pair.

        ```javascript
        let person = {
            name: "John",
            age: 30
        };
        ```
    2. Array: A list-like object used to store multiple values.

        ```javascript
        let colors = ["red", "green", "blue"];
        ```
    3. Function: A block of code designed to perform a particular task.

        ```javascript
        function greet(name) {
            return `Hello, ${name}!`;
        }
        ```
    4. Date: Represents a single moment in time.

        ```javascript
        let now = new Date();
        ```
    5. RegExp: Used for matching text with a pattern.

        ```javascript
        let pattern = /ab+c/;
        ```
    6. Map: A collection of keyed data items, similar to an object but with more capabilities.

        ```javascript
        let map = new Map();
        map.set('name', 'Alice');
        ```
    7. Set: A collection of unique values.

        ```javascript
        let set = new Set([1, 2, 3]);
        ```
    8. WeakMap: A collection of key/value pairs where the keys are weakly referenced.

        ```javascript
        let weakMap = new WeakMap();
        ```
    9. WeakSet: A collection of unique values where the values are weakly referenced.

        ```javascript
        let weakSet = new WeakSet();
        ```
    ### Type Checking
    1. To check the type of a variable, you can use the typeof operator for most primitive types and some objects:

        ```javascript
            console.log(typeof 123);        // "number"
            console.log(typeof 'hello');    // "string"
            console.log(typeof true);       // "boolean"
            console.log(typeof undefined);  // "undefined"
            console.log(typeof Symbol());   // "symbol"
            console.log(typeof 123n);       // "bigint"
            console.log(typeof null);       // "object" (a historical bug in JavaScript)
            console.log(typeof {});         // "object"
            console.log(typeof []);         // "object"
            console.log(typeof function(){}); // "function"
        ```
    2. For more precise type checking, especially for arrays and null, you can use Array.isArray() and strict equality === for null:

        ```javascript
        console.log(Array.isArray([])); // true
        console.log(null === null);     // true
        ```
2. ### Is Javascript single-threaded?
    JavaScript is single-threaded, which means it executes code in a single sequence, one operation at a time, using a single call stack. However, it can handle asynchronous operations efficiently with the help of the event loop, callback queue, and Web APIs, which allow it to perform tasks like I/O, network requests, and timers without blocking the main execution thread. This design enables JavaScript to maintain responsiveness in web applications even when dealing with asynchronous tasks.