Program PrimitivniOblici;

Uses GraphABC;                      // Modul za Grafiku za PascalABC

Begin
  {**
    Dimenzije prozora

    @param Width 
    @param Height
  **}
  SetWindowSize(300,600);
  {**
    Naslov prozora

    @param Title
  **} 
  SetWindowTitle('Primitivni Oblici');
  {**
    Boja prozora

    @param Color
  **}
  ClearWindow(clYellow);

  {**
    Crtanje Linije

    @param Startna pozicija po duzini
    @param Startna pozicija po visini
    @param Krajna tacka linije po duzini
    @param Krajna tacka linije po visini
  **}
  
  line(150, 50, 150, 550);
  {**
    Crtanje Pravougaonika

    @param Startna pozicija po duzini
    @param Startna pozicija po visini
    @param Duzina
    @param Visina
  **}
  rectangle(10, 10, 100, 100);
  {**
    Crtanje Kruga

    @param Pozicija po duzini
    @param Pozicija po visini
    @param Precnik Kruga
  **}
  circle(55, 55, 25);

  {**
    Popunjava Bojom Graficke Oblike

    @param pozicija po duzini
    @param pozicija po visini
    @param Boja
  **}
  FloodFill(20, 20, clRed);
  {**
    Debljina Olovke

    @param Debljina Olovke
  **}
  SetPenWidth(5);
  {**
    Crtanje Luk-a

    @param Pozicija po duzini
    @param Pozicija po visini
    @param precnik
    @param startna pozicija luka u stepenima
    @param krajnja pozicija luka u stepenima
  **}
  arc(55, 55, 35, 200, 340);
  SetPenWidth(2);
  {**
    Boja Olovke

    @param Boja
  **}
  SetPenColor(clGreen);
  circle(55, 55, 25);

  {**
    Velicina Fonta

    @param Velicina Fonta
  **}
  SetFontSize(30);
  {**
    Boja Fonta

    @param Boja
  **}
  SetFontColor(clBlue);
  {**
    Font Family

    @param Font Family
  **}
  SetFontName('Calibri');
  {**
    Yekst

    @param Pozicija teksta po duzini
    @param Pozicija teksta po visini
    @param tekst
  **}
  TextOut(180,300, 'TEXT');
  FloodFill(180,300,clRed);

  {**
    Crtanje tacke

    @param x pozicija
    @param y pozicija
    @param boja
  **}
  PutPixel(120,120,clBlue);

  SetPenWidth(4);
  SetPenColor(clPurple);
  SetBrushColor(clBlue);
  Ellipse(160,160,260,220);

  Brush.Color:= ARGB(128,0, 245, 0);
  RoundRect(250,200,100,350,20,20);

  DrawPolygon((20,350),(70,370),(50,400),(30,450),(130,360));

  Pen.Color := RGB(0, 245, 0);
  PolyLine((20,470),(70,470),(50,500),(30,550),(130,460));

  SaveWindow('PrimitivniOblici.bmp');
End.