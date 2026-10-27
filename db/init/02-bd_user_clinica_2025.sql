-- phpMyAdmin SQL Dump
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

USE `bd_user_clinica_2025`;

--
-- Base de datos: `bd_user_clinica_2025`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuentas`
--

CREATE TABLE `cuentas` (
  `Id_Cuenta` int(11) NOT NULL,
  `Correo` varchar(150) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Rol` enum('Admin','Especialista','Paciente') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cuentas`
--

INSERT INTO `cuentas` (`Id_Cuenta`, `Correo`, `Password`, `Rol`) VALUES
(41, 'oscarargar@outlook.es', '$2y$10$h21jKhhqhGnGc6Ab21hOQOT9Moxk3Fet/xvRVGmP5AMoY3qvQlkkS', 'Paciente'),
(42, 'aasdsrvargar@outlook.es', '$2y$10$weNnpCVL7i1RKd1y3U/oQuO1Pf5LeOG5RdOyEged55A/okVHjM7CW', 'Paciente'),
(43, 'asqwfrvargar@outlook.es', '$2y$10$jEYZdsp8iWzN1mjFJNj1.ODaSLRZsheYRd6Mt3gZfXe7473i/Z/La', 'Paciente'),
(44, 'aswad@asfdaw.casd', '$2y$10$ckGnVqUDJsVmC/kggZklnuzrkizo/jfxOgURoFbTdL9WZVhk3Bjf6', 'Paciente'),
(45, 'asdawhdfgjr@outlook.es', '$2y$10$hkS1uvAX/kObrUx11qXMLOjd311lP2TZKt3dcbny8juRlCZrbu2Qu', 'Paciente'),
(46, 'jgfghdfgar@outlook.es', '$2y$10$ydquzAFMGcg2r2O.6dZAcOhbK42WpN.EM.JA7/1YUYVgwkDnmShYS', 'Paciente'),
(47, 'uokl@outlook.es', '$2y$10$UVzH7gV3CxoMpWgyUuoH1uE0XV6G0Gcw3vUlmHmfeRd6T2k53RCJm', 'Paciente'),
(48, 'osasdar@outlook.es', '$2y$10$Y3IFN327cPchaYNb39L2u.oT4N0DCMMf8aPwMuJg7Tl.KG99o6.JS', 'Paciente'),
(49, 'oscarvaasdawdargar@outlook.es', '$2y$10$XldpQVbXJ6/mIFOPuur.Iuolg3AySJCYWe2AqEJ2GUOhJ1ZQwp6t6', 'Paciente'),
(50, 'oscargfwvargar@outlook.es', '$2y$10$Oeh5QkAjTIi8mesrwmlsD./OheotLn74V0gMbMRyp42qqp/BXusyO', 'Paciente'),
(51, 'oscarvargawdasar@outlook.es', '$2y$10$gPsWlkqSXD2bwdkKAO0M1uNi.l3vZVYCZzMzfR0fYWujOTzpNMnsy', 'Paciente'),
(52, 'oscarvargfawdawar@outlook.es', '$2y$10$nd4upz3hyn/6KS94tnqpluc/QrBEBd9.lfgSoQ9kcFfeCoZXQKBeW', 'Paciente'),
(53, 'oscarvargaswfar@outlook.es', '$2y$10$11gziD8abfQd0JwoTnrZ5uOoS1QvCuXKUperZ18v0JU5FZGu0BLye', 'Paciente'),
(54, 'asdawafsrgar@outlook.es', '$2y$10$pgVo35QNGWiR86W5cydIMe3KHLeE1UktmNpvM9RZYCFShLSHMUei.', 'Paciente'),
(59, 'admin@admin.admin', '$2y$10$3K8YqbbP3ktdg1WqFvUZOu.MLu9J6b/r1MZn1Yyyoc/jRtJTThy22', 'Admin'),
(60, 'oscarvargar@outlook.es', '$2y$10$3g7eWOY8VA72e7qMwRt8ZeNEmzUoVGCatcWSSXIsJ.C06uDt9mRbi', 'Paciente'),
(64, 'vargasgarciaoscar947@gmail.com', '$2y$10$ewyGKFmbw6N7ZOm/t4X.Su4dZk8mSyDxqynGEvtJ/jfrT9lzGmFzW', 'Paciente'),
(66, 'x@x.x', '$2y$10$o5CROd.xmCkStYLQMbL/bOqdWDajWlQDvcV9VGjYtqf91XgbWIQnu', 'Paciente'),
(67, 'z@z.z', '$2y$10$hpl4r1ADcWP2hEJ/YD/VR.Gcf8.gs4YW1/.0meC9PJGG7E9/clAu6', 'Paciente'),
(68, 'y@y.y', '$2y$10$14Hqy9SHvclWq3tf6nGfae668IjyGkeuSE/tCR/VFoHfQnzalgCGu', 'Paciente'),
(69, 'o@o.o', '$2y$10$P.E3EXUHhn9jploApklAiO412FSa4W21tF7zls4M0YL3IDtDpJvTu', 'Paciente'),
(70, 'i@i.i', '$2y$10$QclzbQMkjXbnRKvsKRpDHOTodx84X5Y5T.gfRW5asyDHhItgcB4.G', 'Paciente'),
(75, 'j@j.j', '$2y$10$duvGtNiZ9qUGvItW3vcNlOAzIwe0g5bNeInS7exgZuXxBlVtJsHwO', 'Paciente'),
(76, 'oscar@oscar.com', '$2y$10$EY3cLhGF9C5j/PqX4IwBru5/Kf.6MBog79hjRiOtMt4ZcK8vlHGAu', 'Paciente'),
(77, 'k@k.k', '$2y$10$WkdnjJjyH7mUo2ZftEKPF.NQtwGvU22JzM0KmsCSRh33mSroqSac.', 'Paciente'),
(78, 'l@l.l', '$2y$10$pHJTgbCXWMWAeJAeDLiZm.O/hcI1cKN7F7pbZFKXmCu4l60kk9rsq', 'Paciente'),
(79, 'g@g.g', '$2y$10$Kk6nU11Z614UCYHaKygGwOgMdR6fSeuB3Pv3BXOjajGNzCkRX0yGq', 'Paciente'),
(80, 'akwdgkuawgkuawbd2@askdbkuawdb.com', '$2y$10$jlof54Lzz6/pdYRDW0l9Aupvg8iyTqlscyFoKksdbCVGBxvXNk9V.', 'Paciente'),
(81, 'u@u.u', '$2y$10$IPScR8i1S7EaHYAzCLqGX.YYJ58fkn6z8TkewlR/mauD4kt9OjK5.', 'Paciente'),
(82, 'h@h.h', '$2y$10$CC7OcqbomhUeYnLDqiyzXODuJ1yIrBOJeqOxLGvj.emRbCuqwbKiC', 'Paciente'),
(83, 'q@q.q', '$2y$10$PzUeC.OiP/v6/fZxx6ocQetjrNDq7FHxwjJxad3w5MZjsJ.j/1zyG', 'Paciente'),
(84, 'b@b.x', '$2y$10$Urs/fFkCZgoH1RkH0gsv5OJ6voRrOlK/tfhSwy1tK1NK5m/aotsiu', 'Paciente'),
(85, 'oscarVG@oscar.com', '$2y$10$Mp8bxO9RtJx5atTE/uTDHehTjiTGZ5ELklCfQb//lfWXdiiOc9Xc6', 'Paciente'),
(86, 'ha@xd.com', '$2y$10$ts0cYaldeDVlEAhzFoXZDuCMCztaTESzb9BOTF03eCKL6F83QnYqa', 'Paciente'),
(87, 'prueva@ja.xa', '$2y$10$2X/OsCCo8kFv3ibB6xe6ZOFK9o0X8dZSY84rWfEXolMni8V7C5n9K', 'Paciente'),
(88, 'juasjuas@jasd.asd', '$2y$10$GKHjdd6.Zz76Zs5CRkMAeuOGTaNxu445I.TQ8pRw.UCpRDDQqJ5Xm', 'Paciente'),
(89, 'r@x.q', '$2y$10$yiYWuNRvrVolnNMvp.2uxejaWRLvti8Rr8uVp8nwJC1IXPmmB3CQ.', 'Paciente'),
(90, 'jasdjajwd@awudna.com', '$2y$10$rhRgK4QLptF8r//nOW94te7i8GaFpzteMZVJ8pmY100CpxI3k8mI.', 'Paciente'),
(91, 'luawhlduaw@sdlhuawdaw.asda', '$2y$10$/A2YBAlwmbI4ySgPQ0NCn.fB8RIjckozIVzQ99dOSY6UkXpCBGyiS', 'Paciente'),
(92, 'ljawljbadw@xas.x', '$2y$10$7EzY6EQtL72cj1hTHjJVAOAsWuwjrJ/ebB8Sdwi7IDqj770GXSa9C', 'Paciente'),
(93, 'ahkuduawkdaw@adkwjbda.casda', '$2y$10$vqX496MS1R9Ykl.6XKzcu.BTtACDZQUsl57.BeZSY2XPjZ2WqrbD.', 'Paciente'),
(94, 'uhu@hsasd.co', '$2y$10$SEM209hghX08JSHPupjLn.uvp7btSFni85AOzpA2NBfiRAWvwC6By', 'Paciente'),
(95, 'y@y.x', '$2y$10$OHUkzHPdUSPZEoBUz8G./uFOu3otLBywHSu3nb7kRMKl2RhsnLlLO', 'Paciente'),
(96, 'a1@a.a', '$2y$10$ketRvdmIEYlW4BdsQtAVQefTnKiIlX/rECsv/tqyStFmdhS6N34RK', 'Paciente'),
(97, 'oknk@adhuwd.asd', '$2y$10$y6g.V1.xFAxFzMIFus5AsOEVeLZQ9qpo8trU6oUMrb3AzHVM6QJHu', 'Paciente'),
(98, 'juasd@asbdawdb.adluaw', '$2y$10$r0BFHTaNjta1USCOVqIjd.R.Ic.h.J/KtBMXK6lfUIki8/FIpXjOG', 'Paciente'),
(99, 'oli@xsasd.co', '$2y$10$W9JYx8EkuWdMzxn6Ev8Gruk6jsys7SG69b8ZZmfaMncL9SHmr7wbu', 'Paciente'),
(100, 'jadlbwdajw@abwduawd.co', '$2y$10$zK/sJ7K4QTMo.waA/dfGROWJTZu12ufnKZKsh4KZVfO06v2XZCWI6', 'Paciente'),
(101, 'p1@p.p', '$2y$10$jU3xiOcKqu1Qbmx98ZqA8OKEqQTpwVGr2wI3Zk/EDPOZCUtw8Evca', 'Paciente'),
(102, 'p2@op.l', '$2y$10$Qr61MOI.jdgD4th0tP1s.O6RvoWHStgn68jfg.tknBqmW.efCMtcS', 'Paciente'),
(103, 'p2@a.a', '$2y$10$3gXb1EoNgG51jtxcK0JQFeUAclX1BW7.Cz1vUC5LzsbYfvHgcCVJ.', 'Paciente'),
(104, 'Pq@dh.asd', '$2y$10$FHfm/p9lKke3JNqUoVjDLu0WQAfnP1Aejj63CALGhV6gk/Ke8c4y6', 'Paciente'),
(105, 'ads@cx.asd', '$2y$10$pXWXZV3mVwQO6UO9QHyyA.ulkV0cCXaorGYmYF4R.uzA2VTJGs5Yi', 'Paciente'),
(106, 'oasd@aluwbdawd.com', '$2y$10$QZFFj40qGQYjl8XQe/G1EuTh6dnI/zJ1xVX0khQN5nC7hLe7.qCda', 'Paciente'),
(107, 'ki@asd.com', '$2y$10$P30a6ypvM.sJdy8GANWk6OIsV/ZV3Jrk3vX59adKwxUzU83Kwawpi', 'Paciente'),
(108, 'hu@ki.com', '$2y$10$CYhmOJro00Z8SsYAcrriVeJy1IXMLF.nCpN6mxHF6CZZ09zcHRoyK', 'Paciente'),
(109, 'po@po.s', '$2y$10$6GHrKtYN01MfPwOtg1Nvnug28di8TmjWwAYPSa/bpn89LNVud9TWW', 'Paciente'),
(110, 'a@c.a', '$2y$10$ktmNdL9Y0lFq25DkLLm8negRJeF6.9yhUohqXFZPKwgw9Kf5v9mAK', 'Paciente'),
(111, 'test@test.test', '$2y$10$HrssKYKP3VGBgRMGO5R1FOkwu4i1g3.BAfMWYqGTeL2EwRPgQ7NHO', 'Paciente'),
(112, 'Kitsune@outlook.es', '$2y$10$kcDpoHmH32A2AeRVgV8uVevkDWvqb/jq5C/mhpd22JzUjqw15z/fu', 'Paciente'),
(113, 'Kevin@kevin.kevin', '$2y$10$vNj6F8/.lDDPljRDfR7YH.zTFtA2smdoIhokdfCNADnUjnUAWjxeC', 'Paciente'),
(114, 'TTGL@TTGL.TTGL', '$2y$10$g0m6wB7yIG9C8XlUeGZ0HuBsBFdcigVrnJx.l4vgoGra6l59xPvHu', 'Paciente'),
(115, 'Spiral@Spiral.Spiral', '$2y$10$xyx/HhodMPGqzUUnPSfoUeDk8B/lVJQ7FgOwMRtwwYobhAk0JQQoO', 'Paciente'),
(116, 'Enki@enki.enki', '$2y$10$2HrMGcfPH9uw3K8jekqSyew/XcKWFWc2SV1rxj45SyXHQFzLJUDhC', 'Paciente'),
(117, 'a@a.a', 'oscar08', 'Admin'),
(118, 'prueba@oscar.com', '$2y$10$GwWXh7zGY8dutpmJm6.6NuCieZXrMCQb6PC3LLcoJKzl3c736nlN2', 'Paciente'),
(119, 'oscarvarxgar@outlook.es', '$2b$10$mBCWUiqYaAJKmaltPA3qH.11CurpP3UCMHso03E8.CfuYug7lLU.2', 'Paciente'),
(120, 'x@asd', '$2b$10$mrSy0kpRDxE5rLQr3VUgJ.6EGXln3BCqBEYKJecd6zHgg4uPmyjDK', 'Paciente'),
(148, 'prueba2@oscar.com', '$2b$10$kt0x3Iinm/a0Oc.qjJkpke.gOHs9sL2UYtoaTuQxVeVdygWD.9E0K', 'Paciente'),
(149, 'prueba3@oscar.com', '$2b$10$wHra28pcuIzE./LMWuk/0eGlAlMcU2wa1vhGkIV3WillRezpGqI0K', 'Paciente'),
(172, 'oscarvargar@outlook.esx', '$2b$10$oRre.8ARGd0m6E4lSfKwG.VBvx8I/KqIn4T2vXieZP2p9wj7EyKkW', 'Paciente'),
(173, 'oscarvargar@outlook.esa', '$2b$10$JW7eCIdWKLYDHmYxYwnslOIyV1viKj2jxYmGCgfJIeFY9AqJjElq.', 'Paciente'),
(174, 'oscarvargar@outlook.esas', '$2b$10$2SKP8ZD4qv2B.QjsAGT2xemA1cQlkaJO5qD2wRLoQygCQQjxLaHSu', 'Paciente'),
(175, 'oscarvargar@outlook.esass', '$2b$10$iQox02RbBAZyLGXUFn/1Iehm2XHjhXvRsG8upAAHtx8wNY8qrBEEq', 'Paciente'),
(176, 'vargasgarciaoscar9147@gmail.com', '$2y$10$cWLlSokb2.7BuRd2HUbJ1uhMZVSdI6oNq4hORvh.DzEKbsv6.oWVy', 'Paciente'),
(177, 'oscarvargar@outlook.esw', '$2y$10$iJ4G3/59bslKGff.VXV1ReiUmirDWghifyf6kWKBkshIRmRYJ/ZZa', 'Paciente'),
(178, 'oscarvargar@outloo.es', '$2b$10$TTckNqDVuCFSuS2hKF1IMujUsiDlhCXH.loZ8T7wdJHpcw/rz.Yhu', 'Paciente'),
(179, 'oscarvargar@outlook.esl', '$2b$10$BFoJyHSkyCtmNy8Oy643fOwQDT6c//XI00Ini5JYkCtCISfHbTEni', 'Paciente'),
(180, 'oscarvargar@oulook.es', '$2b$10$hV8ekjwV8mGISai9qtD6uO7OKAF8.cOwN6xxSsFyQIvWKmhA3gFki', 'Paciente'),
(182, 'oscarvargar@outlook.eas', '$2b$10$FlrC8VBXWkQFS/GgtbaiMeBFszPYMxfUPsY6jH89A4LFK3wSQKdBi', 'Paciente'),
(183, 'carlosargar@outlook.es', '$2b$10$vQjdhkCnVZ.yfzEkFpq25utiANuUoN3t3WhYLAtAit3YBvszPoHRO', 'Paciente'),
(184, 'garciaoscar947@gmail.com', '$2b$10$J80Dgr5A6FwtePvXtJVN4e0KZh0ivZEwx6OAPbCUGMWxqyqnXYhNS', 'Paciente'),
(190, 'oscarvargar@outlook.esn', '$2b$10$FBKQ46FrRCj3fWDwTCPJEuIyD4QYXcsI3JUqCoh.cINFamtUF2l4a', 'Paciente'),
(191, 'oscarvargar@outlook.essss', '$2b$10$msbbQCYlraRa0AKrKYD5ueHJC8.Xa5IOCdMcGIJAYUehKbhu7Sv8K', 'Paciente'),
(192, 'vargar@outlook.es', '$2b$10$SVxnuU/MK92kyHVzg/vtIeAinOZBwVyyxZt/yv3U/D1K05DOKQYvO', 'Paciente'),
(193, 'oscarvar@outlook.es', '$2b$10$QzTlKqlN85i1lV126w9BRehNjIVUr0USkXeq9J11hivbYHqdZzUZm', 'Paciente'),
(194, 'Prueba1@outlook.es', '$2b$10$yinIOCZWxS.Frh1Dmcd4KeERw8P/XS/RETdTU7T4zvUA8dxHLZ27u', 'Paciente'),
(195, 'Prueba2@prueba.com', '$2b$10$ReJ7EpcUickowlaojteVv.3i.qBbRrxtUC5I.Fw9dTQpJQCL.jt9.', 'Paciente'),
(196, 'Prueba3@prueba.com', '$2b$10$KZFyTEL16xUYybM274ZmeOZ/9QR1RyXyonkChL9WptdiCkJmEZN6u', 'Paciente'),
(197, 'ts@ts.ts', '$2b$10$MEl5aOj3XejpFLxgbIwzdO6YuRXK8rWu/sbxDLnxttVZFH7Z84UHG', 'Paciente'),
(198, 't@t.c', '$2b$10$KPJW.4KVlz2Tm7jzXsbPJOmgLbIuSrYQtNJrgktilR9WlQYjHW2zm', 'Paciente'),
(199, 'k@k.kl', '$2y$10$FvxamKwfN6/u5bQGiucD9OivguCBDqvD1bABiAUSNezV/oXQCKs3W', 'Paciente'),
(201, 'test1@test1.com', '$2b$10$jPIipysGnvD.w75h1DeoWemt5mRZWICAJZNvx/oEmzOrxP.MgdmKu', 'Paciente'),
(202, 'c@c.c', '$2y$10$wVzR/z0oDnngMWHPtqO1a.Ry2X0ZR86afX0trjZeaOVkde4HU.SC6', 'Paciente'),
(203, 'oscar@pruebas.com', '$2b$10$IYNSGgWKhAZ9fUOHHnWtGuqAXb2DxdBfouJhmIbtoL0M/d3.UnE0K', 'Paciente'),
(204, 'oscar@pruebas2.com', '$2b$10$DUY9v8dkCMHhbHpTEkk6luoyE9LkSK02zXSR2zYn7XQudULayL1M.', 'Paciente'),
(206, 'admin@clinica.com', '$2b$10$DpSX0GsnZoVIWTQXidfYYeRTgh2PcdOvDsncgqkhOzBj2fGia/GpW', 'Admin'),
(208, 'admin3@clinica.com', '$2b$10$YZhPRUHtBQkHotMMkcHcOO7tui.oNzEQ6hzMJxOAlRSdktDN6PDSa', 'Admin'),
(219, 'aaa@aaa.aaa', '$2b$10$fgfBsrmdVSLcQtSPVqZt1ugpw70OAQn.QEmzT3VMoBuw0qKyqJ5yq', 'Paciente'),
(220, 'oo@oo.oo', '$2b$10$RG/euF.ZSGOIqn4BjNIqvOyvZSqumiKO3jYsIMHIVFSMZ.2B2sePG', 'Paciente');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cuentas`
--
ALTER TABLE `cuentas`
  ADD PRIMARY KEY (`Id_Cuenta`),
  ADD UNIQUE KEY `Correo` (`Correo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cuentas`
--
ALTER TABLE `cuentas`
  MODIFY `Id_Cuenta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;