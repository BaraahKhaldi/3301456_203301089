import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';

class FiltersScreen extends StatefulWidget {
  static const screenRoute = '/filters';

  final Function saveFilters;
  final Map<String, bool> currentFilters;

  FiltersScreen(this.currentFilters, this.saveFilters);

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  var _summer = false;
  var _winter = false;
  var _family = false;

  @override
  initState() {
    _summer = widget.currentFilters['summer'] ?? false;
    _winter = widget.currentFilters['winter'] ?? false;
    _family = widget.currentFilters['family'] ?? false;
    super.initState();
  }

  Widget buildSwitchListTile(String title, String subtitle, var currentValue, Function updateValue) {
    return SwitchListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      value: currentValue,
      onChanged: (bool value){
        updateValue(value);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filter'),
        actions: [
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () {
              final selectedFilters = {
                'summer': _summer,
                'winter': _winter,
                'family': _family,
              };
              widget.saveFilters(selectedFilters);
            },
          )
        ],
      ),
      drawer: AppDrawer(),
      body: Column(
        children: [
          SizedBox(height: 50),

      Expanded(
            child: ListView(
              children: [
                buildSwitchListTile(
                  '  Summer trips only',
                  '     Show trips in the summer only',
                  _summer,
                      (newValue) {
                    setState(() {
                      _summer = newValue;
                    });
                  },
                ),

                buildSwitchListTile(
                  '  Winter trips only',
                  '  Show trips in winter only   ',
                  _winter,
                  (newValue) {
                    setState(() {
                      _winter = newValue;
                    });
                  },
                ),
                buildSwitchListTile(
                  'for families',
                  '    Show trips for families only',
                  _family,
                  (newValue) {
                    setState(() {
                      _family = newValue;
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
