<!-- <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="e-ticketing - Copy/assets/style/sidebar.css">
    <title>Sidebar Admin</title>
</head>
<body>
    <div class="sidebar-admin">
        <a href="/e-ticketing - Copy/admin/index.php" class="<?php if ($page == "Dashboard") echo 'active' ?>">Dashboard</a>&nbsp;&nbsp;
        <a href="/e-ticketing - Copy/admin/pengguna/index.php" class="<?php if ($page == "Pengguna") echo 'active' ?>">Data Pengguna</a>&nbsp;&nbsp;
        <a href="/e-ticketing - Copy/admin/maskapai/index.php" class="<?php if ($page == "Maskapai") echo 'active' ?>">Data Maskapai</a>&nbsp;&nbsp;
        <a href="/e-ticketing - Copy/admin/kota/index.php" class="<?php if ($page == "Kota") echo 'active' ?>">Data Kota</a>&nbsp;&nbsp;
        <a href="/e-ticketing - Copy/admin/rute/index.php" class="<?php if ($page == "Rute") echo 'active' ?>">Data Rute</a>&nbsp;&nbsp;
        <a href="/e-ticketing - Copy/admin/jadwal/index.php" class="<?php if ($page == "Jadwal") echo 'active' ?>">Data Jadwal Penerbangan</a>&nbsp;&nbsp;
        <a href="/e-ticketing - Copy/admin/order/index.php" class="<?php if ($page == "Order") echo 'active' ?>">Pemesanan Tiket</a>&nbsp;&nbsp;
        <a href="/e-ticketing - Copy/logout.php" onClick="return confirm('Apakah anda yakin ingin logout?')">Logout</a>
    </div>
</body>
</html> -->

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sidebar Admin</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>

<body class="bg-gray-100">
    <div class="h-screen flex overflow-hidden bg-gray-100">
        <!-- Sidebar -->
        <div class="flex flex-col w-64">
            <!-- Sidebar component, swap this element with another sidebar if you like -->
            <div class="flex flex-col h-0 flex-1 bg-gray-800">
                <div class="flex-1 flex flex-col pt-5 pb-4 overflow-y-auto">
                    <!-- Navigation links -->
                    <nav class="mt-5 flex-1 px-2 bg-gray-800 space-y-1">
                        <a href="/e-ticketing - Copy/admin/index.php" class="group flex items-center px-2 py-2 text-sm font-medium text-white rounded-md hover:bg-gray-700 focus:outline-none focus:bg-gray-700 transition duration-150 ease-in-out">
                            Dashboard
                        </a>
                        <a href="/e-ticketing - Copy/admin/pengguna/index.php" class="group flex items-center px-2 py-2 text-sm font-medium text-white rounded-md hover:bg-gray-700 focus:outline-none focus:bg-gray-700 transition duration-150 ease-in-out">
                            Data Pengguna
                        </a>
                        <a href="/e-ticketing - Copy/admin/maskapai/index.php" class="group flex items-center px-2 py-2 text-sm font-medium text-white rounded-md hover:bg-gray-700 focus:outline-none focus:bg-gray-700 transition duration-150 ease-in-out">
                            Data Maskapai
                        </a>
                        <a href="/e-ticketing - Copy/admin/kota/index.php" class="group flex items-center px-2 py-2 text-sm font-medium text-white rounded-md hover:bg-gray-700 focus:outline-none focus:bg-gray-700 transition duration-150 ease-in-out">
                            Data Kota
                        </a>
                        <a href="/e-ticketing - Copy/admin/rute/index.php" class="group flex items-center px-2 py-2 text-sm font-medium text-white rounded-md hover:bg-gray-700 focus:outline-none focus:bg-gray-700 transition duration-150 ease-in-out">
                            Data Rute
                        </a>
                        <a href="/e-ticketing - Copy/admin/jadwal/index.php" class="group flex items-center px-2 py-2 text-sm font-medium text-white rounded-md hover:bg-gray-700 focus:outline-none focus:bg-gray-700 transition duration-150 ease-in-out">
                            Data Jadwal Penerbangan
                        </a>
                        <a href="/e-ticketing - Copy/admin/order/index.php" class="group flex items-center px-2 py-2 text-sm font-medium text-white rounded-md hover:bg-gray-700 focus:outline-none focus:bg-gray-700 transition duration-150 ease-in-out">
                            Pemesanan Tiket
                        </a>
                    </nav>
                </div>
                <!-- Logout button -->
                <div class="flex-shrink-0 flex bg-gray-700 p-4">
                    <a href="/e-ticketing - Copy/logout.php" onclick="return confirm('Apakah anda yakin ingin logout?')" class="flex-shrink-0 w-full group block">
                        <div class="flex items-center">
                            <svg class="h-6 w-6 text-gray-400 group-hover:text-gray-300 transition ease-in-out duration-150" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 19l-7-7 7-7" />
                            </svg>
                            <span class="ml-3 text-sm font-medium text-white">Logout</span>
                        </div>
                    </a>
                </div>
            </div>
        </div>