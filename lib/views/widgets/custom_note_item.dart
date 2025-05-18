
import 'package:flutter/material.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        Navigator.push(
          context, 
          MaterialPageRoute(
            builder: (context)
            {
              return const EditNoteView();
            }
            )
          )
      },
      child: Container(
        padding: EdgeInsets.only(top: 24,bottom: 24,left: 16),
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                "Flutter Tips",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 26
                  ),
              
                ),
              subtitle: Padding(
                padding: const EdgeInsets.only(
                  top: 16,
                  bottom: 16
                  ),
                child: Text(
                  "Build your career with nooh saeed",
                      style: TextStyle(
                        color: Colors.black.withValues(alpha: .5),
                        fontSize: 18,
                        ),
                      ),
              ),
              trailing: IconButton(
                onPressed: (){}, 
                icon:const Icon(
                  Icons.delete,
                  color: Colors.black,
                  size: 30,
                  ),)
            ),
        Padding(
          padding: const EdgeInsets.only(right: 24),
          child: Text(
            "May4,2025",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black.withValues(alpha: .4)
                  ),
            ),
        )
          ],
        ),
      ),
    );
  }
}