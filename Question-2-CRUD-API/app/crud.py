from sqlalchemy.orm import Session
from app import models, schemas

# GROUPS

def create_group(db: Session, group: schemas.GroupCreate):
    db_group = models.Group(**group.dict())
    db.add(db_group)
    db.commit()
    db.refresh(db_group)
    return db_group

def get_groups(db: Session):
    return db.query(models.Group).all()

# CONTACTS

def create_contact(db: Session, contact: schemas.ContactCreate):
    db_contact = models.Contact(**contact.dict())
    db.add(db_contact)
    db.commit()
    db.refresh(db_contact)
    return db_contact

def get_contacts(db: Session):
    return db.query(models.Contact).all()

def get_contact(db: Session, contact_id: int):
    return db.query(models.Contact).filter(models.Contact.contact_id == contact_id).first()

def update_contact(db: Session, contact_id: int, contact: schemas.ContactCreate):
    db_contact = get_contact(db, contact_id)
    if db_contact:
        for var, value in vars(contact).items():
            setattr(db_contact, var, value) if value else None
        db.commit()
        db.refresh(db_contact)
    return db_contact

def delete_contact(db: Session, contact_id: int):
    db_contact = get_contact(db, contact_id)
    if db_contact:
        db.delete(db_contact)
        db.commit()
    return db_contact
