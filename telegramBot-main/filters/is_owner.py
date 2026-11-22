from aiogram.filters import BaseFilter
from aiogram.types import Message

from config_reader import BotConfig, get_config


class IsOwnerFilter(BaseFilter):
    """Check whether the message sender is (or is not) a configured bot owner."""

    def __init__(self, is_owner: bool = True):
        self.is_owner = is_owner

    async def __call__(self, message: Message) -> bool:
        if message.from_user is None:
            return False

        bot_config: BotConfig = get_config(model=BotConfig, root_key="bot")
        user_is_owner = message.from_user.id in bot_config.owners
        return user_is_owner is self.is_owner
