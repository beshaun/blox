import Fs from 'fs'
import Path from 'path'
import Matter from 'gray-matter'
import Marked from 'marked'
import Link from 'next/link'

export default function PostPage({
  frontmatter: {title, date},
  slug,
  content
}) {
  return(
    <>
    <Link href='/'>
      <a className="btn btn-back">back</a>
    </Link>
    </>
  )
}

export async function getStaticPaths() {
  const files = Fs.readdirSync(Path.join('posts'))
  const paths = files.map(filename => ({
    params: {
      slug: filename.replace('.md', '')
    }
  }))

  return{
    paths,
    fallback: false
  }
}

export async function getStaticProps({ params: { slug }}) {
  const markdownWithMeta = Fs.readFileSync(Path.join('posts', slug + '.md'), 'utf-8')
  const {data: frontmatter, content} = Matter(markdownWithMeta)

  return{
    props: {
      frontmatter,
      slug,
      content
    },
  }
}

