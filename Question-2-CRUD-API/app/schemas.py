from pydantic import BaseModel
from typing import Optional

class GroupBase(BaseModel):
    group_name: str

class GroupCreate(GroupBase):
    pass

class Group(GroupBase):
    group_id: int

    class Config:
        orm_mode = True

class ContactBase(BaseModel):
    name: str
    email: Optional[str]
    phone: Optional[str]
    group_id: Optional[int]

class ContactCreate(ContactBase):
    pass

class Contact(ContactBase):
    contact_id: int

    class Config:
        orm_mode = True
