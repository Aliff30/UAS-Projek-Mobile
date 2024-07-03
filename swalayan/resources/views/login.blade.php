<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <title>Login</title>
</head>

<body>
    <div class="container py-5">
        <div class="w-50 center border rounded px-3 py-3 mx-auto">
            <div class="text-center mb-4 mt-5"> <!-- Mengatur gambar menjadi tengah -->
                <img class="mb-4" src="img/logo.jpg" alt="" width="90" height="90">
            </div>
            <form id="loginForm" method="POST" action="/login">
                @csrf
                <h1 class="h3 mb-3 fw-normal text-center">Please sign in</h1>
                <div class="mb-3">
                    <label for="email" class="form-label">Email</label>
                    <input type="email" id="email" name="email" class="form-control" required>
                </div>
                <div class="mb-3">
                    <label for="password" class="form-label">Password</label>
                    <input type="password" id="password" name="password" class="form-control" required>
                </div>
                <div class="mb-3 d-grid">
                    <button type="submit" class="btn btn-primary">Login</button>
                </div>
                <br>
                <div class="d-flex justify-content-center">
                    <a href="/register">Sign Up</a>
                </div>
            </form>
        </div>
    </div>

</body>

</html>
