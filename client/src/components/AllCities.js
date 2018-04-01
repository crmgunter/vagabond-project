import React, { Component } from 'react';
import PropTypes from 'prop-types';
import axios from 'axios'


export default class AllCities extends Component {

  state = {
    cities: {
      name:'Atlanta'
    }

    };

  componentDidMount() {
  this.getAllCities()
}
getAllCities = async () => {
  const cities = this.state.cities
  const res = await axios.get(`/${cities}/`)
  console.log(res.data)

  this.setState(cities: res.data)
}
  render() {
    return (
      <div>Cities</div>
    );
  }

}
