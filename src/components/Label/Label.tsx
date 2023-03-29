import React from "react";

import "./Label.css";

export interface LabelProps {
  caption: string;
}

const Label = (props: LabelProps) => {
  return <div>{props.caption}</div>;
};

export default Label;