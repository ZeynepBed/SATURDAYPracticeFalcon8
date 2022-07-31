List<string> colorList = new list<string>();
colorList.add('Blue');
colorList.add('red');
colorList.add('purple');
colorList.add('green');
colorList.add('yellow');
system.debug('the color is '+ colorList);

list<string> colorList1 = new list<string>{'pink','orange'};
system.debug('color list 2 '+colorList1);

integer size = colorList.size();
system.debug(size);

Boolean isContainsRed = colorList.contains('red');
system.debug(isContainsRed);

string upperCase = colorList.get(size-1).toUpperCase();
system.debug(upperCase);