const { spawn } = require("child_process");
spawn(`psql ${process.env.DATABASE_URL}`, [], {
  cwd: __dirname,
  stdio: "inherit",
  shell: true,
});
