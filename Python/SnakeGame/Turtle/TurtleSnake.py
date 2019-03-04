from turtle import *
import pygame

color = (0,0,0)
pygame.init()
screen = pygame.display.set_mode((300,200))
pygame.display.set_caption('Hello')
screen.fill(color)

pygame.display.flip()

running = True
while running:
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            running = False
