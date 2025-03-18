let depts = [
  {  deptid: 1, deptname:'개발', teamid:'t1', teamname : '기획' },
  {  deptid: 1, deptname:'개발', teamid:'t2', teamname : '구현' },
  {  deptid: 2, deptname:'인사', teamid:'t3', teamname : '총무' },
  {  deptid: 2, deptname:'인사', teamid:'t4', teamname : '회계' },
  {  deptid: 2, deptname:'인사', teamid:'t5', teamname : '관리' },
]

const map = new Map();

//1. 부서명 중복값 제거( Map 사용 )
depts.forEach(item => map.set(item.deptid, {deptname: item.deptname, teams : []}));

/* 계층형으로 변환 */
depts.forEach(item => map.get(item.deptid).teams.push( { teamid: item.teamid, teamname:item.teamname }) );

//출력
map.forEach( item => console.log(item.deptname, item.teams));
