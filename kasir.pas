program kasir;
uses crt;

type
    db_int = array[1..100] of LongInt;
    db_str = array[1..100] of string;

var
    harga_barang, array_quantiti, total_barang: db_int;
    nama_barang: db_str;
    x, y, qtt, bayar, total,harga: LongInt;
    nama, user: string;

procedure welcome();
begin
  writeln('===================================');
  writeln(' NOER RAYA LAPIS KUKUS PAHLAWAN');
  writeln(' Jl. Dr. Ir. Soekarno No 31 SBY');
  writeln(' DELIVERY 081999981913');
  writeln('===================================');
end;

procedure penutup();
begin
  writeln('===================================');
  writeln(' TRIMAKASIH!!!');
  writeln(' BARANG YANG SUDAH DIBELI');
  writeln(' TIDAK DAPAT DIKEMBALIKAN');
  writeln('===================================');
end;

begin
    x := 1;
    repeat
        clrscr;
        write('Nama Barang   : ');
        readln(nama);
        nama_barang[x] := nama;

        write('Quantity      : ');
        readln(array_quantiti[x]);

        write('Harga Satuan  : Rp. ');
        readln(harga);
        harga_barang[x] := harga;

        total_barang[x] := harga * array_quantiti[x];

        write('Apakah sudah selesai [y/n] : ');
        readln(user);

        x := x + 1;
    until (user = 'y') or (user = 'Y');

    clrscr;
    welcome();

    qtt := 0;
    total := 0;

    writeln;
    writeln('Daftar Belanja:');
    writeln('-----------------------------------');
    for y := 1 to x - 1 do
    begin
        writeln(y, '. ', nama_barang[y]);
        writeln('   ', array_quantiti[y], ' x Rp.', harga_barang[y], '          = Rp.', total_barang[y]);
        qtt := qtt + array_quantiti[y];
        total := total + total_barang[y];
    end;
    writeln('-----------------------------------');
    writeln('Total Qty  : ', qtt);
    writeln('Sub Total  :               Rp.', total);
    writeln('-----------------------------------');

    write('Pembayaran : Rp.');
    readln(bayar);
    writeln('Kembalian  : Rp.', bayar - total);

    writeln;
    penutup();
    readln;
end.