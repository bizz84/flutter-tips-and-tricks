import 'package:scroll_to_index/scroll_to_index.dart';

class _TipsListViewState extends State<TipsListView> {
  // suggestedRowHeight is an estimate of the average item height
  final _controller = AutoScrollController(suggestedRowHeight: 68);

  @override
  void initState() {
    super.initState();
    _controller.scrollToIndex(
      widget.initialIndex,
      duration: const Duration(milliseconds: 1),
      preferPosition: AutoScrollPosition.middle,
    );
  }
}


ListView.builder(
  controller = _controller,
  itemBuilder = (_, index) {
    final tip = widget.flutterTips[index];
    return AutoScrollTag(
      key: ValueKey(index),
      controller: _controller,
      index: index,
      child: TipListTile(
        tipIndex: tip.tipIndex,
        title: tip.title,
      ),
    );
  })