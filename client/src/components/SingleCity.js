import React, { Component } from 'react';
import styled from 'styled-components'
import axios from 'axios'

export default class SingleCity extends Component {
  state = {
    city: {
      name:'atl'
    }
  }
componentWillMount() {
  this.getSingleCity()
}
//componentDidMount needed due to making an api call

getSingleCity = async () => {
  const cityId = this.props.cityId
  const res = await axios.get(`/cities/${cityId}`)
  console.log(res.data)

  this.setState(cityId: res.data.cityId)

}
  render() {
    return (
      <div>
        <h2>Atlanta</h2>
        <h3>{this.props.match.params.id}</h3>

      </div>

    );
  }

}
