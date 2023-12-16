import "../styles/costDate.css"

const CostItemDate = (props) => {
    return (
        <div className="cost-date">
            <div className="cost-date__year">{props.date.getFullYear()}</div>
            <div className="cost-date__month">{props.date.toLocaleString('ru-RU',{month:"long"})}</div>
            <div className="cost-date__day">{props.date.toLocaleString('ru-RU',{day:"2-digit"})}</div>
        </div>
    );
}

export default CostItemDate;