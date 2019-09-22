import 'react'
import Head from 'next/head'
import Link from 'next/link'
import 'bulma/bulma.sass'
// cerner_2^5_2019
export default () => {
  return (
    <>
      <Head>
        <meta name="viewport" content="initial-scale=1.0, width=device-width"/>
        <meta name="theme-color" content="#10EFFF"/>
        <link rel="manifest" href="/static/manifest.json"/>
        <link rel="image/x-icon" href="/static/pic.png"/>
        <link rel="apple-touch-icon" href="/static/pic.png"/>
      </Head>
      <div className="section content has-text-centered">
        <h1 className="title">This is a PWA using Next.js!</h1>
        <div className="columns is-centered">
          <div className="column is-half">
            <img src="/static/pic.png"/>
          </div>
        </div>
      </div>
    </>
  )
}
