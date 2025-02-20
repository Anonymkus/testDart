import 'dart:io';

void main(List<String> arguments) {
  File myFile = File('chokopie.txt');
  myFile.createSync();
  if (myFile.existsSync())
  {
    print("Файл есть");
  }
  else
  {
    print("Файла нет");
  }

  var stat = myFile.statSync();

  print("Размер файла: ${stat.size} байта");

  myFile.writeAsStringSync('\nNew text', mode: FileMode.append);

  myFile.copySync('news.txt');
  myFile.renameSync('renamed.txt');
}
