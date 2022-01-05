class Task{
   bool isDone;
   final String name;
   Task({required this.name,this.isDone = false});
   void toogleDone(){
     isDone = !isDone;
   }
}