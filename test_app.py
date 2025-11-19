# test_suma.py
import unittest
from suma import suma

class TestSuma(unittest.TestCase):

    def test_suma_basica(self):
        self.assertEqual(suma(1, 2), 3)

    def test_suma_negativos(self):
        self.assertEqual(suma(-5, 10), 5)

if __name__ == '__main__':
    unittest.main()
