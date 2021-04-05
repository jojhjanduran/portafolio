import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:portafolio/src/utils/values/responsive.dart';

class MainBloc implements Bloc {
  Responsive _responsive;

  Responsive get responsiveApp => this._responsive;

  setResponsiveApp(Responsive responsive) {
    this._responsive = responsive;
  }

  @override
  void dispose() {}
}
