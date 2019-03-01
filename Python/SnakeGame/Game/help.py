import pygame, sys, time, random, math
from pygame.locals import *
from Game.MyLibrary import *


def direction(direction, vel = 1.0):
    velocity = Point(0,0)
    if direction == 0:
        velocity.y = -vel
    elif direction == 2:
        velocity.x = vel
    elif direction == 4:
        velocity.y = vel
    elif direction == 6:
        velocity.x = -vel
    return velocity


pygame.init()
screen = pygame.display.set_mode((600, 600))
pygame.display.set_caption("please help me")
font = pygame.font.Font(None, 36)
timer = pygame.time.Clock()
length = 0

snake_group = pygame.sprite.Group()
bits_group = pygame.sprite.Group()

player = MySprite()
player.load("Square.jpg", 96, 96, 8)
player.position(300,300)
player.direction = 4
snake_group.add(player)

bits_image = pygame.image.load("Ball.jpg")

hello = True

while hello:
        for event in pygame.event.get():
            if event.type in (QUIT, KEYDOWN):
                sys.exit()


        timer.tick(30)
        ticks = pygame.time.get_ticks()
        snake_group.update(ticks, 60)
        snake_group.draw(screen)

        print("hello there")

        pygame.display.update()



