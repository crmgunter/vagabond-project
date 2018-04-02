import React, { Component } from 'react';
import axios from 'axios'



export default class AllCities extends Component {

  state = {
    city: [
      {
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
    },
  ],
  error: ''
}

  componentWillMount() {
  this.getAllCities()
}
getAllCities = async () => {
  try {
    const res = await axios.get(`/api/cities`)
    this.setState({city: res.data.city})
  console.log(res.data)
} catch(err) {
  console.log(err)
  this.setState({err: err.message})
}
}
  render() {
    return (
      <div>
      <h3>Cities</h3>

      <h4>{this.state.city.map(city =>{
        return (
          <div>
        <div key={city.atl}>{city.name}</div>
        <div key={city.description}>{city.description}</div>
      </div>)
      })}</h4>
      </div>
    );
  }

}
