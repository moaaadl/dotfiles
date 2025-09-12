const posts = [
  { id: 1, title: "Arch Rises", content: "React on Arch hits different." },
  { id: 2, title: "Windows Who?", content: "We don't talk about her here." },
];

function Blog() {
  return (
    <div>
      {posts.map((post) => (
        <article key={post.id}>
          <h2>{post.title}</h2>
          <p>{post.content}</p>
        </article>
      ))}
    </div>
  );
}



