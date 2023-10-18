#!/usr/bin/env python3


'''Mongodb operations
'''


def list_all(mongo_collection):
    '''List all documents on python
    '''
    documents = mongo_collection.find()

    if documents.count() == 0:
        return []

    return documents
