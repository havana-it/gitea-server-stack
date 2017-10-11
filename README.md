# Gitea Server Stack

## An easy-configurable, ready-to-run server stack for Gitea based upon docker.

### Quick start

Before first run, edit `timezone` file to suit your needed locale.

Then,

```bash
./server start
```

Now your Gitea server Web UI is accessible at `http://localhost:3000/`

At first run, an installation page will show up.

To have your server ready to run, just modify a few settings as follow:

in **Database section**:
- `Database Type` : `PostgreSQL`
- `Host` : `db:5432` _(this is specific to the dockerize mode, we must use the internal name known by docker as database host)_
- `Password`: `admin123`

in **General Application Settings section**:
- `SSH Port` : `10022`

Then click `Install Gitea`

That's it, you have a Gitea server running!

### Fine tuning

The configuration described above conforms to the default values initially set in the `gitearc`.

You can modify all config variables in the `gitearc` file **before** first running the stack, 
and adapt the values at installation step in Web UI.
