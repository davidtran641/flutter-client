import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:invoiceninja_flutter/ui/settings/client_portal.dart';
import 'package:redux/redux.dart';
import 'package:invoiceninja_flutter/redux/app/app_state.dart';

class ClientPortalBuilder extends StatelessWidget {
  const ClientPortalBuilder({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, ClientPortalVM>(
      converter: ClientPortalVM.fromStore,
      builder: (context, viewModel) {
        return ClientPortal(viewModel: viewModel);
      },
    );
  }
}

class ClientPortalVM {
  ClientPortalVM({
    @required this.state,
    @required this.onSavePressed,
    @required this.onCancelPressed,
  });

  static ClientPortalVM fromStore(Store<AppState> store) {
    final state = store.state;

    return ClientPortalVM(
      state: state,
    );
  }

  final AppState state;
  final Function(BuildContext) onSavePressed;
  final Function(BuildContext) onCancelPressed;
}
