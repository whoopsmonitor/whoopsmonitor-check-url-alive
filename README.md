# whoopsmonitor-check-url-alive
This check check if specified URL responds with HTTP status 200.

## Environmental variables

 - `WM_ENDPOINT_URL` URL this visits.
 - `WM_BEARER_TOKEN` Token to authentication.

## Example

Details of the check in Whoops Monitor configuration tab or for the `.env` file.

```yaml
WM_ENDPOINT_URL=https://www.google.com/
```

## Output
 - `0` - URL is alive.
 - `2` - URL is not responding.

## Build
```sh
docker build -t whoopsmonitor-check-url-alive .
```

## Run

```bash
docker run --rm --env-file .env whoopsmonitor-check-url-alive
```
