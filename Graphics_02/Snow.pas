Program Snow;

Uses GraphABC;

Type
  mySnow = record
    x, y   : integer;
    dx, dy : integer;
end;

Const N = 100;

Var
  sn: array[1..N] of mySnow;
  pSnow : Picture;
  W, H : Integer;
  i : integer;
  fEND: boolean;

Begin

  SetWindowSize(800,640);
  SetWindowTitle('Snow');

  {**
    Ako koristimo BMP onda moramo koristiti Transparent = true i zadati transparentnu boju koja se nece crtati,
    ako koristimo PNG sliku koja vec ima prozirnost onda smo ucitamo sliku
  **}
  // pSnow:= Picture.Create('snow.bmp');
  // pSnow.Transparent:= True;
  // pSnow.TransparentColor := RGB(88,19,94);
  pSnow:= Picture.Create('snow.png');

  W := Window.Width;
  H := Window.Height;

  for i:= 1 to N do begin
    sn[ i ].x := Random(3*W)-W;
    sn[ i ].y := Random(H);
    sn[ i ].dx := Random(3) - 1;
    sn[ i ].dy := Random(3) + 1;
  end;

  repeat
    LockDrawing;
    ClearWindow(clBlue);

    for i := 1 to N do begin
      pSnow.Draw(sn[i].x,sn[i].y);
      sn[i].y := sn[i].y + sn[i].dy;
      sn[i].x := sn[i].x + sn[i].dx;
      if sn[i].y > H then begin
        sn[i].y := -10;
        sn[i].x := Random(3*W)-W;
      end;
    end;

    Redraw;
    SaveWindow('SnowProgramShow.bmp');
  until (fEND);


End.