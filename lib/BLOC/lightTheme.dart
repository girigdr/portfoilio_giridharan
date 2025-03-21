


import 'package:flutter_bloc/flutter_bloc.dart';




abstract class Icons1 {}
class IconsView extends Icons1 {
  double m ;
  IconsView ( this.m ) ;
}
class BlocOfIconView extends Bloc < Icons1 , double > {
  BlocOfIconView ( ) : super( 0 ) {

    on < IconsView > ( ( event , emit ) {
      emit( event.m ) ;
    }) ;

  }
}



abstract class PHONE {}
class Phone extends PHONE {
  double m ;
  Phone ( this.m ) ;
}
class BlocPhone extends Bloc < PHONE , double > {
  BlocPhone ( ) : super( 0 ) {
    on < Phone > ( ( event , emit ) {
      emit( event.m ) ;
    }) ;
  }

}


abstract class GIT {}
class Git extends GIT {
  double m ;
  Git ( this.m ) ;
}
class BlocGit extends Bloc < GIT , double > {
  BlocGit ( ) : super( 0 ) {
    on < Git > ( ( event , emit ) {
      emit( event.m ) ;
    }) ;
  }
}




abstract class LINKEDIN {}
class Linkedin extends LINKEDIN {
  double m ;
  Linkedin ( this.m ) ;
}
class BlocLinkedIn extends Bloc < LINKEDIN , double > {
  BlocLinkedIn ( ) : super( 0 ) {
    on < Linkedin > ( ( event , emit ) {
      emit( event.m ) ;
    }) ;
  }
}



abstract class LEETCODE {}
class Leetcode extends LEETCODE {
  double m ;
  Leetcode ( this.m ) ;
}
class BlocLeetcode extends Bloc < LEETCODE , double > {
  BlocLeetcode ( ) : super( 0 ) {
    on < Leetcode > ( ( event , emit ) {
      emit( event.m ) ;
    }) ;
  }
}




abstract class MAIL {}
class Mail extends MAIL {
  double m ;
  Mail ( this.m ) ;
}
class BlocMail extends Bloc < MAIL , double > {
  BlocMail () : super( 0 ) {
    on < Mail > ( ( event , emit ) {
      emit( event.m ) ;
    }) ;
  }
}




abstract class Page {} 
class SwitchPage extends Page {
  int page ;
  SwitchPage( this.page ) ;
}
class BlocSwitch extends Bloc < Page , int > {
  BlocSwitch() : super( 0 ) {
    on < SwitchPage > ( ( event , emit ) {
      emit( event.page ) ;
    }) ;
  }
}



abstract class WLine {} 
class WL extends WLine {
  double page ;
  WL( this.page ) ;
}
class BlocWL extends Bloc < WLine , double > {
  BlocWL() : super( 0 ) {
    on < WL > ( ( event , emit ) {
      emit( event.page ) ;
    }) ;
  }
}



abstract class edu {
  static void add(bool bool) {}
}


class EdTF extends edu {
  bool b ;
  EdTF( this.b ) ;
}

class BlocEdTF extends Bloc < edu , bool > {
  BlocEdTF() : super( false ) {
    on < EdTF > ( ( event , emit ) {
      emit( event.b ) ;
    }) ;

  }
}













// abstract class LightTheme {}

// class LightOrDark extends LightTheme {
//   bool b ;
//   LightOrDark( this.b )  ;
// }


// class ThemeSwitch extends Bloc < LightTheme , bool > {
//   ThemeSwitch() : super( true )  {
//     on < LightOrDark > ( ( event , emit ) {
//       emit( event.b) ;
//     }) ;
//   }
// }