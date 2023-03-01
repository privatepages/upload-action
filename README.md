# privatepages upload action

An action that simply sends a artifact with html static to your self-hosted privatepages

Some features:
- Oauth2 access via GitHub to your privatepages
- Restrict access to org or team
- Self-hosted on your kubernetes cluster

## ! Who needs it !

If you've used Pages before, you've probably come across free usage restrictions.

Pages are only available for public posting.
But all you need is to add oauth, which Github provides for free!

> [![fuuuuuuu][1]][1]

  [1]: https://raw.githubusercontent.com/privatepages/upload-action/master/fuuuuuuu.png

This problem is solved by privatepages. This is a self-hosted solution using github oauth2.

## Usage

To use it, you need to install the [privatepages](https://github.com/privatepages/privatepages-chart) application on your kubernetes cluster and [create a Github oauth app](https://github.com/settings/applications/new).

You can then use the action in your repo:

```yaml
- name: Upload html static to privatepages
  uses: privatepages/upload-action@v0.1-beta
  with:
    # Artifact name
    # Default: github-pages
    name: my-artifact
    # Path of the directory containing the static assets
    # Default: "_site/"
    path: results/
    # Your self-hosted privatepages URL
    # Required. It is highly recommended to store this value in github vars
    privatepages-url: https://my-privatepages-domain.tld
    # Your self-hosted privatepages token. See API_SECRET in privatepages-chart
    # Required. It is highly recommended to store this value in github secrets
    privatepages-token: superstrongsecret

```

## Troubleshooting

## License

The scripts and documentation in this project are released under the MIT License.
