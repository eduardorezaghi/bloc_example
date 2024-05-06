// `part` directive is used to split the code into multiple files.
part of 'counter_bloc.dart';

// What is a sealed class?
// A sealed class is a class that restricts its subclasses to a fixed set of classes.
// That means that all subclasses of a sealed class are known at compile time.
// See:
// - https://kotlinlang.org/docs/sealed-classes.html
// - https://dart.dev/guides/language/language-tour#abstract-classes
// - https://dart.dev/language/class-modifiers#sealed
sealed class CounterEvent {}

final class Increment extends CounterEvent {}

final class Decrement extends CounterEvent {}
