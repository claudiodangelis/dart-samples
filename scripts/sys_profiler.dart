import 'dart:io';

// Prints informations about current systems
// Linux only

main(){

  Process.run('uname',[]).then((ProcessResult results){
    if(results.stdout=='Linux\n'){

      Process.run('uname', ['-a']).then((ProcessResult results){
        print(results.stdout.split('\n')[0]);
      });

      Process.run('uptime',[]).then((ProcessResult results){
        print('Uptime: ${results.stdout}');
      });

      Process.run('cat', ['/proc/meminfo']).then((ProcessResult results){
        print('RAM: ${kilobytes2human(
            int.parse(
                results.stdout.split('\n')[0].replaceAll(new RegExp('[^0-9]'), ''))
        )}'
        );
      });

      Process.run('df',[]).then((ProcessResult results){
        for ( var line in results.stdout.split('\n')){
          if( line.contains('/dev/disk/')){
            print('Disk space: ${kilobytes2human(int.parse(line.split(' ')[2]))}');
          }
        }
      });

      Process.run('cat', ['/proc/cpuinfo']).then((ProcessResult results){
        for ( var line in results.stdout.split('\n')){

          if (line.contains("processor")){
            print(line.replaceAll("\t", ''));
          }

          if(line.contains("model name")){
            print(line.replaceAll(new RegExp('model name.*: '), ''));
          }
        }
      });
    }else{
      print('Sorry, this script doesn\'t work on non-Linux operating systems.');
    }
  });
}

String kilobytes2human(num value){

  List<String> units = ['KB','MB','GB','TB'];
  int unitIndex = 0;

  while(value>1024){
    value/=1024;
    unitIndex++;
  }

  return '${value.toStringAsFixed(2)} ${units[unitIndex]}';

}