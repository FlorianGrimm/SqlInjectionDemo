USE master;
go

CREATE DATABASE SqlInjectionDemo
GO

use SqlInjectionDemo;
GO

USE [SqlInjectionDemo]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
--DROP TABLE [dbo].[persons]

CREATE TABLE [dbo].[persons](
	[Name] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](4000) NOT NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[persons] ADD  CONSTRAINT [DF_persons_Name]  DEFAULT ('') FOR [Name]
GO

ALTER TABLE [dbo].[persons] ADD  CONSTRAINT [DF_persons_Description]  DEFAULT ('') FOR [Description]
GO
DELETE FROM [dbo].[persons]
GO
INSERT INTO [dbo].[persons]
           ([Name]
           ,[Description])
     VALUES
('Ada Lovelace', 'An English mathematician and writer, chiefly known for her work on Charles Babbage''s proposed mechanical general-purpose computer, the Analytical Engine. She was the first to recognize that the machine had applications beyond pure calculation, and created the first algorithm intended to be carried out by such a machine. As a result, she is often regarded as the first to recognize the full potential of a "computing machine" and the first computer programmer.'),
('Adriaan van Wijngaarden', 'Developer of the W-grammar first used in the definition of ALGOL 68'),
('Akira Nakashima', 'NEC engineer introduced switching circuit theory in papers from 1934 to 1936, laying the foundations for digital circuit design, in digital computers and other areas of modern technology.'),
('Al-Jazari', 'Invented programmable machines, including programmable humanoid robots,[12] and the castle clock, an astronomical clock considered the first programmable analog computer.[13]'),
('Al-KhwarizmI', 'The term "algorithm" is derived from the algorism, the technique of performing arithmetic with Hindu–Arabic numerals popularised by al-Khwarizmi in his book "On the Calculation with Hindu Numerals".'),
('Alan Kay', 'Pioneered many of the ideas at the root of object-oriented programming languages, led the team that developed Smalltalk, and made fundamental contributions to personal computing.'),
('Alan Perlis', 'On Project Whirlwind, member of the team that developed the ALGOL programming language, and the first recipient of the Turing Award'),
('Alan Turing', 'Made several founding contributions to computer science, including the Turing machine computational model, the conceiving of the stored program concept and the designing of the high-speed ACE design. Widely considered as the father of computer science and artificial intelligence.'),
('Alonzo Church', 'Founded contributions to theoretical computer science, specifically for the development of the lambda calculus and the discovery of the undecidability problem within it.'),
('An Wang', 'Made key contributions to the development of magnetic core memory.'),
('André Truong Trong Thi and François Gernelle ', 'Invention of the Micral N, the earliest commercial, non-kit personal computer based on a microprocessor.'),
('Banū Mūsā', 'The Banū Mūsā brothers wrote the Book of Ingenious Devices, where they described what appears to be the first programmable machine, an automatic flute player.[14]'),
('Barbara Grosz ', 'Created the first computational model of discourse, which established the field of research and influenced language-processing technologies. Also developed SharedPlans model for collaboration in multi-agent systems.'),
('Barbara Liskov', 'Developed the Liskov substitution principle, which guarantees semantic interoperability of data types in a hierarchy.'),
('Bertrand Russell', 'Made contributions to computer science with his work on mathematical logic (example: truth function). Introduced the notion of type theory. He also introduced type system (along with Alfred North Whitehead) in his work, Principia Mathematica.'),
('Betty Holberton', 'Wrote the first mainframe sort merge on the Univac'),
('Bjarne Stroustrup', 'Invented C++ at Bell Labs'),
('Blaise Pascal', 'Invented the mechanical calculator.'),
('C.A.R. Hoare', 'Developed the formal language communicating sequential processes (CSP), Hoare logic for verifying program correctness and Quicksort.'),
('Chai Keong Toh', 'Created mobile ad hoc networking; Implemented the first working wireless ad hoc network of laptop computers in 1998 using Linux OS, Lucent WaveLan 802.11 radios, and a new distributed routing protocol transparent to TCP/UDP/IP.'),
('Charles Babbage', 'Originated the concept of a programmable general-purpose computer. Designed the Analytical Engine and built a prototype for a less powerful mechanical calculator.'),
('Claude Shannon', 'Founded information theory, and laid foundations for practical digital circuit design.'),
('Corrado Böhm', 'Theorized of the concept of structured programming.'),
('Cuthbert Hurd', 'Helped the International Business Machines Corporation develop its first general-purpose computer, the IBM 701.'),
('David Caminer', 'With John Pinkerton, developed the LEO computer, the first business computer, for J. Lyons and Co'),
('Dennis Ritchie', 'With Ken Thompson, pioneered the C programming language and the Unix computer operating system at Bell Labs.'),
('Donald Knuth', 'Wrote The Art of Computer Programming and created TeX. Coined the term "analysis of algorithms" and made major contributions to that field, including popularizing Big O notation.'),
('Douglas Engelbart', 'Best known for inventing the computer mouse (in a joint effort with Bill English); as a pioneer of human–computer interaction whose Augment team developed hypertext, networked computers, and precursors to GUIs.'),
('E. Allen Emerson', 'Developed model checking and formal verification of software and hardware together with Edmund M. Clarke.'),
('Edgar F. Codd', 'Proposed and formalized the relational model of data management, the theoretical basis of relational databases.'),
('Edmund M. Clarke', 'Developed model checking and formal verification of software and hardware together with E. Allen Emerson.'),
('Edsger Dijkstra', 'Made advances in algorithms, pioneered and coined the term structured programming, invented the semaphore, and famously suggested that the GOTO statement should be considered harmful.'),
('Edward J. McCluskey', 'Fundamental contributions that shaped the design and testing of digital systems, including the first algorithm for digital logic synthesis, the Quine-McCluskey logic minimization method.'),
('Elizabeth Feinler', 'Her team defined a simple text file format for Internet host names.[29] The list evolved into the Domain Name System and her group became the naming authority for the top-level domains of .mil, .gov, .edu, .org, and .com.'),
('Emil L. Post', 'Developed the Post machine as a model of computation, independently of Turing. Known also for developing truth tables, the Post correspondence problem used in recursion theory as well as proving what is known as Post''s theorem.'),
('Federico Faggin', 'designing the first commercial microprocessor (intel 4004)'),
('Feng-hsiung Hsu', 'Work led to the creation of the Deep Thought chess computer, and the architect and the principal designer of the IBM Deep Blue chess computer which defeated the reigning World Chess Champion, Garry Kasparov, in 1997.'),
('Frances E. Allen', 'Developed bit vector notation and program control flow graphs. Became the first female IBM Fellow in 1989. In 2006, she became the first female recipient of the ACM''s Turing Award.'),
('Fred Brooks', 'Manager of IBM System/360 and OS/360 projects; author of The Mythical Man-Month.'),
('George Boole', 'Formalized Boolean algebra, the basis for digital logic and computer science.'),
('Gerard Salton ', 'A pioneer of automatic information retrieval, who proposed the vector space model and the inverted index.'),
('Gottfried Leibniz', 'Made advances in symbolic logic, such as the Calculus ratiocinator, that were heavily influential on Gottlob Frege. Made developments in first-order predicate calculus that were crucial for the theoretical foundations of computer science.'),
('Gottlob Frege', 'Developed first-order predicate calculus, which was a crucial precursor requirement to developing computation theory.'),
('Grace Hopper', 'Pioneered work on the necessity for high-level programming languages, which she termed automatic programming, and wrote the A-O compiler, which heavily influenced the COBOL language.'),
('Herbert A. Simon', 'A political scientist and economist who pioneered artificial intelligence. Co-creator of the Logic Theory Machine and the General Problem Solver programs.'),
('Herman Hollerith', 'Widely regarded as the father of modern machine data processing. His invention of the punched card tabulating machine marks the beginning of the era of semiautomatic data processing systems.'),
('Howard Aiken', 'Conceived and codesigned the Harvard Mark I.'),
('Ivan Sutherland', 'Author of Sketchpad, the ancestor of modern computer-aided drafting (CAD) programs and one of the early examples of object-oriented programming.'),
('J. C. R. Licklider', 'Began the investigation of human–computer interaction, leading to many advances in computer interfaces as well as in cybernetics and artificial intelligence.'),
('J. Presper Eckert', 'With John Mauchly, designed and built the ENIAC, the first modern (all electronic, Turing-complete) computer, and the UNIVAC I, the first commercially available computer.'),
('Jacek Karpinski', 'Developed the first differential analyzer that used transistors, and developed one of the first machine learning algorithms for character and image recognition. Also was the inventor of one of the first minicomputers, the K-202.'),
('James Cooley', 'With John W. Tukey, created the fast Fourier transform.'),
('Jean E. Sammet', 'Developed the FORMAC programming language. She was also the first to write extensively about the history and categorization of programming languages in 1969, and became the first female president of the Association for Computing Machinery in 1974.'),
('Jim Gray', 'Innovator in database systems and transaction processing implementation.'),
('John Atanasoff', 'Built the first electronic digital computer, the Atanasoff–Berry Computer, though it was neither programmable nor Turing-complete.'),
('John Backus', 'Led the team that created FORTRAN (Formula Translation), the first practical high-level programming language, and he formulated the Backus–Naur form that described the formal language syntax.'),
('John Mauchly', 'With J. Presper Eckert, designed and built the ENIAC, the first modern (all electronic, Turing-complete) computer, and the UNIVAC I, the first commercially available computer. Also worked on BINAC(1949), EDVAC(1949), UNIVAC(1951) with Grace Hopper and Jean Bartik, to develop early stored program computers.'),
('John McCarthy', 'Invented LISP, a functional programming language.'),
('John von Neumann', 'Formulated the von Neumann architecture upon which most modern computers are based.'),
('John W. Tukey', 'With James Cooley, created the fast Fourier transform. He invented the term "bit".[26]'),
('Joseph Marie Jacquard', 'Built and demonstrated the Jacquard loom, a programmable mechanized loom controlled by a tape constructed from punched cards.'),
('Karen Spärck Jones ', 'Was one of the pioneers of information retrieval and natural language processing.'),
('Kathleen Booth', 'Invented the first assembly language.'),
('Ken Thompson', 'Created the Unix operating system, the B programming language, Plan 9 operating system, the first machine to achieve a Master rating in chess, and the UTF-8 encoding at Bell Labs and the Go programming languageat Google.'),
('Kenneth E. Iverson', 'Assisted in establishing the first graduate course in computer science (at Harvard) and taught that course; invented the APL programming language and made contribution to interactive computing.'),
('Konrad Zuse', 'Built the first digital freely programmable computer, the Z1. Built the first functional program-controlled computer, the Z3.[28] The Z3 was proven to be Turing-complete in 1998. Produced the world''s first commercial computer, the Z4. Designed the first high-level programming language, Plankalkül.'),
('Kristen Nygaard', 'With Ole-Johan Dahl, invented the proto-object oriented language SIMULA.'),
('Kurt Gödel', 'Proved that Peano axiomatized arithmetic could not be both logically consistent and complete in first-order predicate calculus. Church, Kleene, and Turing developed the foundations of computation theory based on corollaries to Gödel''s work.'),
('Leslie Lamport', 'Formulated algorithms to solve many fundamental problems in distributed systems (e.g. the bakery algorithm). Developed the concept of a logical clock, enabling synchronization between distributed entities based on the events through which they communicate. Created LaTeX.'),
('Linus Torvalds', 'Created the first version of the Linux kernel.'),
('Lynn Conway', 'Superscalar architecture with multiple-issue out-of-order dynamic instruction scheduling.'),
('Margaret Hamilton', 'Developed the concepts of asynchronous software, priority scheduling, end-to-end testing, and human-in-the-loop decision capability, such as priority displays which then became the foundation for ultra reliable software design.'),
('Marvin Minsky', 'Co-founder of Artificial Intelligence Lab at Massachusetts Institute of Technology, author of several texts on AI and philosophy.'),
('Masatoshi Shima', 'Designed the Intel 4004, the first commercial microprocessor,[23][24] as well as the Intel 8080, Zilog Z80 and Zilog Z8000 microprocessors, and the Intel 8259, 8255, 8253, 8257 and 8251 chips.[25]'),
('Maurice Karnaugh', 'Inventor of the Karnaugh map, used for logic function minimization.'),
('Maurice Wilkes', 'Built the first practical stored program computer (EDSAC) to be completed and for being credited with the ideas of several high-level programming language constructs.'),
('Max Newman', 'Instigated the production of the Colossus computers at Bletchley Park. After the war he established the Computing Machine Laboratory at the University of Manchester where he created the project that built the world''s first stored-program computer, the Manchester Baby.'),
('Michael Stonebraker', 'Researcher at MIT’s Computer Science and Artificial Intelligence Laboratory (CSAIL) who revolutionized the field of database management systems (DBMSs) and founded multiple successful database companies'),
('Niklaus Wirth', 'Designed the Pascal, Modula-2 and Oberon programming languages.'),
('Noam Chomsky', 'Made contributions to computer science with his work in linguistics. He developed Chomsky hierarchy, a discovery which has directly impacted programming language theory and other branches of computer science.'),
('Noriko Umeda', 'Her team at Japan''s Electrotechnical Laboratory developed the first text-to-speech synthesis system.[27]'),
('Ole-Johan Dahl', 'With Kristen Nygaard, invented the proto-object oriented language SIMULA.'),
('Pāṇini', 'Ashtadhyayi Sanskrit grammar was systematised and technical, using metarules, transformations, and recursions, a forerunner to formal language theory and basis for Panini-Backus form used to describe programming languages.'),
('Per Brinch Hansen', 'Developed the RC 4000 multiprogramming system which introduced the concept of an operating system kernel and the separation of policy and mechanism, effectively the first microkernel architecture.[4] Co-developed the monitor with Tony Hoare, and created the first monitor implementation.[5] Implemented the first form of remote procedure call in the RC 4000,[4] and was first to propose remote procedure calls as a structuring concept for distributed computing.[6]'),
('Peter Naur', 'Edited the ALGOL 60 Revised Report, introducing Backus-Naur form'),
('Pier Giorgio Perotto ', 'Designer of Olivetti Programma 101, the first Desktop Computer, arguably the first kind of personal computer[21].'),
('Rózsa Péter', 'Published a series of papers grounding recursion theory as a separate area of mathematical research, setting the foundation for theoretical computer science.'),
('Radia Perlman', 'Invented the Spanning Tree Protocol (STP), which is fundamental to the operation of network bridges, while working for Digital Equipment Corporation. Has done extensive and innovative research, particularly on encryption and networking. She received the USENIX Lifetime Achievement Award in 2007, among numerous others.'),
('Ramon Llull', 'Designed multiple symbolic representations machines, and pioneered notions of symbolic representation and manipulation to produce knowledge—both of which were major influences on Leibniz.'),
('Richard Hamming', 'Created the mathematical field of error-correcting code, Hamming code, Hamming matrix, the Hamming window, Hamming numbers, sphere-packing (or Hamming bound), and the Hamming distance.[8][9] He established concept of perfect code.[10][11]'),
('Richard Stallman', 'Stallman launched the GNU Project in September 1983 to create a Unix-like computer operating system composed entirely of free software. With this, he also launched the free software movement.'),
('Rosalind Picard ', 'Founded Affective Computing, and laid the foundations for giving computers skills of emotional intelligence.'),
('Sally Floyd', 'Is known for her work on Transmission Control Protocol.'),
('Saul Rosen', 'Designed the software of the first transistor-based computer. Also influenced the ALGOL programming language.'),
('Sergei Alekseyevich Lebedev', 'Independently designed the first electronic computer in the Soviet Union, MESM, in Kiev, Ukraine.'),
('Seymour Ginsburg', 'Proved "don''t-care" circuit minimization does not necessarily yield optimal results, proved that the ALGOL programming language is context-free (thus linking formal language theory to the problem of compiler writing), and invented AFL Theory.'),
('Sophie Wilson', ''),
('Stephen Cole Kleene', 'Pioneered work with Alonzo Church on the Lambda Calculus that first laid down the foundations of computation theory.'),
('Stephen Cook', 'Formalized the notion of NP-completeness, inspiring a great deal of research in computational complexity theory.'),
('Stephen Furber ', 'Are known for their work on creating ARM 32bit RISC microprocessor. [7]'),
('Susan L. Graham', 'Awarded the 2009 IEEE John von Neumann Medal for "contributions to programming language design and implementation and for exemplary service to the discipline of computer science".'),
('Tadashi Sasaki ', 'Sharp engineer who conceived a single-chip microprocessor CPU, presenting the idea to Busicom and Intel in 1968, influencing the first commercial microprocessor, the Intel 4004. He also developed LCD calculators at Sharp.[22]'),
('Tim Berners-Lee', 'Invented World Wide Web. With Robert Cailliau, sent first HTTP communication between client and server.'),
('Tommy Flowers', 'Designed and built the Mark 1 and the ten improved Mark 2 Colossus computers, the world''s first programmable, digital, electronic, computing devices.'),
('Vannevar Bush', 'Analogue computing pioneer. Originator of the Memex concept, which led to the development of Hypertext.'),
('Vint Cerf', 'With Bob Kahn, designed the Transmission Control Protocol and Internet Protocol (TCP/IP), the primary data communication protocols of the Internet and other computer networks.'),
('Wesley A. Clark', 'Designed LINC, the first functional computer scaled down and priced for the individual user. Put in service in 1963, many of its features are seen as prototypes of what were to be essential elements of personal computers.'),
('Willis Ware', 'Co-designer of JOHNNIAC. Chaired committee that developed the Code of Fair Information Practice and led to the Privacy Act of 1974. Vice-chair of the Privacy Protection Study Commission.'),
('Yoshiro Nakamatsu', 'Invented the first floppy disk at Tokyo Imperial University in 1950,[15][16] receiving a 1952 Japanese patent[17][18] and 1958 US patent for his floppy magnetic disk sheet invention,[19] and licensed to Nippon Columbia in 1960[20] and IBM in the 1970s.[17][15]');

GO
CREATE TABLE [dbo].[account](
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO


INSERT INTO [dbo].[account]
           ([username]
           ,[password])
     VALUES
           ('user1', 'password'),
           ('admin', 'P@ssword1')
GO





