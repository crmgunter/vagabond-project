import React, { Component } from 'react';
import logo from './logo.svg';
import './App.css';
import { BrowserRouter as Router, Switch, Route, Link } from 'react-router-dom'
import Home from './components/Home'
import Navbar from './components/Navbar'
import Footer from './components/Footer'

class App extends Component {
  render() {
    return (
      <Router>
        <div>
        <Navbar/>
        <Switch>
          <Route exact path="/" component={Home}/>
        </Switch>
        <Footer/>
        </div>
      </Router>
    );
  }
}

export default App;
