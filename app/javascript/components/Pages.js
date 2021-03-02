import React from 'react';
const url = "http://localhost:3000/pages/";
const Pages = ({ pages }) => (
  <>
    <h1 className='header'>All Pages</h1>
    <a href={url + "new"}>New pages</a>
    <ul>
      { pages.map( p => (
        <li key={p.id}>
          {p.title}
          <a href={ url + p.id }>
            show
          </a>
        </li>
      ))}
    </ul>
  </>
)
export default Pages;