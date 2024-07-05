import React, {useState} from 'react'

export default function FormText(props) {
  const handUpClick = ()=>{
    let newText = text.toUpperCase();
    setText(newText);
  }

  const handLoClick = ()=>{
    let newText = text.toLowerCase();
    setText(newText);
  }

  const handleOnChange = (event)=>{
    setText(event.target.value);
  }
  const [text,setText] = useState('Enter your Text here....');
  return (
    <>
    <div className='container'>
      <h1>{props.heading}</h1>
        <div className="mb-3">
          <textarea className="form-control" value={text} onChange={handleOnChange} id="mybox" rows="4"></textarea>
        </div>
        <button className="btn btn-primary mx-1" onClick={handUpClick}>Convert Uppercase</button>
        <button className="btn btn-primary mx-1" onClick={handLoClick}>Convert Lowercase</button>
    </div>
    <div className='container my-3'>
      <h2>Your Text Summary</h2>
      <p>Number of words is {text.split(" ").length} and number of character is {text.length}</p>
      <p>{0.008 * text.split(" ").length} Minutes to read</p>
      <h2>Preview</h2>
      <p>{text}</p>
    </div>
    </>
  )
}
