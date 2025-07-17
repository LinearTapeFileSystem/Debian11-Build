# LTFS Build docker action for Debian11 (Bullseye)

This action builds the LTFS package on Debian11

## Inputs

### `destination`

**Required** Destination of install。 Default is `/tmp/ltfs`。

## Outputs

None

## Usage

```
uses: LinearTapeFileSystem/Debian11-Build@v1.1.1
with:
  destination: '/tmp/ltfs'
```
