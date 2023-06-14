<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <script src="https://cdn.tailwindcss.com"></script>
  <title>Compound Interest Calculator</title>
</head>
<body>
<div class="h-screen flex items-center justify-center bg-gray-50 text-center sm:py-12">
  <div class=" bg-white px-6 pb-8 pt-10 shadow-xl ring-1 ring-gray-900/5 sm:mx-auto sm:max-w-xl sm:rounded-lg sm:px-10">
    <div class="mx-auto max-w-2xl">
      <h1 class="mx-8 border-b text-3xl font-semibold">Compound Interest Calculator</h1>
      <p class="bg-red-300 text-red-900 font-semibold text-xl w-80 rounded-lg my-4 mx-auto">${error}</p>
      <form action="/" method="post">
        <div class="mx-8 my-6 grid grid-cols-2 gap-3">
          <label class="flex items-center text-xl" for="principal-amount" >Principal Amount:</label>
          <input class="w-full p-1 border-2 placeholder-blue-800 border-blue-700 appearance-none rounded-lg focus:outline-none focus:ring-2" id="principal-amount" type="number" name="principal-amount" value="${principal}"/>

          <label class="flex items-center text-xl" for="interest-rate" >Interest Percentage:</label>
          <input class="w-full appearance-none rounded-lg border-2 border-blue-700 p-1 placeholder-blue-800 focus:outline-none focus:ring-2" id="interest-rate" type="number" min="1" max="100" name="interest" value="${interest}" />

          <label class="flex items-center text-xl" for="years"># of Years:</label>
          <input class="w-full appearance-none rounded-lg border-2 border-blue-700 p-1 placeholder-blue-800 focus:outline-none focus:ring-2" id="years" type="number" min="1" name="years" value="${years}" />

          <label class="flex items-center text-xl" for="compounding-period">Times per Year:</label>
          <input class="w-full appearance-none rounded-lg border-2 border-blue-700 p-1 placeholder-blue-800 focus:outline-none focus:ring-2" id="compounding-period" type="number" min="1" max="12" name="compounding-period" value="${compoundingPeriod}" />

        </div>
        <button class="rounded-lg bg-blue-300 px-4 py-1 text-xl font-semibold hover:bg-blue-800 hover:text-white" type="submit">Calculate</button>

        <p class="font-mono text-3xl text-green-600 mt-2">Result: ${result}</p>
      </form>
      <div></div>
    </div>
  </div>
</div>
</body>
</html>