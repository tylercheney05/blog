import React from "react";
const Page = ({ page }) => {
  const { id, title, body, author, created_at } = page
  return (
    <>
      <h1>{ title }</h1>
      <h3>By: { author }</h3>
      <p>{ body }</p>
      <p>
        created: { created_at }, id: { id }
      </p>
      <a href="/pages">back</a>
  </>
  );
}
export default Page;