import React, { Component } from 'react';
import './App.css';

class App extends Component {
  constructor() {
    super();
    this.state = {
      apiData: null,
      apiDataLoaded: false,
    };
    this.showTodosOnPage = this.showTodosOnPage.bind(this);
  }

  componentDidMount() {
    console.log('hello');
    fetch('http://localhost:3001/todos')
      .then(res => res.json())
          .then((jsonRes) => {
        this.setState({
          apiData: jsonRes.quotes_data,
          apiDataLoaded: true,
        });
      })
  }

  showTodosOnPage() {
    return this.state.apiData.map((todo) => {
      return (
        <div className="todo" key={todo.id}>
          <p>{todo.content}</p>
        </div>
      );
    });
  }


 render() {
    return (
      <div className="App">
        <div>
          {(this.state.apiDataLoaded) ? this.showTodosOnPage() : <p>Loading...</p> }
        </div>
      </div>
    );
  }
}

export default App;
