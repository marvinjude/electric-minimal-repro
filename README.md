Run scripts:

```
pnpm backend:up

pnpm db:migrate

pnpm db:electrify

pnpm client:generate

pnpm start

```

Console Error:

```
Uncaught (in promise) Error: near "from": syntax error
    at check (sqlite-api.js:857:11)
    at Object.prepare_v2 (sqlite-api.js:522:7)
    at async l5.exec (database.js:1:422)
    at async n2.runInTransaction (adapter.js:1:358)
    at async O3.apply (bundle.js:15:11)
    at async O3.up (bundle.js:1:894)
    at async he2.start (process.js:1:2309)
    at async C5.startProcess (registry.js:1:1746)
    at async T10 (index.js:1:594)
    at async h7 (index.js:1:293)
```
