class Box:
    def __init__(self, w, h, d):
        self.w = w
        self.h = h
        self.d = d

    def volume(self):
        return self.w*self.h*self.d

    def surfacearea(self):
        wh = self.w * self.h * 2
        wd = self.w * self.d * 2
        dh = self.d * self.h * 2
        return wh + wd + dh