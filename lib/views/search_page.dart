import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  var searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 30),
        height: 60,
        decoration: BoxDecoration(
            color: const Color(0xff636566),
            borderRadius: BorderRadius.circular(20)
        ),
        child: TextFormField(
          cursorColor: const Color(0xffA2B859),

          //textDirection: TextDirection.rtl,
          controller: searchController,
          keyboardType: TextInputType.text,
          onFieldSubmitted: (value) {
            print(value);
          },
          style: const TextStyle(
            color: Colors.white
          ),
          strutStyle: StrutStyle(
            height: MediaQuery.of(context).size.height / 600,
          ),
          decoration: InputDecoration(
            //filled: true,
            //fillColor: Colors.white,
            border: OutlineInputBorder(

              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(8),
            ),
            prefixIcon: const Icon(Icons.search,color: Color(0xffA2B859),),
            hintText: 'Search ',
            hintStyle: const TextStyle(
              color: Colors.white,
            ),
           // hintTextDirection: TextDirection.rtl,
            suffixIcon: const Icon(Icons.cancel,color: Color(0xffA2B859),),
          ),
        ),
      ),
    );
  }
}
