hello-msg =
    <b>👊 Привет!</b>
    Если ты решил поддержать автора донатом, то воспользуйся следующими командами:

    • /donate [сумма]: задонатить указанное кол-во. звёзд (пример. /donate 100)
    • /paysupport: помощь с покупками
    • /refund: возврат доната (рефанд)

donate-invoice-title =
    Донат автору

donate-invoice-description =
    На сумму в {$amount ->
        [one] {$amount} звезду
        [few] {$amount} звезды
       *[other] {$amount} звёзд
    }

donate-button-pay =
    Оплатить {$amount} XTR

donate-button-cancel =
    Отменить операцию

donate-input-error =
    Пожалуйста, введите сумму в формате <code>/donate [ЧИСЛО]</code>, где [ЧИСЛО] это сумма доната, от ⭐️ 1 до ⭐️ 2500.

    Примеры:
    • <code>/donate 100</code> - задонатить 100 ⭐️
    • <code>/donate 500</code> - задонатить 500 ⭐️
    • <code>/donate 1000</code> - задонатить 1000 ⭐️

donate-paysupport-tid-tip =
    <blockquote>Получить его вы можете после того, как оплатите донат.
    Просто нажмите на сообщение <b>"Вы успешно перевели ⭐️ .."</b> и скопируйте оттуда ID транзакции.</blockquote>

donate-paysupport-message =
    Если вы хотите оформить рефанд, воспользуйтесь командой /refund

    🤓 Вам понадобится ID транзакции.
    {donate-paysupport-tid-tip}

donate-refund-input-error =
    Пожалуйста, укажите идентификатор транзакции в формате <code>/refund [id]</code>, где [id] это идентификатор транзакции, который вы получили после доната.

    {donate-paysupport-tid-tip}

donate-refund-success =
    Рефанд произведен успешно. Потраченные звёзды уже вернулись на ваш счёт в Telegram.

donate-refund-code-not-found =
    Транзакция с указанным идентификатором не найдена. Пожалуйста, проверьте введенные данные и повторите ещё раз.

donate-refund-already-refunded =
    Рефанд по этой транзакции уже был ранее произведен.

# no html etc. (msg for callback answer)
donate-cancel-payment =
    😢 Донат отменен.

donate-successful-payment =
    <b>🫡 Спасибо!</b>
    Ваш донат успешно принят.







hello-owner =
    <b>👊 Hello, owner!</b>

ping-msg =
    <b>👊 Up & Running!</b>

media-msg =
    <b>🫡 Nice media <i>(I guess)</i>!</b>

donate-precheckout-error = Не удалось подтвердить платеж. Проверьте сумму и валюту платежа.
donate-refund-api-error = Не удалось выполнить возврат из-за ошибки Telegram. Попробуйте позже.
