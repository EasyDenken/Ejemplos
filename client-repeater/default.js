$(document).ready(function() {
    $.ajax({
      type: "POST",
      url: "Default.aspx/GetFeedburnerItems",
      data: "{'Count':'7'}",
      contentType: "application/json; charset=utf-8",
      dataType: "json",
      success: function(msg) {
        ApplyTemplate(msg);
      }
  });
});

function BuildTable(msg) {
  var table = '<table><thead><tr><th>Date</th><th>Title</th><th>Excerpt</th></thead><tbody>';
  
  for (var post in msg)
  {
    var row = '<tr>';
    
    row += '<td>' + msg[post].Date + '</td>';
    row += '<td><a href="' + msg[post].Link + '">' + msg[post].Title + '</a></td>';
    row += '<td>' + msg[post].Description + '</td>';
    
    row += '</tr>';
    
    table += row;
  }
  
  table += '</tbody></table>';
  
  $('#Container').html(table);
}

function ApplyTemplate(msg) {
  $('#Container').setTemplateURL('RSSTable.tpl', 
                                 null, { filter_data: false});
  $('#Container').processTemplate(msg);
}