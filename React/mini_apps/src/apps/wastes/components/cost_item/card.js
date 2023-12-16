import CostItemDate from "./components/date";
import CostItemTitle from "./components/title";
import CostItemCost from "./components/cost";

const Card = (props) => {

    return (
        <div className="cost-item" >

            <CostItemDate date = {props.element.date}/>
            <CostItemTitle title = {props.element.title}/>
            <CostItemCost cost = {props.element.cost}/>
        </div>
       
    );
}

export default Card;