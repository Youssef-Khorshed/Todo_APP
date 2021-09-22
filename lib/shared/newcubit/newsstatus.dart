abstract class Newsstatus {}
class NewsIntaialState extends Newsstatus{}
class NewsBottomnavigationlState extends Newsstatus{}
class News_b_loadinglState extends Newsstatus{}
class News_b_SuccessState extends Newsstatus{}
class News_b_errorState extends Newsstatus{
  late final String error;
  News_b_errorState(this.error);
}
class News_si_loadinglState extends Newsstatus{}
class News_si_SuccessState extends Newsstatus{}
class News_si_errorState extends Newsstatus{
  late final String error;
  News_si_errorState(this.error);
}
class News_sp_loadinglState extends Newsstatus{}
class News_sp_SuccessState extends Newsstatus{}
class News_sp_errorState extends Newsstatus{
  late final String error;
  News_sp_errorState(this.error);
}

class News_search_loadinglState extends Newsstatus{}
class News_search_SuccessState extends Newsstatus{}
class News_search_errorState extends Newsstatus{
  late final String error;
  News_search_errorState(this.error);
}

class News_Screenmode extends Newsstatus{}



