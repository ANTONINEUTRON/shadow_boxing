
import 'package:flutter/material.dart';

class PlayerSelector extends StatefulWidget {
  final Function(int) onPlayerSelected;

  const PlayerSelector({Key? key, required this.onPlayerSelected})
    : super(key: key);

  @override
  State<PlayerSelector> createState() => _PlayerSelectorState();
}

class _PlayerSelectorState extends State<PlayerSelector> {
  int _selectedPlayer = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: [
          Text(
            'Who starts?',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor:
                      _selectedPlayer == 1 ? Colors.green : Colors.red,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                ),
                onPressed: () {
                  setState(() {
                    _selectedPlayer = 1;
                    widget.onPlayerSelected(1);
                  });
                },
                child: Text(
                  'You',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight:
                        _selectedPlayer == 1
                            ? FontWeight.bold
                            : FontWeight.normal,
                  ),
                ),
              ),
              const SizedBox(width: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor:
                      _selectedPlayer == 2 ? Colors.green : Colors.red,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                ),
                onPressed: () {
                  setState(() {
                    _selectedPlayer = 2;
                    widget.onPlayerSelected(2);
                  });
                },
                child: Text(
                  'Player 2',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight:
                        _selectedPlayer == 2
                            ? FontWeight.bold
                            : FontWeight.normal,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
