// cerner_2^5_2019
class Person {
  name: string;
  constructor(name:string) { this.name = name }
  speak() { 
    console.log(`Hello, my name is ${this.name}`);
  }
}

class Dog {
  name: string;
  constructor(name:string) { this.name = name }
  speak() {
    console.log("Bark bark!");
  }
}

let person: Person = new Person("Earl");
person.speak();
// uuuuuuuhhhhhh wut
let dog: Person = new Dog("Spot");
dog.speak();