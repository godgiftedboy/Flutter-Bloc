// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'todo_bloc.dart';

sealed class TodoEvents {}

class AddTodo extends TodoEvents {
  String title;
  AddTodo({
    required this.title,
  });
}
