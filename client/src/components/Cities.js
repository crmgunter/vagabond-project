import React, { Component } from 'react';
import axios from "axios";
import { Link } from 'react-router-dom'

class Cities extends Component {
    state = {
        cities: {},
        error: ""
    }

    componentWilllMount(){
        this.getAllCities()
        console.log(this.state.cities)
    }

    getAllCities= async ()=>{
        try {
            const res = await axios.get('/api/cities')
            await this.setState({cities: res.data});
           console.log(res.data) 
           return res.data;
        }
        catch (err) {
            console.log(err)
            await this.setState({error: err.message})
            return err.message
        }
    }

    render() {
        if (this.state.error){
            return <div>{this.state.error}</div>
        }
        return (
            <div>
        {this.state.cities.map(city => (
                    <div key={city.id}>
                        <Link to={`/cities/${city.id}`}>{city.name}</Link>
                    </div>
                ))}
            </div>
        );
    }
}

export default Cities;