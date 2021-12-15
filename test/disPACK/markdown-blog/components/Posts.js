import Link from 'next/link'

export default function Posts({post}) {
  return(
    <div>
      <div class="card">
        <img src={post.fronmatter.cover_image} alt="" />
        <div className="post-date">post on {post.fronmatter.date}</div>
        <h3 className="post-title">{post.fronmatter.title}</h3>
        <h5>{post.fronmatter.excerpt}</h5>
        <Link href={`/blog/${post.slug}`}>
          <a className="btn" href="">more</a>
        </Link>
      </div>

    </div>

  )
}

