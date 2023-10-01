abstract class Strings {
  static const enterAddressAndPasswordLogin = 'Введите адрес корпоративной почты\nи пароль, чтобы войти в аккаунт';
  static const entrance = 'Вход';
  static const enter = 'Войти';
  static const email = 'Почта';
  static const password = 'Пароль';
  static const register = 'Зарегистрироваться';
  static const haveNotAccount = 'Нет аккаунта? ';
  static const haveAccount = 'У вас уже есть аккаунт? ';
  static const registration = 'Регистрация';
  static const firstName = 'Имя';
  static const lastName = 'Фамилия';
  static const fillProfile = 'Заполнение\nпрофиля';
  static const next = 'Далее';
  static const division = 'Подразделение';
  static const appleHealth = 'Apple Health';
  static const height = 'Рост';
  static const notSet = 'Не выбрано';
  static const birthday = 'Дата рождения';
  static const sex = 'Пол';
  static const activity = 'Активность';
  static const goodness = 'Добро';
  static const start = 'Старт';
  static const rating = 'Рейтинг';
  static const challenges = 'Челленджи';
  static const challengesDescription = 'Выполняйте задания наших\nпартнёров и получайте\nвознаграждения';
  static const weight = 'Вес';
  static const settingsHealth = 'Настройка\nпараметров';
  static const settingsHealthDescription = 'Заполните данные о себе\nдля корректного подсчёта активности';
  static const fillProfileDescription = 'Введите своё имя и фамилию,\nвыберите подразделение,\nв котором вы работаете';
  static const enterAddressAndPasswordRegister = 'Введите адрес корпоративной\nпочты и придумайте пароль,\nчтобы создать аккаунт';
  static const List<String> divisionsList = ['Продажи', 'SMM и Маркетинг', 'Закупки', 'HR и PR', 'Логистика', 'Финансы', 'IT-подразделение'];
  static const List<String> sexList = ['Мужчина', 'Женщина', 'Другое'];
  static const String fundSelection = 'Выбор фонда';
  static const String selectFund = 'Выбрать фонд';
  static const String fundSelectionDescription = 'Выберите, кому хотите\nпомогать в этом месяце';
  static const Map<String, List<Map<String, String>>> funds = {
    'Бездомные': [
      {
        'title': 'БО Ночлежка',
        'image': 'assets/images/bonochlezka.png',
        'description': 'Реабилитационный приют для\nбездомных и действующая при нем консультационная\nслужба, где люди могут получить\nюридическую помощь',
      },
      {
        'title': 'Милосердие',
        'image': 'assets/images/miloserdie.png',
        'description': 'Для бездомных действует «Ангар\nспасения» — центр, где люди могут\nполучить еду и медицинскую помощь,\nпомыться и согреться',
      },
    ],
    'Пенсионеры': [
      {
        'title': 'Старость в радость',
        'image': 'assets/images/starostVRadost.png',
        'description': 'Российский благотворительный фонд,\nзанимающийся помощью инвалидам и пожилым людям\nв трудной жизненной ситуации',
      },
    ],
    'Люди с ВИЧ': [
      {
        'title': 'Гуманитарное действие',
        'image': 'assets/images/gymanitarnoeDeistvie.png',
        'description': 'Фонд помогает людям из группы риска,\nв частности, наркозависимым.',
      },
    ],
    'Люди с инвалидностью': [
      {
        'title': 'Подарок ангелу',
        'image': 'assets/images/podarokAngely.png',
        'description': 'Российская некоммерческая организация\nдля оказания помощи людям с нарушениями опорно-двигательного аппарата.',
      },
    ],
    'Дети-сироты': [
      {
        'title': 'Арифметика добра',
        'image': 'assets/images/arifmetikaDobra.png',
        'description': 'Негосударственный благотворительный фонд,\nзанимающийся системным решением проблемы сиротства в России.',
      },
    ],
    'Животные': [
      {
        'title': 'РЭЙ',
        'image': 'assets/images/rai.png',
        'description': 'Фонд закупает для приютов корм,\nмедикаменты и стройматериалы.',
      },
    ],
    'Люди с тяжёлыми заболеваниями': [
      {
        'title': 'Advita',
        'image': 'assets/images/advita.png',
        'description': 'Фонд, созданный в 2002 году\nдля оказания помощи людям, страдающим онкологическими заболеваниями.',
      },
    ],
  };
}
