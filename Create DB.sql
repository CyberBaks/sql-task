create table Genres (
GenresID INT primary key,
Name Varchar(255) not NULL
);

create table Artists (
ArtistID INT primary key,
Name varchar(255) not null,
foreign key (ArtistID) references Artists(ArtistID)
);

create table Albums (
AlbumID INT primary key,
Title varchar(255) not null,
ReleaseYear INT
);

create table Tracks (
TrackID INT primary key,
Title varchar(25a5) not null,
Duration TIME,
AlbumID INT,
foreign key (AlbumID) references Albums(AlbumID)
);

create table Artists_Genres (
ArtistID INT,
GenresID INT,
primary key (ArtistID, GenresID),
foreign key (ArtistID) references Artists(ArtistID),
foreign key (GenresID) references Genres(GenresID)
);

create table Artists_albums (
ArtistID INT,
AlbumID INT,
primary key (ArtistID, AlbumID),
foreign key (ArtistID) references Artists(ArtistID),
foreign key (AlbumID) references Albums(AlbumID)
);

create table Compilations (
CompilationID INT primary key,
Title varchar(255) not null,
ReleasyYear INT
);

create table Compilations_Tracks (
CompilationID INT,
TrackID INT,
primary key (CompilationID, TrackID),
foreign key (CompilationID) references Compilations(CompilationID),
foreign key (TrackID) references Tracks(TrackID)
);