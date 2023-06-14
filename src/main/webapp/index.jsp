<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>Compound Interest Calculator</title>
</head>
<body>
<p>${error}</p>

<form action="/" method="post">
  <label for="principal-amount">Principal Amount:</label>
  <input id="principal-amount" type="number" name="principal-amount" value="${principal}">

  <label for="interest-rate">Interest Percentage:</label>
  <input id="interest-rate" type="number" min="1" max="100" name="interest" value="${interest}">

  <label for="years"># of Years:</label>
  <input id="years" type="number" min="1" name="years" value="${years}">

  <label for="compounding-period">Times per Year:</label>
  <input id="compounding-period" type="number" min="1" max="12" name="compounding-period" value="${compoundingPeriod}">

  <button type="submit">Calculate</button>

  <p>Result: ${result}</p>
</form>
</body>
</html>