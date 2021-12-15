import Fs from 'fs'
import path from 'path'
import matter from 'gray-matter'
import Head from 'next/head'
import Post from '../components/Posts'

export default function Home({posts}) {
  return (
    <div>
      <Head>
        <title>test</title>
      </Head>
      <div className="posts">
        {posts.map((post, index) => (
          <Post post={post} />
        ))}
      </div>
    </div>
  )
}

export async function getStaticProps() {
  const file = Fs.readdirSync(path.join('posts'))
  console.log(file)

  const posts = file.map(filename => {
    const slug = filename.replace('.md', '')

    const markdownWithMeta = Fs.readFileSync(
      path.join('posts', filename),
      'utf-8'
    )

    const {data: fronmatter} = matter(markdownWithMeta)

    return{
      slug,
      fronmatter,
    }
  })


  return{
    props: {
      posts: posts,
    }
  }
}

