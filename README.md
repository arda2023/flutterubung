# dartubung

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Learn Flutter](https://docs.flutter.dev/get-started/learn-flutter)
- [Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Flutter learning resources](https://docs.flutter.dev/reference/learning-resources)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

<!--
Sieht sauber aus, genau nach Schema. Die App-Struktur passt, Provider sind schön leer, TODOs sind klar markiert. Eine Kleinigkeit vorab, dann geht's los:

**Kurzer Hinweis:** In `todo_provider.dart` ist `kDummyTodos` eine `const List<Todo>`, aber im `build()` machst du `List<Todo>.from(kDummyTodos)` — das ist schon richtig so (macht eine mutable Kopie), nur falls du dich fragst, warum das nicht direkt `kDummyTodos` zurückgibt. Kein Handlungsbedarf, nur zum Verständnis.

## Deine Aufgaben — in dieser Reihenfolge

**Aufgabe 1 — `copyWith()` für `Todo`**
Schreib in `todo.dart` eine `copyWith()`-Methode, die optionale benannte Parameter (`String? id`, `String? title`, `bool? isDone`) annimmt und eine neue `Todo`-Instanz zurückgibt — mit den übergebenen Werten dort wo vorhanden, sonst den alten Werten. Das brauchst du gleich für `toggleTodo`.

*Google:* `dart copyWith pattern immutable class`

---

**Aufgabe 2 — `addTodo()` implementieren**
In `todo_provider.dart`: die Methode soll ein neues `Todo` erzeugen (mit `title` als Parameter, `isDone: false`, und einer eindeutigen `id`) und es zur bestehenden `state`-Liste hinzufügen. Wichtig: `state` ist eine **immutable** Liste in Riverpods `Notifier` — du darfst sie nicht mit `.add()` mutieren, sondern musst eine **neue** Liste zuweisen (`state = [...]`).

*Google:* `riverpod notifier state immutability list`

---

**Aufgabe 3 — `toggleTodo()` implementieren**
Finde in `state` das `Todo` mit passender `id`, erstelle via `copyWith()` eine Kopie mit umgedrehtem `isDone`, und baue die Liste neu auf (alle anderen Todos bleiben gleich, nur das eine wird ersetzt). Schau dir `List.map()` an — das ist hier dein Werkzeug.

*Google:* `dart list map replace item by id`

---

**Aufgabe 4 — `removeTodo()` implementieren**
Entferne das `Todo` mit passender `id` aus `state`. Hier reicht ein einfacher Filter.

*Google:* `dart list where filter`

---

**Aufgabe 5 — `AddTodoInput` verbinden**
In `add_todo_input.dart`: der `ElevatedButton.onPressed` soll den Text aus `_controller.text` lesen, `addTodo()` über den Provider aufrufen, und danach `_controller.clear()` aufrufen. Da das ein `StatefulWidget` ist (kein `ConsumerWidget`), brauchst du hier `ConsumerStatefulWidget` + `ConsumerState`, um an `ref` zu kommen — oder alternativ `Consumer` als Wrapper. Schau dir beide Ansätze in den Docs an und entscheide, was hier sinnvoller ist.

*Google:* `flutter riverpod ConsumerStatefulWidget vs Consumer`

---

**Aufgabe 6 — Checkbox & Delete in `TodoItem` verbinden**
`TodoItem` ist aktuell ein `StatelessWidget`. Wandle es in ein `ConsumerWidget` um und verbinde `Checkbox.onChanged`, `IconButton.onPressed` und `Dismissible.onDismissed` jeweils mit `toggleTodo()` bzw. `removeTodo()` über den Provider.

*Google:* `flutter riverpod ref.read notifier call method`

---

**Aufgabe 7 — Filter verbinden**
Zwei Teile:
1. In `filter_selector.dart`: `onSelectionChanged` soll den neuen Wert in `activeFilterProvider` schreiben.
2. In `todo_list_screen.dart`: die angezeigte Liste soll basierend auf `activeFilter` gefiltert werden, bevor sie ins `ListView.separated` geht.

Überleg dir bei Teil 2, ob du das direkt im `build()` mit `.where()` machst, oder ob ein **abgeleiteter Provider** (der `todoListProvider` + `activeFilterProvider` kombiniert) die sauberere Lösung wäre.

*Google:* `riverpod derived provider combine two providers`

---

Fang mit Aufgabe 1 an und meld dich, wenn du fertig bist oder hängst — dann geht's zur nächsten.
-->
