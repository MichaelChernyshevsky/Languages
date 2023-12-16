import {useState} from "react";

export function UseState(){

    const [counter,setCounter] = useState(0);

    function increment(){
        // setCounter((prevCounter)=>{
            //     return prevCounter + 1
            // })
            // setCounter(prev => prev + 1)
        setCounter(counter+1)
    }

    function decrement(){
        setCounter(counter-1)
    }

    const [state,setState] = useState({
        title : 'counter',
        date: Date.now()
    })

    function updateTitle(){
        setState(
            prev =>{
                return {
                    ...prev,
                    title:'new'
                }
            }
        )
    }

    return(
        <div>
            <h1>{counter}</h1>
            <button onClick={increment}>+</button>
            <button onClick={decrement}>-</button>

            <button onClick={updateTitle}>change</button>
            <pre>
                {JSON.stringify(state,null,2)}
            </pre>

        </div>
    );
}