import React, { Component } from 'react'

 class Validation extends Component {
    static nameRegx = /^[A-Za-z\'\s\.\:\-]+$/;
    static emailRegx = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/
    static passWordRegx=/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,20}$/
}

export default Validation