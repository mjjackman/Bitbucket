var counter = 0;


function addToDoItemFields(html) {
  var html_1 = html.replace(/\]\[(\d+)\]\[/g, "][" + counter.toString() + "][");
  var html_2 = html_1.replace(/attributes\_(\d+)/g, counter.toString());
  console.log(html_2);
  $('#to-do-items').append(html_2);
  counter++;
}