import './style.css'

import React from 'react'

function Counter() {

  

    const [count,setCount] = React.useState(0);

    const onClickPlus = () => {
        setCount(count+1);
    }

    const onClickMinus= () => {
        setCount(count-1);
    }

    return ( 
        <div>
            <h2>Counter</h2>
            <h1>{count}</h1>
            <button className="munus" onClick={onClickMinus}>-</button>
            <button className="plus" onClick={onClickPlus}>+</button>

        </div>
     );
}
 
export default Counter;