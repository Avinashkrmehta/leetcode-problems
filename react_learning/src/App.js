import './App.css';
import FormText from './components/FormText';
import Navbar from './components/Navbar';
function App() {
  return (
    <>
    <Navbar title='TextUtls' about='Aboutt'/>
    <div className='container my-3'>
    <FormText heading='Enter your Text here'/>
    </div>
    </>
  );
}

export default App;
