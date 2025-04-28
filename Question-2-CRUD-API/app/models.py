from sqlalchemy import Column, Integer, String, ForeignKey
from app.database import Base
from sqlalchemy.orm import relationship

class Group(Base):
    __tablename__ = 'Groups'

    group_id = Column(Integer, primary_key=True, index=True)
    group_name = Column(String(50), unique=True, nullable=False)

    contacts = relationship("Contact", back_populates="group")

class Contact(Base):
    __tablename__ = 'Contacts'

    contact_id = Column(Integer, primary_key=True, index=True)
    name = Column(String(100), nullable=False)
    email = Column(String(100), unique=True)
    phone = Column(String(20))
    group_id = Column(Integer, ForeignKey('Groups.group_id'))

    group = relationship("Group", back_populates="contacts")
