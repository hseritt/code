#!/usr/bin/env python

class Animal(object):

    def __init__(self, species=None):
        self.species = species


class Vertebrate(Animal):

    has_backbone = True

    def display_info(self, extra_info=False):
        print(
            'A %s is a species of %s. Movement method: %s' % (
                self.species, self.__class__.__name__.lower(), self.moves()))

        if extra_info:
            self.__display_more()

        print("\n")

    def __display_more(self):
        print(
            'Skin: %s, Lays Eggs?: %s, Warm-blooded?: %s, Has a backbone?: %s' % (
            self.outer, self.lay_eggs, self.is_warm_blooded, self.has_backbone))


class Invertebrate(Animal):

    has_backbone = False


class Reptile(Vertebrate):

    outer = 'scaly'
    lay_eggs = True
    is_warm_blooded = False

    def moves(self):
        return 'slithers or walks'


class Bird(Vertebrate):

    outer = 'feathery'
    lay_eggs = True
    is_warm_blooded = True

    def moves(self):
        return 'flies or walks'


class Fish(Vertebrate):

    outer = 'scaly'
    is_warm_blooded = False
    lay_eggs = 'Possibly Both'

    def moves(self):
        return 'swims'


class Mammal(Vertebrate):

    outer = 'furry'
    is_warm_blooded = True
    lay_eggs = False

    def moves(self):
        return 'runs or walks'


class Amphibian(Vertebrate):

    outer = 'slimy'
    is_warm_blooded = False
    lay_eggs = True

    def moves(self):
        return 'swims, jumps or walks'


snake = Reptile(species='garden snake')
snake.display_info(extra_info=True)

eagle = Bird(species='bald eagle')
eagle.display_info(extra_info=True)

shark = Fish(species='great white shark')
shark.display_info(extra_info=True)

ape = Mammal()
ape.species = 'silver-back gorilla'
ape.display_info()

dog = Mammal()
dog.display_info()

frog = Amphibian(species='bull frog')
frog.display_info()
try:
    frog.__display_more()
except AttributeError as err:
    print("Cannot use __display_more() ... must set extra_info=True as parameter in display_info().")
    print('ERROR: {}'.format(err))