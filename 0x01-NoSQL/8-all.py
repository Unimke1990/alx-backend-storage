#!/usr/bin/env python3
"""listing all items in a collection"""


def list_all(mongo_collection):
    """function that lists"""
    data_collected = mongo_collection.find()
    return data_collected
