var fs = ign.filesystem();
// Load file function
var loadFile = function() {
  var path = $('#inputFileName').val();
  $('#newFileName').val(path);
  var fileBuffer = fs.fileRead(path);
  $('#text-area').val(fileBuffer);
  $('#text-area').change();
  if ($('#text-area')[0].scrollHeight > $('#text-area').height()) {
    $('#text-area').css('height', 'auto');
    $('#text-area').height($('#text-area')[0].scrollHeight);
  }
}

// Save file function
var saveFile = function() {
  var filepath = $('#newFileName').val();
  var text = $('#text-area').val();
  fs.fileWrite(filepath,text);
}

// Undo / Redo function
var formatText = function(act, sel) {
  document.execCommand(act, false, sel);
}

// Select File
var selectFile = function(){
  var target = fs.saveFileDialog();
  if(target != ""){
    $('#newFileName').val(target);
  }
}

$(function() {

  // Window properties
  var win = $(window);
  var w_win = win.width();
  var h_win = win.height();

  // Text area properties
  var t = $('#text-area');
  var w_t = w_win;
  var h_t = h_win;

  // Set wrapper, line number, and text area height x width for the first time
  t.isEditable = true;
  w_t = w_win - 5;
  h_t = h_win - 70;
  t.css('width', w_t);
  t.css('height', h_t);

  // Set wrapper, line number, and text area height x width when window resized
  win.resize(function() {
    w_win = win.width();
    h_win = win.height();
    w_t = w_win - 5;
    h_t = h_win - 70;
    t.css('width', w_t);
    t.css('height', h_t);
  });

  // Customize input file
  $('#openFile').click(function() {
    var path = fs.openFileDialog();
    $('#inputFileName').val(path);
  });

  // Load file action
  $('#loadFile').on('click', '', function() {
    loadFile();
  });

  // Save file action
  $('#saveFile').on('click', '', function() {
    saveFile();
  });

  // Undo / Redo action
  $('#undoAction').on('click', '', function() {
    formatText('undo');
  });
  $('#redoAction').on('click', '', function() {
    formatText('redo');
  });

});
