import "../styles/costItem.css"

const  CostItemTitle = (props) => {
    return (
        <div className="cost-item__description">
            <h2>{props.title}</h2>
        </div>
    );
}

export default CostItemTitle;