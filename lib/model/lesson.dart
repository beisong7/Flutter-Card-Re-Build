class Lesson{
  String title;
  String level;
  double indicatorValue;
  int price;
  String content;

  Map<String,dynamic> get map {
    return {
      "title": title,
      "level": level,
      "indicatorValue":indicatorValue,
      "price": price,
      "content": content,
    };
  }

  Lesson({
    this.title,
    this.level,
    this.indicatorValue,
    this.price,
    this.content
  });

  
}