import "./styles/costs.css"
import Card from './card'
import CostFilter from "./filter";
import React, { useState } from "react";

function CostItemBuilder(props) {

    const [selectYear, setSelectedYear] = useState('2021');

    const yearChangeHandler = (year) => {
        setSelectedYear(year);
    }

    const filteredCosts = props.elements.filter(
        (cost) => {
            return cost.date.getFullYear().toString() === selectYear;
        });

    let emptyList = <p>Empty list</p>;

    return (

        <div className="costs">
            <h1>adsdada</h1>
            <CostFilter year={selectYear} onChangeYear={yearChangeHandler} />
            {filteredCosts.length === 0 ? <p>Empty list</p> : filteredCosts.map(
                element => <Card key={element.key} element={element} />
            )}
            {
                filteredCosts.length === 0 && emptyList
            }

            {
                filteredCosts.length !== 0 && filteredCosts.map(
                    element => <Card key={element.key} element={element}/>
                )
            }


        </div>




    );
}

export default CostItemBuilder;