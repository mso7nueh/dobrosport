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
    'Пенсионеры': [],
    'Люди с ВИЧ': [],
    'Люди с инвалидностью': [],
    'Дети-сироты': [],
    'Животные': [],
    'Люди с тяжёлыми заболеваниями': [],
  };
}
