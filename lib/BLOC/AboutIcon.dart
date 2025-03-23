


import 'package:flutter_bloc/flutter_bloc.dart';

abstract class I1 {}
class IconsI1 extends I1 {
  double m ;
  IconsI1 ( this.m ) ;
}
class BlocOfI1 extends Bloc < I1 , double > {
  BlocOfI1 ( ) : super( 0 ) {

    on < IconsI1 > ( ( event , emit ) {
      emit( event.m ) ;
    }) ;

  }
}



abstract class I2 {}
class PhoneI2 extends I2 {
  double m ;
  PhoneI2 ( this.m ) ;
}
class BlocI2 extends Bloc < I2 , double > {
  BlocI2 () : super( 0 ) {
    on < PhoneI2 > ( ( event , emit ) {
      emit( event.m ) ;
    }) ;
  }

}


abstract class I3 {}
class GitI extends I3 {
  double m ;
  GitI ( this.m ) ;
}
class BlocGitI extends Bloc < I3 , double > {
  BlocGitI ( ) : super( 0 ) {
    on < GitI > ( ( event , emit ) {
      emit( event.m ) ;
    }) ;
  }
}




abstract class I4 {}
class LinkedinI extends I4 {
  double m ;
  LinkedinI ( this.m ) ;
}
class BlocL extends Bloc < I4 , double > {
  BlocL ( ) : super( 0 ) {
    on < LinkedinI > ( ( event , emit ) {
      emit( event.m ) ;
    }) ;
  }
}



abstract class I5 {}
class Leet extends I5 {
  double m ;
  Leet ( this.m ) ;
}
class BlocLeet extends Bloc < I5 , double > {
  BlocLeet ( ) : super( 0 ) {
    on < Leet > ( ( event , emit ) {
      emit( event.m ) ;
    }) ;
  }
}




abstract class I6 {}
class MailI extends I6 {
  double m ;
  MailI ( this.m ) ;
}
class BlocMailI extends Bloc < I6 , double > {
  BlocMailI () : super( 0 ) {
    on < MailI > ( ( event , emit ) {
      emit( event.m ) ;
    }) ;
  }
}
