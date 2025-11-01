import 'package:flutter/material.dart';

/// 検索バーウィジェット
class SearchBarWidget extends StatefulWidget {
  const SearchBarWidget({
    super.key,
    required this.onSearch,
    this.hintText = '検索キーワードを入力',
  });

  final void Function(String query) onSearch;
  final String hintText;

  @override
  State<SearchBarWidget> createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  final _controller = TextEditingController();
  final _focusNode = FocusNode();

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  void _onSubmit() {
    final query = _controller.text.trim();
    if (query.isNotEmpty) {
      widget.onSearch(query);
      _focusNode.unfocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      focusNode: _focusNode,
      decoration: InputDecoration(
        hintText: widget.hintText,
        prefixIcon: const Icon(Icons.search),
        suffixIcon: _controller.text.isNotEmpty
            ? IconButton(
                icon: const Icon(Icons.clear),
                onPressed: () {
                  _controller.clear();
                  setState(() {});
                },
              )
            : null,
      ),
      onChanged: (value) {
        setState(() {});
      },
      onSubmitted: (_) => _onSubmit(),
      textInputAction: TextInputAction.search,
    );
  }
}
