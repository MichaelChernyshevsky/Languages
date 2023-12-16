// import CostForm from "./components/form"
import React, {useState} from "react";
import './styles/createCost.css'

const CreateCostBuilder = (props) => {
    // const [userInput,setUserInput] = (event) => useState({
    //     inputName:'',
    //     inputCost:'',
    //     inputDate:''
    // })

    const [inputTitle,setTitle] = useState('');
    const [inputCost,setCost] = useState('');
    const [inputDate,setDate] = useState('');



    const nameChangeHandler = (event) => {
        setTitle(event.target.value);


        // setUserInput((previousState)=>{
        //     return {
        //         ...previousState,
        //         name : event.target.value
        //     }
        // })


    };

    
    const costChangeHandler = (event) => {
        setCost(event.target.value);
        // setUserInput({...userInput, cost : event.target.value});


    };



    const dateChangeHandler = (event) => {
        setDate(event.target.value);
        // setUserInput({...userInput,date : event.target.value});


    };

    const submitHandler = (event) => {
        event.preventDefault();

        const costData = {
            title: inputTitle,
            cost: inputCost,
            date: new Date(inputDate)
        };

        // props.onCreateCost(costData);
        props.onCreateCost(costData);
        setCost('');
        setDate('');
        setTitle('');
    };

  

    return <div className="new-cost">
         <form onSubmit={submitHandler}>
            <div className='new-cost__controls'>
                <div className='new-cost__control'>
                    <label> Название </label>
                    <input type='text' value={inputTitle} onChange={nameChangeHandler}></input>
                </div>
                <div className='new-cost__control'>
                    <label> сумма </label>
                    <input type='number' min='1' step='1' value={inputCost} onChange={costChangeHandler}></input>
                </div>
                <div className='new-cost__control'>
                    <label> date </label>
                    <input type='date' min='2019-01-01' step='2022-12-31' value={inputDate} onChange={dateChangeHandler}></input>
                </div>
                <div className='new-cost__actions'>
                    <button type="submit" >добавить расход</button>
                </div>
            </div>
        </form>
    </div>
}

export default CreateCostBuilder;