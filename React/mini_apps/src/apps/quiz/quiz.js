import React from 'react'
// change on modal branch

const questions = [
    {
      title: 'React - это ... ?',
      variants: ['библиотека', 'фреймворк', 'приложение'],
      correct: 0,
    },
    {
      title: 'Компонент - это ... ',
      variants: ['приложение', 'часть приложения или страницы', 'то, что я не знаю что такое'],
      correct: 1,
    },
    {
      title: 'Что такое JSX?',
      variants: [
        'Это простой HTML',
        'Это функция',
        'Это тот же HTML, но с возможностью выполнять JS-код',
      ],
      correct: 2,
    },
  ];
  

  function Result(props) {
    return (
      <div className="result">
        <img src="https://cdn-icons-png.flaticon.com/512/2278/2278992.png" />
        <h2>Вы отгадали {props.correct} ответа из 10</h2>
        <button>Попробовать снова</button>
      </div>
    );
  }
 
  function Game(props) {
    return (
      <>
        <div className="progress">
          <div style={{ width: '50%' }} className="progress__inner"></div>
        </div>
        <h1>{props.question.title}</h1>
        <ul>
          {props.question.variants.map((text,index) => 
              (<li onClick={() => 
              props.onClickVariant(index)} key = {text}>{text}</li>))}
        </ul>
      </>
    );
  }
 
function Quiz() {

    const [step,setStep] = React.useState(0);
    const [correct,setCorrect] = React.useState(0);


    const question  = questions[step];

    const onClickVariant = (index) => {
      setStep(step+1);

      if (index==question.correct){
        setCorrect(correct+1);
      }
    }

    return ( 
        <div>
          {
            step != questions.length 
            ? 
            (<Game question = {question} onClickVariant={onClickVariant}/>)
            :
            (<Result correct ={correct} />)
          }

        </div>
     );
}
 
export default Quiz;