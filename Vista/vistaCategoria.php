<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Categoria</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #09B7D6;
        }
        .container {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        h1, h3 {
            color: #343a40;
        }
        form {
            margin-bottom: 20px;
        }
        label {
            font-weight: bold;
        }
        .btn {
            border-radius: 5px;
        }
        table {
            margin-top: 20px;
        }
        th, td {
            vertical-align: middle !important;
            text-align: center;
        }
    </style>
</head>
<body>
    <div class="container mt-5">
        <h1 class="mb-3">Categoria</h1>
        <a class="btn btn-secondary" href="../index.php">Volver menú principal</a>
        <hr>
        <h3>Lista de Categoria</h3>
        <form action="../Controlador/controladorCategoria.php" method="post">
            <button class="btn btn-primary mb-3" type="submit" name="Acciones" value="Refrescar tabla">Refrescar tabla</button>
        </form>
        <div class="table-responsive mt-3">
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Número</th>
                        <th>Nombre</th>
                        <th>Estado</th>
                        <th>Modificar</th>
                        <th>Eliminar</th>
                    </tr>
                </thead>
                <tbody>
                    <?php while ($fila = mysqli_fetch_assoc($resultado)) : ?>
                        <tr>
                            <td><?php echo htmlspecialchars($fila['CatID']); ?></td>
                            <td><?php echo htmlspecialchars($fila['CatNombre']); ?></td>
                            <td><?php echo htmlspecialchars($fila['Catestado']); ?></td>
                            <td>
                                <button class="btn btn-warning" data-bs-toggle="modal" data-bs-target="#updateModal<?php echo htmlspecialchars($fila['CatID']); ?>">Editar</button>
                            </td>
                            <td>
                                <form action="../Controlador/controladorCategoria.php" method="post">
                                    <input type="hidden" name="CatID" value="<?php echo htmlspecialchars($fila['CatID']); ?>">
                                    <button class="btn btn-danger" type="submit" name="Acciones" value="Borrar Categoria">Eliminar</button>
                                </form>
                            </td>
                        </tr>
                        <!-- Modal para actualizar categoria -->
                        <div class="modal fade" id="updateModal<?php echo htmlspecialchars($fila['CatID']); ?>" tabindex="-1" aria-labelledby="updateModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="updateModalLabel">Actualizar Categoria: <?php echo htmlspecialchars($fila['CatID']); ?></h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <form action="../Controlador/controladorCategoria.php" method="post">
                                            <input type="hidden" name="CatID" value="<?php echo htmlspecialchars($fila['CatID']); ?>">
                                            <div class="mb-3">
                                                <label class="form-label">Nombre</label>
                                                <input class="form-control" name="CatNombre" type="text" value="<?php echo htmlspecialchars($fila['CatNombre']); ?>" required>
                                            </div>
                                            <div class="mb-3">
                                                <label class="form-label">Estado</label>
                                                <select class="form-select" name="Catestado">
                                                    <option value="Activo" <?php echo ($fila['Catestado'] == 'Activo' ? 'selected' : ''); ?>>Activo</option>
                                                    <option value="Agotado" <?php echo ($fila['Catestado'] == 'Agotado' ? 'selected' : ''); ?>>Agotado</option>
                                                </select>
                                            </div>
                                            <button class="btn btn-warning" type="submit" name="Acciones" value="Actualizar Categoria">Actualizar Categoria</button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <?php endwhile; ?>
                </tbody>
            </table>
        </div>
        <div>
            <h3>Agregar Nueva Categoria</h3>
            <form action="../Controlador/controladorCategoria.php" method="post">
                <div class="mb-3">
                    <label for="CatNombre" class="form-label">Nombre</label>
                    <input class="form-control" id="CatNombre" name="CatNombre" type="text" required>
                </div>
                <div class="mb-3">
                    <label for="Catestado" class="form-label">Estado</label>
                    <select class="form-select" id="Catestado" name="Catestado" required>
                        <option value="Activo">Activo</option>
                        <option value="Agotado">Agotado</option>
                    </select>
                </div>
                <button class="btn btn-success" type="submit" name="Acciones" value="Crear Categoria">Crear Categoria</button>
            </form>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
