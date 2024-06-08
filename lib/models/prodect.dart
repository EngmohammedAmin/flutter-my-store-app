class Prodect {
  final int id;
  final int price;
  final String title;
  final String subtitle;
  final String description;
  final String image;
  const Prodect({
    this.id = 0,
    this.price = 0,
    this.description = '',
    this.image = '',
    this.subtitle = '',
    this.title = '',
  });
}

List<Prodect> prodects = [
  const Prodect(
    id: 1,
    price: 1000,
    title: 'سماعات لاسلكية',
    subtitle: 'جودة صوت عالية',
    image: 'images/R-1.png',
    description:
        'جهاز صوتي يُستخدم للاستماع إلى الموسيقى والصوت بدون الحاجة إلى أسلاك. تتميز هذه السماعات بالعديد من الميزات والتفاصيل المهمة،',
  ),
  const Prodect(
    id: 2,
    price: 60000,
    title: 'S10 جهاز موبايل سامسونج',
    subtitle: '  جديد بالكرتون',
    image: 'images/R-2.png',
    description:
        'التصميم:  S10 بتصميم أنيق وجذاب مع شاشة Infinity-O الكبيرة التي تمتد من الحافة إلى الحافة مع نسبة عرض إلى مثل الزجاج والمعدن لمظهر فاخر ومتين.',
  ),
  const Prodect(
    id: 3,
    price: 100000,
    title: ' جهاز موبايل ايفون برو',
    subtitle: 'جودة  عالية',
    image: 'images/R-3.png',
    description:
        ':  iPhone Pro بتصميم أنيق ومتطور مع إطار من الفولاذ المقاوم للصدأ وزجاج آيفون المقاوم للخدش والصدمات. يتوفر بألوان مختلفة  من ',
  ),
  const Prodect(
    id: 4,
    price: 50000,
    title: 'نظارات ثلاثية الأبعاد ',
    subtitle: 'جودة  عالية',
    image: 'images/R-4.png',
    description:
        'التصميم: تأتي نظارات ثلاثية الأبعاد بتصميم خاص يتضمن عدسات متطورة وإطار مريح يمكن ارتداؤه على العينين.',
  ),
  const Prodect(
    id: 5,
    price: 500,
    title: 'سماعات ',
    subtitle: 'طويلة',
    image: 'images/R-5.png',
    description: 'شكرا لاستخدامكم تطبيقنا',
  ),
  const Prodect(
    id: 6,
    price: 5000,
    title: 'مسجل صوت',
    subtitle: 'جودة صوت عالية',
    image: 'images/R-6.png',
    description:
        'التصميم: يأتي مسجل الصوت عادةً بتصميم صغير ومحمول، يسهل حمله واستخدامه بسهولة.  التحكم.',
  ),
  const Prodect(
    id: 7,
    price: 4000,
    title: 'سماعات كمبيوتر',
    subtitle: 'جودة صوت عالية',
    image: 'images/R-7.png',
    description:
        'التصميم:  بدءً(Over-ear) التي تغطي الأذن بالكامل، إلى سماعات الأذن (In-ear) التي توضع داخل الأذن. تختلف التصاميم أيضًا في الشكل والمواد المستخدمة.',
  ),
  const Prodect(
    id: 8,
    price: 8000,
    title: 'كاميرا كمبيوتر',
    subtitle: 'جودة صورة عالية',
    image: 'images/R-8.png',
    description:
        'التصميم: تأتي كاميرا الكمبيوتر عادةً في شكل صغير ومدمج لسهولة الاستخدام والتثبيت على الكمبيوتر. أو أي سطح آخر.',
  ),
];
