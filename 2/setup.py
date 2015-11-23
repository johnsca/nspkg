from distutils.core import setup


SETUP = {
    'name': "foo.two",
    'version': 1,
    'author': "Ubuntu Developers",
    'packages': [
        "foo",
        "foo.two",
    ],
    'license': "Apache License 2.0",
}

if __name__ == '__main__':
    setup(**SETUP)
