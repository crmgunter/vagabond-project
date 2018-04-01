import React, { Component } from 'react';
import axios from 'axios'
// import SingleCity from './SingleCity'


export default class AllCities extends Component {

  state = {
    cities: [ {
      name:'Atlanta',
      description:'naskdnasdkn'
    },
    {
      name:'London',
      description:'asjbasdjnasknd'
    },
    {
      name: 'San Fran',
      description:'jnsdalknasdkn'
    }
    ]


    };

  componentWillMount() {
  this.getAllCities()
}
getAllCities = async () => {
  const cities = this.state.cities
  const res = await axios.get(`/api/cities/`)
  console.log(res.data)

  this.setState(cities: res.data.cities)
}
  render() {
    return (
      <div>
      <h3>Cities</h3>

      <h4>{this.state.cities.map(city =>{
        return (
        <h2>{city.name}</h2>)
      })}</h4>
      </div>
    );
  }

}
