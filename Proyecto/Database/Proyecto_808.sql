drop database if exists proyecto_808;

create database proyecto_808;

use proyecto_808;

create table usuario(
    
    id_usuario int(10) auto_increment primary key,
    nombre varchar(30),
    pass varchar(256),
    email varchar(50),
    fecha timestamp default current_timestamp
 
);

create table cancion(
    
    id_cancion int(10) auto_increment primary key,
    nombre varchar(30),
    minutos int(2),
    segundos int(2)
 
);

create table album(
    
    id_album int(10) auto_increment primary key,
    nombre varchar(30)
 
);

create table productor(
    
    id_productor int(10) auto_increment primary key,
    nombre varchar(30)
 
);

create table artista(
    
    id_artista int(10) auto_increment primary key,
    nombre varchar(30)
 
);

create table playlist(
    
    id_playlist int(10) auto_increment primary key,
    id_usuario int(10),
    nombre varchar(50),
    fecha timestamp default current_timestamp,
    
    constraint fk_playlist foreign key (id_usuario) references usuario(id_usuario)
 
);

create table almacena(
    
    id_playlist int(10),
    id_cancion int(10),

    constraint fk_almacena_playlist foreign key (id_playlist) references playlist(id_playlist),
    constraint fk_almacena_cancion foreign key (id_cancion) references cancion(id_cancion)
 
);

create table cancion_album(
    
    id_cancion int(10),
    id_album int(10),

    constraint fk_album_cancion foreign key (id_cancion) references cancion(id_cancion),
    constraint fk_album foreign key (id_album) references album(id_album)
 
);

create table cancion_productor(
    
    id_cancion int(10),
    id_productor int(10),

    constraint fk_productor_cancion foreign key (id_cancion) references cancion(id_cancion),
    constraint fk_productor foreign key (id_productor) references productor(id_productor)
 
);

create table cancion_artista(
    
    id_cancion int(10),
    id_artista int(10),

    constraint fk_artista_cancion foreign key (id_cancion) references cancion(id_cancion),
    constraint fk_artista foreign key (id_artista) references artista(id_artista)
 
);

create table interaccion(
    
    id_cancion int(10),
    id_usuario int(10),
    estrellas varchar(1) check (estrellas in ('1' , '2' , '3')),

    constraint fk_interaccion_cancion foreign key (id_cancion) references cancion(id_cancion),
    constraint fk_interaccion_usuario foreign key (id_usuario) references usuario(id_usuario)
 
);

insert into usuario (nombre , pass , email) values
('harris' , sha2('harris', 256) , 'samuelharris@gmail.com'),
('carlosgonza' , sha2('37gd65h8iw', 256) , 'carlosgon@gmail.com'),
('julia37' , sha2('tbng0', 256) , 'julia37@gmail.com'),
('tonkababy' , sha2('fujimonster345', 256) , 'toababy@gmail.com'),
('ramirooo' , sha2('ramiromontesdiaz', 256) , 'raooo@gmail.com')
;

insert into cancion (nombre , minutos, segundos) values
('Bajo la lluvia' , 3 , 13),
('Diablo' , 3 , 51),
('SuboX3' , 2 , 15),
('Rockestar' , 3 , 16),
('Malito' , 2 , 48),
('Shooters' , 2 , 48),
('Solo' , 3 , 11),
('TKM' , 3 , 45),
('Tom Ford' , 2 , 34),
('Haribo' , 2 , 27),
('*Luna Roja*' , 2 , 35),
('Kasei' , 2 , 58),
('Tus Ojos' , 2 , 38),
('Prada' , 2 , 42),
('Extendo' , 3 , 12),
('Pololo' , 2 , 13),
('Brujeria' , 2 , 58),
('Lo Siento' , 3 , 39),
('Algo Como Tu' , 3 , 14),
('La Novia del Dealer' , 3 , 31),
('Meliodas' , 2 , 39),
('Ya No' , 2 , 58),
('Skull Knight' , 2 , 57),
('Cruz' , 2 , 42),
('Hentai' , 3 , 11),
('Dragon' , 2 , 29),
('Atras' , 2 , 33),
('No Voy a Pedirte Perdon' , 1 , 59),
('Gore' , 2 , 36),
('Tofu delivery' , 3 , 4),
('Jugador 9' , 3 , 7),
('Kiyaera' , 2 , 48),
('Ayudame a Imaginar' , 4 , 26),
('Si Tu Kiere' , 3 , 1),
('Smartphone' , 2 , 59),
('MDSAKI' , 2 , 40),
('MISS GALAXIA' , 2 , 17),
('mula juice' , 3 , 35),
('LA VIDA QUE ELEGI' , 2 , 42),
('Jeff Hardy' , 3 , 2),
('4tro' , 2 , 15),
('Corner Plans' , 2 , 21),
('La nave' , 2 , 25),
('La Keli Ni la Peche !' , 3 , 2),
('We are The Universe' , 3 , 12),
('Mozart' , 2 , 36),
('Romance Masoca' , 2 , 34),
('viajera de erasmus' , 2 , 40),
('Mmm Tkm' , 2 , 26),
('SALAM ALEIKUM' , 2 , 51),
('#panishfeet' , 3 , 39),
('5:05 pm' , 3 , 32),
('Sauron' , 3 , 32),
('Hockeystick' , 2 , 56),
('Stos Demonios' , 2 , 58),
('RAM' , 1 , 53),
('Vuitres' , 3 , 3),
('jake el perro' , 2 , 47),
('ABAMA Jr.Suite' , 2 , 45),
('Parate un Momento' , 2 , 7),
('Guchi Polo' , 3 , 21),
('Umi' , 2 , 38),
('Water' , 3 , 10),
('Piensa en Mi' , 3 , 20),
('No Vas a Joderme' , 2 , 42),
('BBYNOSE_147BPM9S' , 2 , 44),
('WAIFU_152BPM2B' , 2 , 10),
('egoplayer' , 1 , 47),
('Lilo & Stitch' , 3 , 32),
('Fvck Luv' , 3 , 2),
('Luh Tyger' , 2 , 56),
('Cartoon Network' , 2 , 24),
('FLASHLIGHT' , 2 , 58),
('CHROME' , 2 , 40),
('NANA' , 2 , 55),
('Cuando Sonries' , 3 , 19),
('Fighting My Demons' , 2 , 30),
('Go' , 1 , 51),
('Jennifers Body' , 2 , 39),
('Kel Tec' , 2 , 7),
('Rokstar' , 2 , 14),
('x2' , 3 , 53),
('Meds' , 2 , 32),
('VETERAN(feat. Ken Carson)' , 2 , 56),
('i need u' , 2 , 29),
('Sorry Bout That' , 3 , 6),
('Mad bout that' , 2 , 10),
('XO Tour Llif3' , 3 , 3),
('Uzi work' , 1 , 42),
('King Vamp' , 3 , 7),
('New Tank' , 1 , 30),
('20 Min' , 3 , 41),
('Twizzy Rich' , 2 , 41),
('Yale' , 1 , 47),
('Goin To Hell' , 1 , 9),
('Kickback' , 1 , 59),
('Wokeup' , 1 , 55),
('Stop Breathing' , 3 , 39),
('Got Rich' , 2 , 2),
('Rockstar Made' , 3 , 14),
('Hello(feat. Yeat)' , 2 , 58),
('No clout' , 2 , 25),
('Yam' , 2 , 45),
('Shhhh' , 3 , 14),
('WAR 1' , 2 , 33),
('Turban' , 2 , 36),
('Dub' , 2 , 34),
('Money Twerk' , 2 , 19),
('FOR FUN' , 3 , 8),
('Myron' , 3 , 45),
('AP Skelly' , 1 , 34),
('see u' , 1 , 42),
('SOwhat' , 1 , 33),
('We Get High' , 1 , 47),
('Hater' , 2 , 33),
('Maze' , 2 , 24),
('Perky Dream' , 1 , 57),
('Vibes' , 2 , 4),
('Super Cell' , 2 , 41),
('Conversations' , 3 , 2)
;

insert into artista (nombre) values
('Sticky M.A'),
('LEITI'),
('Kaydy Cain'),
('Orslok'),
('Soto Asa'),
('Mda'),
('Rojuu'),
('Saramalacara'),
('Duki'),
('ken Carson'),
('Yeat'),
('Lil Uzi Vert'),
('Destroy Lonely'),
('Homixide Gang'),
('Playboi Carti'),
('KANKAN'),
('SeptembersRich'),
('Juice WRLD'),
('Tripie Redd')
;

insert into productor (nombre) values 
('Steve Lean'),
('1adaaaan'),
('Nightclub20xx'),
('iseekarlo'),
('Fabianni'),
('Jambo'),
('IAMMTOMMY'),
('Evar'),
('60k Cvndy')
;

insert into album (nombre) values 
('5ta Dimension'),
('4L'),
('2 Alive(Geek Pack)'),
('^^7^'),
('^^7^!!'),
('Corazon Verde'),
('Coupe'),
('A Great Chaos'),
('JOM'),
('Konbawa'),
('Las Pegajosas Aventuras de Sticky M.A'),
('Teen X'),
('Trip at Knight'),
('Up 2 Me'),
('USB Idol'),
('Whole Lotta Red')
;

insert into cancion_artista (id_cancion , id_artista) values
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(17, 2),


(18, 3),
(19, 3),
(20, 3),

(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),

(30, 4),

(31, 5),
(32, 5),
(33, 5),
(34, 5),
(35, 5),

(36, 6),
(37, 6),
(38, 6),
(39, 6),
(40, 6),
(41, 6),
(42, 6),
(43, 6),
(44, 6),
(45, 6),
(46, 6),
(47, 6),
(48, 6),

(49, 2),
(50, 2),
(51, 2),
(52, 2),

(53, 6),
(54, 6),

(55, 7),
(55, 1),

(56, 2),
(57, 2),

(58, 4),

(59, 2),

(60, 1),

(61, 8),

(62, 7),

(63, 8),

(64, 1),
(65, 1),

(66, 8),
(67, 8),

(68, 4),

(69, 2),
(69, 7),

(70, 9),

(71, 2),
(71, 3),

(72, 8),

(73, 7),
(73, 8),

(74, 8),

(75, 8),
(75, 7),

(76, 7),
(76, 8),

(77, 10),
(78, 10),
(79, 10),
(80, 10),

(81, 11),

(82, 12),

(83, 10),
(84, 10),
(85, 10),

(86, 11),
(87, 11),

(88, 12),
(89, 14),
(90, 15),
(91, 15),
(92, 12),

(93, 11),

(94, 10),

(95, 16),
(96, 16),
(97, 16),

(98, 15),

(99, 11),

(100, 15),

(101, 11),

(102, 17),

(103, 11),
(104, 11),
(105, 11),
(106, 11),
(107, 11),
(108, 11),

(109, 12),
(110, 12),

(111, 16),
(112, 16),
(113, 16),
(114, 16),

(115, 11),

(116, 18),

(117, 17),

(118, 19),
(119, 19),

(120, 18)
;


INSERT INTO cancion_productor (id_cancion, id_productor) values
(1, 7),

(4, 1),
(5, 7),
(6, 1),

(8, 5),
(9, 1),

(12, 5),
(13, 6),
(15, 6),
(16, 9),

(17, 4),

(18, 1),

(21, 1),
(22, 6),

(25, 7),

(26, 1),
(27, 1),
(28, 6),
(29, 6),
(29, 5),

(37, 3),

(41, 3),

(43, 3),

(45, 2),
(47, 2),

(55, 1),

(56, 4),

(60, 5),
(61, 8),
(63, 8),

(64, 1),
(65, 6),

(66, 8),
(67, 8),


(69, 4),

(73, 8),
(74, 8),
(76, 8)
;

insert into cancion_album (id_cancion, id_album) values
(6, 1),
(27, 1),
(9, 1),
(64, 1),
(26, 1),
(4, 1),

(108, 2),
(86, 2),

(115, 3),
(107, 3),

(45, 4),
(47, 4),
(48, 4),

(40, 5),
(41, 5),
(42, 5),
(43, 5),

(12, 6),
(60, 6),
(28, 6),
(29, 6),

(35, 7),
(32, 7),

(77, 8),
(79, 8),

(50, 9),
(56, 9),

(21, 10),
(15, 10),
(13, 10),
(1, 10),
(22, 10),
(10, 10),

(24, 11),
(2, 11),
(3, 11),
(8, 11),

(83, 12),
(94, 12),

(118, 13),
(119, 13),

(99, 14),
(81, 14),
(106, 14),
(93, 14),

(66, 15),
(67, 15),

(100, 16),
(98, 16),
(91, 16),
(90, 16)
;
