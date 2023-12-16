import CreateCostBuilder from "./components/addCost_form/createCost_builder";
import CostItemBuilder from "./components/cost_item/costItem_builder";
import Title from "./components/title_itms/titile";
import React, {useState} from "react";

const INITIAL_COSTS = [
  {
    date: new Date(2022, 2, 12),
    title: "Phone",
    cost: 999,
    id:'c1'
  },
  {
    date: new Date(2023, 2, 2),
    title: "Phone",
    cost: 1999,
    id:'c2'

  },
  {
    date: new Date(2023, 4, 10),
    title: "Phone",
    cost: 2999,
    id:'c3'
    
  },
]


export function Wastes() {

  const [costs,setCosts] = useState(INITIAL_COSTS);
 

  const createCost = (inputCostData) => {

    const costData = {
      ...inputCostData,
      id: Math.random().toString()
    }

    console.log(costData);

    setCosts(prevCosts => {
      return [costData,...prevCosts];
    });
  }




  return (
    <div>
      <Title />
      <CreateCostBuilder onCreateCost={createCost} />
      <CostItemBuilder elements={costs} />
    </div>


  );
}


