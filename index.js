'use strict';


var bindings = require('bindings')('aal');

console.log(bindings);
console.log(bindings.Utilities.s2ws('test'));
console.log(bindings.Accessible.getByPid(570000));

// var r = new bindings.Point();
// console.log(r);
// console.log(new bindings.Point());
setInterval(() => {
var accessibleRef = bindings.Accessible.getByPid(570);

//
// console.log(accessibleRef);
// console.log(accessibleRef.printNativeInfo());

accessibleRef.windows().forEach(function (window) {
  // window.printNativeInfo();
  var bounds = window.getBounds(false);
  // bounds.position.y += 5;
  // var r = new bindings.Rectangle();
  // console.log(r);
  // console.log(bounds);
  // window.setBounds(bounds);
  global.gc();
});
}, 10);
// accessibleRef.children().map((c) => {
//     c.printNativeInfo();
//
//   c.children().forEach((child) => {
//     child.printNativeInfo();
//   });
// });
