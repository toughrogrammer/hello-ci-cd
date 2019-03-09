import unittest
from app import HelloWorld


class TestHelloWorld(unittest.TestCase):
    def test_greet(self):
        o = HelloWorld()
        self.assertFalse(o.greet() == 'hello world!')
        self.assertTrue(o.greet() == 'hello, world!')
