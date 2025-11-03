Program kruzici;

uses GraphABC;                      // Modul za Grafiku za PascalABC

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
  SetWindowTitle('Primer Broj 1');
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
End.