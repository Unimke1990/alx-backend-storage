#!/usr/bin/env python3
"""function that inserts a new document in a collection based on kwargs"""


def insert_school(mongo_collection, **kwargs):
    """functions that inserts new document"""
    return mongo_collection.insert(kwargs)
