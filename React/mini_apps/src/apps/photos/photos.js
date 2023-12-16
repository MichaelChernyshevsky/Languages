import React from 'react';
import './index.scss';
import { Collection } from './collection';
import  data from './data.js';


const cats = [
  { "name": "Все" },
  { "name": "Море" },
  { "name": "Горы" },
  { "name": "Архитектура" },
  { "name": "Города" }
]



function Photos() {

  const [collections,setCollections] = React.useState([])

  React.useEffect(()=>{
    fetch(data)
    .then((res)=> res.json())
    .then((json)=>{
      setCollections(json);
    })
    .catch((err)=>
    {
      alert('error');
    })

  },[categoryID]);

  const [searchValue,setSearch] = React.useState('')

  const [categoryID,setCategoryID] = React.useState(0)

  return (
    <div className="App">
      <h1>my collection</h1>
      <div className="top">
        <ul className="tags">
          {cats.map((cat,index)=>(
              <li  onClick = {()=>setCategoryID(index)}
              className = {categoryID == index ? "active" : "disActive" }> 
               
                {cat.name}
              </li>
            ))}
        </ul>
        <input value = {searchValue} onChange={e => setSearch(e.target.value)} className="search-input" placeholder="Поиск по названию" />
      </div>
      {/* <div className="content">
        {
          collections.filter(obj=> obj.name.toLowerCase().includes(searchValue.toLowerCase()))
          .map((obj,index)=>(
            <Collection
            key={index}
            name={obj.name}
            images={obj.img}
            />
          ))
        }
      </div> */}
      <ul className="pagination">
        <li>1</li>
        <li className="active">2</li>
        <li>3</li>
      </ul>
    </div>
  );
}

export default Photos;