import 'package:flutter/material.dart';

class TimerConfigView extends StatefulWidget {
  const TimerConfigView({super.key});

  @override
  State<TimerConfigView> createState() => _TimerConfigViewState();
}

class _TimerConfigViewState extends State<TimerConfigView> {
  String preparationTime = '02:20';
  String roundTime = '02:20';
  String restTime = '02:20';
  String rounds = '10';

  Widget _buildNumberPicker({
    required int value,
    required int min,
    required int max,
    required Color color,
    required Function(int) onChanged,
  }) {
    return Container(
      height: 200,
      width: 80,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListWheelScrollView(
        itemExtent: 50,
        diameterRatio: 1.5,
        physics: const FixedExtentScrollPhysics(),
        controller: FixedExtentScrollController(initialItem: value),
        children: List.generate(max - min + 1, (index) {
          final number = min + index;
          return Center(
            child: Text(
              number.toString().padLeft(2, '0'),
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: number == value ? color : Colors.grey,
              ),
            ),
          );
        }),
        onSelectedItemChanged: (index) {
          onChanged(min + index);
        },
      ),
    );
  }

  Widget _buildRoundsPicker({
    required int value,
    required Color color,
    required Function(int) onChanged,
  }) {
    return Container(
      height: 200,
      width: 80,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListWheelScrollView(
        itemExtent: 50,
        diameterRatio: 1.5,
        physics: const FixedExtentScrollPhysics(),
        controller: FixedExtentScrollController(initialItem: value - 1),
        children: List.generate(100, (index) {
          final number = index + 1;
          return Center(
            child: Text(
              number.toString().padLeft(2, '0'),
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: number == value ? color : Colors.grey,
              ),
            ),
          );
        }),
        onSelectedItemChanged: (index) {
          onChanged(index + 1);
        },
      ),
    );
  }

  void _showTimePickerModal(
    BuildContext context, {
    required String title,
    required Color color,
    required String initialTime,
    required Function(String) onTimeSelected,
  }) {
    final initialMinutes = int.parse(initialTime.split(':')[0]);
    final initialSeconds = int.parse(initialTime.split(':')[1]);

    int selectedMinutes = initialMinutes;
    int selectedSeconds = initialSeconds;

    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) => StatefulBuilder(
        builder: (context, setState) => Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 40,
                height: 4,
                margin: const EdgeInsets.only(bottom: 16),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: color,
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildNumberPicker(
                    value: selectedMinutes,
                    min: 0,
                    max: 59,
                    color: color,
                    onChanged: (value) {
                      setState(() {
                        selectedMinutes = value;
                      });
                      final minutes = selectedMinutes.toString().padLeft(2, '0');
                      final seconds = selectedSeconds.toString().padLeft(2, '0');
                      onTimeSelected('$minutes:$seconds');
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      ':',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: color,
                      ),
                    ),
                  ),
                  _buildNumberPicker(
                    value: selectedSeconds,
                    min: 0,
                    max: 59,
                    color: color,
                    onChanged: (value) {
                      setState(() {
                        selectedSeconds = value;
                      });
                      final minutes = selectedMinutes.toString().padLeft(2, '0');
                      final seconds = selectedSeconds.toString().padLeft(2, '0');
                      onTimeSelected('$minutes:$seconds');
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showRoundsPickerModal(
    BuildContext context, {
    required String title,
    required Color color,
    required String initialRounds,
    required Function(String) onRoundsSelected,
  }) {
    int selectedRounds = int.parse(initialRounds);

    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) => StatefulBuilder(
        builder: (context, setState) => Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 40,
                height: 4,
                margin: const EdgeInsets.only(bottom: 16),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: color,
                ),
              ),
              const SizedBox(height: 16),
              _buildRoundsPicker(
                value: selectedRounds,
                color: color,
                onChanged: (value) {
                  setState(() {
                    selectedRounds = value;
                  });
                  onRoundsSelected(value.toString());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildConfigSection(
    BuildContext context, {
    required String title,
    required Color color,
    required String time,
    required Function(String) onTimeSelected,
  }) {
    return Container(
      height: 64,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: GestureDetector(
        onTap: () => _showTimePickerModal(
          context,
          title: title,
          color: color,
          initialTime: time,
          onTimeSelected: onTimeSelected,
        ),
        child: Container(
          decoration: BoxDecoration(
            color: color.withOpacity(0.2),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: color),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: color,
                  ),
                ),
                Text(
                  time,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: color,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 16),
        _buildConfigSection(
          context,
          title: 'Preparation Time',
          color: Colors.blue,
          time: preparationTime,
          onTimeSelected: (time) => setState(() => preparationTime = time),
        ),
        _buildConfigSection(
          context,
          title: 'Round Time',
          color: Colors.green,
          time: roundTime,
          onTimeSelected: (time) => setState(() => roundTime = time),
        ),
        _buildConfigSection(
          context,
          title: 'Rest Time',
          color: Colors.orange,
          time: restTime,
          onTimeSelected: (time) => setState(() => restTime = time),
        ),
        Container(
          height: 64,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          child: GestureDetector(
            onTap: () => _showRoundsPickerModal(
              context,
              title: 'Set Number of Rounds',
              color: Colors.purple,
              initialRounds: rounds,
              onRoundsSelected: (value) => setState(() => rounds = value),
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.purple.withOpacity(0.2),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.purple),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Rounds',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple,
                      ),
                    ),
                    Text(
                      rounds,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
