import React from "react";
import Mainpage from "../Mainpage";
import { render } from "@testing-library/react";
import "@testing-library/jest-dom/extend-expect";

test("title renders with correct text", () => {
  const { getByTestId } = render(<Mainpage />);
  const headerEl = getByTestId("header1");

  expect(headerEl.textContent).toBe("Welcome");
});

test("title renders with correct text", () => {
  const { getByTestId } = render(<Mainpage />);
  const headerEl = getByTestId("header2");

  expect(headerEl.textContent).toBe("Instructions");
});

test("title renders with correct text", () => {
  const { getByTestId } = render(<Mainpage />);
  const headerEl = getByTestId("header3");

  expect(headerEl.textContent).toBe("Download Open Data");
});

test("title renders with correct text", () => {
  const { getByTestId } = render(<Mainpage />);
  const headerEl = getByTestId("header4");

  expect(headerEl.textContent).toBe("Contribute Spectra");
});
