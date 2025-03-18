const person1 = {
  age: 10,
  grow: function(){
    this.age++;
    console.log(this.age)
  }
};

person1.grow();


const person2 = {
  age: 10,
  grow: ()=>{                    //상위 스코프 window
    this.age++;
    console.log(this.age);
  }
};

person2.grow();