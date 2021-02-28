PShader monProgrammeShader;//1//
PShader monProgrammeShader2;

void setup(){
  monProgrammeShader = 
    loadShader("myFragmentShader.glsl", 
               "myVertexShader.glsl"); //2//
  monProgrammeShader2 = 
    loadShader("Shader3.glsl", 
               "myVertexShader2.glsl"); //2//
               
  size(800, 800, P3D);
}
void draw(){
  shader(monProgrammeShader); //3//
  pointLight(255, 255, 255, mouseX, mouseY, 400);
  translate(width/2, height/2);
  noStroke();
  fill(192, 128, 64);
  sphere(300);

  shader(monProgrammeShader2); //3//
  pointLight(255, 255, 255, mouseX, mouseY, 400);
  translate(width/2, height/2);
  noStroke();
  fill(192, 128, 64);
  sphere(300);
}
