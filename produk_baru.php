<style type="text/css">
.teks_nama_produk {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 10px;
	color: #000000;
}
.teks_harga_produk {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	color: #990000;
	font-weight: bold;
}
</style>

<?php
if(isset($_GET['kategori'])){$kategori = $_GET['kategori']; }
include("config.php");
if((isset($kategori)) ==''){
	//Menampilkan record product baru sebanyak 12 product
	$query = "select * from barangtbl order by id desc LIMIT 0,12";
	$hasil = mysql_query($query);
	$numrows = mysql_num_rows($hasil);
}else{
	echo "<table width=\"100%\">
	<tr>
	<td align=\"center\"><b><font color=\"maroon\" size=\"2.5\">[ ".$_GET['kategori']." ]</b></font></td>
	</tr>
	</table>";
	$query = "select * from barangtbl where kategori = '$kategori' order by id desc LIMIT 0,12";
	$hasil = mysql_query($query);
	$numrows = mysql_num_rows($hasil);
	}
?>

<table border=0px cellpadding='10' cellspacing="2" bgcolor="" bordercolor="" align="left">
	<tr>
        
<?php
	$kolom=3;
	$x = 0;
	if($numrows > 0){
	while($data=mysql_fetch_array($hasil))
		{
		    if ($x >= $kolom) 
			    {
			      echo "</tr><tr>";
			      $x = 0;
				}
	$x++;
?>

<td align=center>			 
	<div class ="teks_nama_produk">
    	<?php echo $data['nama']; ?><br><br>
    </div>
    
    <div>
		<img width='80px' height='105px' valign='top' border='1,5' src="produk/<?php echo $data['gambar']; ?>"><br><br>
	</div>		 
	
    <div class ="teks_harga_produk">
        <?php $hargarp = $data['harga'] ?>
        <?php echo "Rp " .number_format($hargarp, 0, ',', '.').",-" ?><br><br>
    </div>

    
        <hr />	
</td>
            
<?php
	}
	}
?>

</tr>
</table>
    