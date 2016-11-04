'''
dependencies for this project
'''

def populate(d):
    d.packs=[
       'ksh',
       'gawk',
       'mawk',
       'bash',
    ]

def getdeps():
    return [
        __file__, # myself
    ]
