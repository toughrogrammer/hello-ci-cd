import unittest
from app import HelloWorld


class TestHelloWorld(unittest.TestCase):
    def test_greet(self):
        o = HelloWorld()
        self.assertFalse(o.greet() == 'hello world!')
        self.assertTrue(o.greet() == 'hello, world!')

    def test_it_will_fail(self):
        self.assertTrue(1 == 2)
