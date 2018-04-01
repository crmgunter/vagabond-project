import React, { Component } from 'react';
import PropTypes from 'prop-types';
import styled from 'styled-components'
import axios from 'axios'

export default class SingleCity extends Component {
  state = {
    city: {
      name: '',
      description: '',
      image_url: '',
      post: [],
    }
  }
componentDidMount() {
  this.getSingleCity()
}
//componentDidMount needed due to making an api call

getSingleCity = async () => {
  const cityId = this.props.match.params.id
  const res = await axios.get(`/cities/${cityId}`)
  console.log(res.data)

  this.setState(cityId: res.data.id)

}
  render() {
    return (
      <div>
        <h2>Atlanta</h2>
        <h2>{this.props.match.params.cityId}</h2>

      </div>

    );
  }

}
