import 'package:flutter/material.dart';

class SearchBarSendToFiend extends StatelessWidget {
  const SearchBarSendToFiend({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
      color: Color(0xFF181C1F),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              style: TextStyle(fontSize: 14, color: Colors.white),

              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Icon(Icons.search),
                ),
                prefixIconConstraints: const BoxConstraints(
                  minWidth: 30,
                  maxHeight: 30,
                ),

                isDense: true,
                contentPadding: EdgeInsets.symmetric(vertical: 10),
                hintText: 'Search',

                filled: true,
                fillColor: const Color.fromARGB(255, 59, 59, 59),

                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: IconButton.filled(
              onPressed: () {},
              icon: Icon(Icons.person_add_alt_1, size: 20),
              style: IconButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 59, 59, 59),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
