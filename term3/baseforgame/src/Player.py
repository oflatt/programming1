#!/usr/bin/python
import pygame, variables

class Player():
    xspeed = 0
    yspeed = 0

    def __init__(self, xpos, ypos):
        self.xpos = xpos
        self.ypos = ypos

    def draw(self):
        pygame.draw.ellipse(variables.screen, variables.BLACK, [1 + self.xpos, self.ypos, 10, 10], 0)

    def keypress(self, k):
        if k == pygame.K_LEFT:
            self.xspeed = -3
        elif k == pygame.K_RIGHT:
            self.xspeed = 3
        elif k == pygame.K_UP:
            self.yspeed = -3
        elif k == pygame.K_DOWN:
            self.yspeed = 3

    def keyrelease(self, k):
        if k == pygame.K_LEFT or k == pygame.K_RIGHT:
            self.xspeed = 0
        elif k == pygame.K_UP or k == pygame.K_DOWN:
            self.yspeed = 0

    def move(self):
        self.xpos += self.xspeed
        self.ypos += self.yspeed