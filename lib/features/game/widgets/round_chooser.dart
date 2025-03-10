import 'package:flutter/material.dart';

class RoundChooser extends StatefulWidget {
  const RoundChooser({
    super.key,
    required this.onGuessesChanged,
  });
  final Function(int) onGuessesChanged;

  @override
  State<RoundChooser> createState() => _RoundChooserState();
}

class _RoundChooserState extends State<RoundChooser> {
  int _guesses = 1;

  void _increment() {
    if (_guesses < 10) {
      setState(() => _guesses++);
      widget.onGuessesChanged(_guesses);
    }
  }

  void _decrement() {
    if (_guesses > 1) {
      setState(() => _guesses--);
      widget.onGuessesChanged(_guesses);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Text(
            'Rounds',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: _decrement,
                icon: Icon(Icons.remove_circle_outline),
              ),
              SizedBox(width: 16),
              Text(
                _guesses.toString(),
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(width: 16),
              IconButton(
                onPressed: _increment,
                icon: Icon(Icons.add_circle_outline),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
