import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesInitial());

  addNote(NoteModel note) async{
    emit(AddNoteLoading());
    try{
   var notesBox= Hive.box<NoteModel>(kNoteBox);
   emit(AddNoteSuccess());
   await notesBox.add(note);
   }catch (e){
    AddNoteFailure(e.toString());

   }
  }
}
