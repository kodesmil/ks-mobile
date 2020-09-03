import 'package:feat_ion/feat_ion.dart';
import 'package:feat_services/src/session_evaluation_store.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lib_lego/lib_lego.dart';
import 'package:lib_services/lib_services.dart';
import 'package:lib_shared/lib_shared.dart';
import 'package:provider/provider.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class ServiceSessionEvaluationPage extends StatefulWidget {
  final ServiceSession session;

  ServiceSessionEvaluationPage(this.session);

  @override
  ServiceSessionEvaluationPageState createState() =>
      ServiceSessionEvaluationPageState();
}

class ServiceSessionEvaluationPageState
    extends State<ServiceSessionEvaluationPage> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ProxyProvider<ServicesClient, ServiceSessionEvaluationStore>(
          update: (_, dep, __) => ServiceSessionEvaluationStore(
            ErrorStore(),
            LoadingStore(),
            dep,
          ),
        ),
      ],
      child: ServiceSessionEvaluationContent(widget.session),
    );
  }
}

class ServiceSessionEvaluationContent extends StatefulWidget {
  final ServiceSession session;

  ServiceSessionEvaluationContent(this.session);

  @override
  _ServiceSessionEvaluationContentState createState() =>
      _ServiceSessionEvaluationContentState();
}

class _ServiceSessionEvaluationContentState
    extends State<ServiceSessionEvaluationContent> {
  final _commentController = TextEditingController();
  double _recommendationRate = 0.0;

  @override
  void didChangeDependencies() async {
    final store = Provider.of<ServiceSessionEvaluationStore>(context);
    store.evaluation = ServiceSessionEvaluation();
    _commentController.addListener(_commentListener);
    _commentController.text = store.evaluation.comment;
    _recommendationRate = store.evaluation.recommendationRate;
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _commentController.removeListener(_commentListener);
    super.dispose();
  }

  void _commentListener() {
    final store = Provider.of<ServiceSessionEvaluationStore>(
      context,
      listen: false,
    );
    store.evaluation = store.evaluation.copyWith((e) {
      e.comment = _commentController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<ServiceSessionEvaluationStore>(context);
    return CupertinoPageScaffold(
      navigationBar: KsSmallNavigationBar(title: 'Evaluation'),
      child: Material(
        child: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Material(
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          TextField(
                            textCapitalization: TextCapitalization.none,
                            controller: _commentController,
                            decoration: InputDecoration(
                              labelText: 'Comment',
                            ),
                          ),
                          SizedBox(height: 30),
                          SmoothStarRating(
                            onRated: (v) {
                              setState(() {
                                _recommendationRate = v;
                                store.evaluation =
                                    store.evaluation.copyWith((e) {
                                  e.recommendationRate = v;
                                });
                              });
                            },
                            starCount: 5,
                            rating: _recommendationRate,
                            size: 40,
                            color: Colors.yellow,
                            borderColor: Colors.yellow.withOpacity(0.5),
                            spacing: 5,
                          ),
                          SizedBox(height: 30),
                          OutlineButton(
                            child: Text('Done'),
                            shape: StadiumBorder(),
                            onPressed: () async {
                              await store.create(widget.session);
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
