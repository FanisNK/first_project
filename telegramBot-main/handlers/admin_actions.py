import structlog
from aiogram import Router, F
from aiogram.filters import Command
from aiogram.types import Message
from fluent.runtime import FluentLocalization

from filters.is_owner import IsOwnerFilter

router = Router()
router.message.filter(F.chat.type == "private", IsOwnerFilter(is_owner=True))

logger = structlog.get_logger()


@router.message(Command("start"))
async def cmd_owner_hello(message: Message, l10n: FluentLocalization):
    await message.answer(l10n.format_value("hello-owner"))


@router.message(Command("ping"))
async def cmd_ping_bot(message: Message, l10n: FluentLocalization):
    await message.reply(l10n.format_value("ping-msg"))
