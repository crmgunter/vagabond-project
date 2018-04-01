import React, { Component } from "react";
import logo from "./logo.svg";
import "./App.css";
import { BrowserRouter as Router, Switch, Route, Link } from "react-router-dom";
import Home from "./components/Home";
import Navbar from "./components/Navbar";
import Footer from "./components/Footer";
import styled from "styled-components";
import Cities from "./components/Cities";

const Flex = styled.div`
  display: flex;
  min-height: 100vh;
  flex-direction: column;
  justify-content: space-between;
`;

class App extends Component {
  render() {
    return (
      <Router>
        <Flex>
          <Navbar />
          <Switch>
            <Route exact path="/" component={Home} />
            <Route exact path="/cities" component={Cities} />
          </Switch>
          <Footer />
        </Flex>
      </Router>
    ); 
  }
}

export default App;
