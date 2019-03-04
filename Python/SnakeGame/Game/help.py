import pygame, sys, time, random, math
from pygame.locals import *
from Game.MyLibrary import *
running = True
pygame.init()
screen = pygame.display.set_mode((800,800))
while running:
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            running = False