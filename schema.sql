drop table if exists publisher;
drop table if exists series;
drop table if exists issue;

create table publisher (
	pid integer primary key autoincrement,
	pname text not null
);
create table series (
	sid integer primary key autoincrement,
	pid integer not null,
	sname text not null,
	vol integer not null,
	foreign key (pid) references publisher(pid)
);
create table issue (
	iid integer primary key autoincrement,
	sid integet not null,
	inum integer not null,
	pdate text not null,
	price real not null,
	owned integer not null,
	read integer not null,
	foreign key (sid) references series(sid)
);

insert into publisher (pname) values ("DC Comics");
insert into publisher (pname) values ("Marvel Comics");
insert into publisher (pname) values ("Image Comics");
insert into publisher (pname) values ("Dark Horse Comics");
insert into publisher (pname) values ("IDW Publishing");
insert into publisher (pname) values ("Oni Press");
insert into publisher (pname) values ("Dynamite Entertainment");
insert into publisher (pname) values ("BOOM! Studios");
insert into publisher (pname) values ("AdHouse Books");
insert into publisher (pname) values ("AfterShock Comics");
insert into publisher (pname) values ("Albatross Funnybooks");
insert into publisher (pname) values ("First Second Books");
insert into publisher (pname) values ("Action Lab Comics");
insert into publisher (pname) values ("Bongo Comics");
insert into publisher (pname) values ("Devil's Due/1First Comics");
insert into publisher (pname) values ("UDON Entertainment");