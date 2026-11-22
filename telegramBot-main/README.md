# Telegram-бот для донатов через Telegram Stars

Учебный Telegram-бот на **Aiogram 3**, демонстрирующий приём пожертвований с помощью Telegram Stars (`XTR`).

Проект также содержит примеры организации обработчиков, фильтров, middleware, локализации и логирования.

## Возможности

- `/start` — приветствие пользователя.
- `/donate <сумма>` — создание счёта для пожертвования в Telegram Stars (от 1 до 2500 Stars).
- `/paysupport` — информация по вопросам платежей.
- `/refund <ID транзакции>` — запрос возврата Stars.
- Обработка предварительной проверки платежа (`pre_checkout_query`).
- Обработка успешной оплаты.
- Кнопка отмены выставленного счёта.
- Удаление служебных сообщений о вступлении и выходе участников из групп.
- `/ping` — команда владельца для проверки работоспособности бота.
- Локализация сообщений через Fluent.
- Настраиваемое логирование.

## Технологии

- Python 3.11+
- Aiogram 3
- asyncio
- Pydantic
- structlog
- Fluent (`fluent.runtime`, `fluent.syntax`)
- aiohttp
- TOML

## Структура проекта

```text
telegramBot-main/
├── bot.py
├── dispatcher.py
├── config_reader.py
├── config.toml
├── fluent_loader.py
├── logs.py
├── utils.py
├── handlers/
│   ├── admin_actions.py
│   ├── group_events.py
│   └── personal_actions.py
├── filters/
├── middlewares/
├── keyboards/
├── l10n/
│   └── locale.ftl
└── requirements.txt
```

## Требования

- Python 3.11 или новее.
- Telegram-бот, созданный через [@BotFather](https://t.me/BotFather).

## Установка и запуск

### 1. Клонируйте репозиторий

```bash
git clone <URL-репозитория>
```

Перейдите в папку проекта:

```bash
cd <папка-репозитория>/telegramBot-main
```

### 2. Создайте виртуальное окружение

```bash
python -m venv venv
```

### 3. Активируйте виртуальное окружение

**macOS / Linux:**

```bash
source venv/bin/activate
```

**Windows PowerShell:**

```powershell
.\venv\Scripts\Activate.ps1
```

### 4. Установите зависимости

```bash
python -m pip install --upgrade pip
pip install -r requirements.txt
```

### 5. Настройте конфигурацию

Создайте локальную копию конфигурационного файла:

```bash
cp config.toml config-local.toml
```

Откройте `config-local.toml` и укажите:

- токен Telegram-бота, полученный у BotFather;
- Telegram ID владельцев бота.

**Не публикуйте `config-local.toml` и не передавайте свой токен другим людям.**

### 6. Укажите путь к конфигурации

**macOS / Linux:**

```bash
export CONFIG_FILE_PATH="config-local.toml"
```

**Windows PowerShell:**

```powershell
$env:CONFIG_FILE_PATH="config-local.toml"
```

### 7. Запустите бота

```bash
python bot.py
```

## Команды бота

| Команда | Описание |
|---|---|
| `/start` | Приветствие и описание доступных команд |
| `/donate 100` | Создать счёт на 100 Telegram Stars |
| `/paysupport` | Информация по вопросам платежей |
| `/refund <ID>` | Запросить возврат по ID транзакции |
| `/ping` | Проверка бота владельцем |

## Telegram Stars

Для оплаты используется валюта Telegram Stars — `XTR`.

Для выставления счёта используется Telegram Payments API. Для платежей Telegram Stars `provider_token` не требуется.

Перед завершением платежа бот проверяет предварительный запрос оплаты (`pre_checkout_query`), включая валюту и сумму платежа.

После успешной оплаты обрабатывается событие `successful_payment`.

Перед использованием платежей в реальном боте ознакомьтесь с актуальными правилами Telegram по платежам и возвратам.

## Логирование

Настройки логирования находятся в секции `[logs]` файла конфигурации.

Можно выбрать формат вывода (`console` или `json`), уровень подробности и параметры отображения времени.

## Авторство

Проект основан на примере Telegram Stars Payments для Aiogram 3.

Благодарность **[MasterGroosha](https://github.com/MasterGroosha)** за обучающие материалы по Aiogram 3.

## Лицензия

См. файл `LICENSE`.
