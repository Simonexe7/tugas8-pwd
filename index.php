<?php
    require_once "Catatan.php";
    $catatan = new Catatan();
?>

<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Catatan Tidur Mahasiswa</title>
  <link rel="stylesheet" href="style.css">
</head>
<body>
  <div class="container">
    <h1>Catatan Tidur Mahasiswa</h1>
    <table>
      <thead>
        <tr>
          <th>No</th>
          <th>NPM Mahasiswa</th>
          <th>Tanggal</th>
          <th>Jam Tidur</th>
          <th>Jam Bangun</th>
          <th>Kualitas Tidur</th>
          <th>Catatan</th>
        </tr>
      </thead>
      <tbody>
        <?php
            $no = 1;
            $row = $catatan->tampilData('catatan_tidur');
            foreach ($row as $data) :
        ?>
        <tr>
            <td><?= $no; ?></td>
            <td><?= $data['id_mahasiswa'] ?></td>
            <td><?= $data['tanggal'] ?></td>
            <td><?= $data['jam_tidur'] ?></td>
            <td><?= $data['jam_bangun'] ?></td>
            <td class="<?= strtolower($data['kualitas_tidur']) ?>"><?= $data['kualitas_tidur'] ?></td>
            <td><?= $data['catatan'] ?></td>
        </tr>
        <?php 
            $no++;
            endforeach; 
        ?>
      </tbody>
    </table>
  </div>
</body>
</html>
