import pygame

def __init__( self ):
    self.bar = 1


def main():
    pygame.init()
    screen = pygame.display.set_mode((600, 600))
    pygame.display.set_caption("Snake Game")

    background = pygame.Surface(screen.get_size())
    background = background.convert()
    background.fill((250, 250, 250))

    startFont = pygame.font.Font(None, 36)
    startText = startFont.render("Start", 1, (10, 10, 10))
    startTextpos = startText.get_rect()

    helloFont = pygame.font.Font(None, 45)
    helloText = helloFont.render("Snake: The Game", 1, (10, 10, 10))
    helloTextpos = helloText.get_rect()

    instFont = pygame.font.Font(None, 36)
    instText = instFont.render("Instructions", 1, (10, 10, 10))
    instTextpos = instText.get_rect()

    startTextpos.centerx = background.get_rect().centerx
    startTextpos.centery = background.get_rect().centery
    background.blit(startText, startTextpos)

    helloTextpos.centerx = background.get_rect().centerx
    helloTextpos.centery = background.get_rect().centery - 40
    background.blit(helloText, helloTextpos)

    instTextpos.centerx = background.get_rect().centerx
    instTextpos.centery = background.get_rect().centery + 40
    background.blit(instText, instTextpos)

    button = startText.get_rect()

    while True:
        for event in pygame.event.get():
            if event.type == pygame.MOUSEBUTTONDOWN

    while 1:
        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                return
        screen.blit(background, (0, 0))
        pygame.display.flip()

def start():
    print("hello there")


if __name__ == '__main__': main()










