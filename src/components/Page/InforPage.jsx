import React, { useEffect, useState } from 'react'
import Infor from '../Others/Infor';

export default function InforPage(props) {
    return (
        <Infor slug={props.slug} title={props.title}/>
    )
}
