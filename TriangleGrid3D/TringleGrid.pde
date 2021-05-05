class TringleGrid {
  Rhombus[][] Rhombuses;
  int gridWidth, gridHeight;
  float xPos, yPos;
  float noiseScale;
  float gridScale;
  
  TringleGrid(float x_, float y_, int gw_, int gh_, float _n, float gs_){
    Rhombuses = new Rhombus[gh_][gw_];
    gridWidth = gw_;
    gridHeight = gh_;
    xPos = x_;
    yPos = y_;
    noiseScale = _n;
    gridScale = gs_;
    for(int i = 0; i < gridHeight; i++){
      Rhombus[] tempRhombuses = new Rhombus[gridWidth];
      for(int j = 0; j < gridWidth; j++){
        tempRhombuses[j] = new Rhombus(j, i, gridScale, _n);
      }
      Rhombuses[i] = tempRhombuses;
    }
  }
  
  void display(){
    translate(xPos,0, yPos);
    for(int i = 0; i < gridHeight; i++){
      for(int j = 0; j < gridWidth; j++){
        Rhombuses[i][j].display();
      }
    }
  }
}
