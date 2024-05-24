import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list/models/todo_model.dart';

part 'todo_events.dart';

class TodoBloc extends Bloc<TodoEvents, List<Todo>> {
  TodoBloc() : super([]) {
    on<AddTodo>((event, emit) {
      final title = event.title;
      final Todo todo = Todo(
        name: title,
        createdAt: DateTime.now(),
      );

      emit([...state, todo]);
    });
  }
}
