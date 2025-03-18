const race = "100m dash";
const runners = ["Usain Bolt","Justin Gatlin","Asafa Powell"];

// 객체 리터럴을 반환하는 경우 전체를 괄호로 감싼다
const results = runners.map((runner,i)=> ({name:runner, race, place: i+1}))

console.log(results);

