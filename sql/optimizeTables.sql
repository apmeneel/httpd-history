CREATE UNIQUE INDEX CVEIndex USING BTREE ON CVE(CVE);
CREATE UNIQUE INDEX CVEGroundedTheoryIndex USING BTREE ON CVEGroundedTheory(CVE);
CREATE INDEX FilepathIndex USING BTREE ON Filepaths(Filepath);
CREATE UNIQUE INDEX GitLogCommitIndex USING BTREE ON GitLog(Commit);
CREATE UNIQUE INDEX GitLogFilesIndex USING BTREE ON GitLogFiles(Commit,Filepath);
CREATE INDEX GitLogFilesFilepathIndex USING BTREE ON GitLogFiles(Filepath);
CREATE INDEX CVEToGitIndex USING BTREE ON CVEToGit(CVE,Filepath);

OPTIMIZE TABLE GitLog;
OPTIMIZE TABLE GitLogFiles;
OPTIMIZE TABLE Filepaths;
OPTIMIZE TABLE CVE;
OPTIMIZE TABLE CVEToGit;
OPTIMIZE TABLE CVEGroundedTheory;