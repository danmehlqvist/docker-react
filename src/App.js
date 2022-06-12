import logo from './logo.svg';
import Counter from './Counter'
import './App.css';

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <p>
          This is a new deploy!
        </p>
        <Counter />
          Learn React
      </header>
    </div>
  );
}

export default App;
