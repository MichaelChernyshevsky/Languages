import React from 'react';
import { Block } from './bloc';
import './index.scss';

function Converter() {

  const [fromCurrency,setFromCurrency] = React.useState('KZT');
  const [toCurrency,setToCurrency] = React.useState('USD');
  const [fromPrice,setFromPrice] = React.useState(0);
  const [toPrice,setToPrice] = React.useState(0);


  const [rates,setRates] = React.useState({});

  React.useEffect(()=>{
    fetch('https://www.cbr-xml-daily.ru/latest.js')
    .then(res=>res.json())
    .then((json)=> {
      setRates(json.rates);
    })
    .catch((err)=>{
      alert('error');
    });
  },[]);

  const onChangeFromPrice = (value) => {
    const price = value / rates[fromCurrency];
    const result = price * rates[toCurrency];
    setFromPrice(value);
    setToPrice(result);

  }

  const onChangeToPrice = (value) => {
    const price = (rates[fromCurrency]/rates[toCurrency])*value;
    setFromPrice(price);
    setToPrice(value);
  }

  React.useEffect(()=>{
    onChangeFromPrice(fromPrice);
  },[fromCurrency]);

  React.useEffect(()=>{
    onChangeToPrice(toPrice);
  },[toCurrency]);

  return (
    <div className="Converter">
      <Block 
        value={fromPrice} 
        currency={fromCurrency} 
        onChangeCurrency={setFromCurrency}
        onChangeValue={onChangeFromPrice}
       />
      <Block 
        value={toPrice} 
        currency={toCurrency}
        onChangeCurrency={setToCurrency}
        onChangeValue={onChangeToPrice}
      />
    </div>
  );
}

export default Converter;