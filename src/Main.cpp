#include <SDL.h>
#include <SDL_ttf.h>
#include <iostream>

SDL_Window* m_window;
SDL_Renderer* m_renderer;

int main(int argc, char** argv){

  if(SDL_Init(SDL_INIT_VIDEO|SDL_INIT_AUDIO) != 0){
    std::cout << "SDL_Init Error: " << SDL_GetError() << std::endl;
    return false;
  }

  m_window = SDL_CreateWindow("GCW0 - SDL2", SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED, 320, 240, SDL_WINDOW_SHOWN);
  if (m_window == nullptr){
    std::cout << "SDL_CreateWindow Error: " << SDL_GetError() << std::endl;
    return false;
  }

  m_renderer = SDL_CreateRenderer(m_window, -1, SDL_RENDERER_ACCELERATED | SDL_RENDERER_PRESENTVSYNC);
  if (m_renderer == nullptr){
    std::cout << "SDL_CreateRenderer Error: " << SDL_GetError() << std::endl;
    return false;
  }

  if (TTF_Init() != 0){
    std::cout << "TTF_Init Error: " << TTF_GetError() << std::endl;
    return false;
  }

  SDL_RenderSetLogicalSize(m_renderer, 320, 240);
  SDL_SetRenderDrawColor(m_renderer, 0, 0, 0, 255);
  SDL_ShowCursor(SDL_DISABLE);

  bool run = true;

  SDL_Event event;
  while(run){
    while (SDL_PollEvent(&event)) {
      if (event.type == SDL_WINDOWEVENT && event.window.event == SDL_WINDOWEVENT_CLOSE){
        run = false;
      } else if(event.type == SDL_KEYDOWN && event.key.keysym.sym == SDLK_ESCAPE){
        run = false;
      }
    }
  }

  TTF_Quit();
  SDL_DestroyRenderer(m_renderer);
  SDL_DestroyWindow(m_window);
  SDL_Quit();

  return 0;
}