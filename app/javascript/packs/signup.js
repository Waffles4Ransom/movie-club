document.addEventListener('DOMContentLoaded', () => {
  let q1 = document.getElementById('q1')
  let q2 = document.getElementById('q2')
  let quiz = document.querySelector('.quiz')
  let signupForm = document.querySelector('.join')

  q1.addEventListener('change', validateOne)
  q2.addEventListener('change', validateTwo)

  function validateOne(e) {
    let answer = e.target.value.toLowerCase()
    let input = document.querySelector("input#q1")
    console.log(answer)
    if (answer.includes("frisby")) {
      console.log('PASS')
      input.style.backgroundColor = "#61bf5c"
      return passed()
    } else {
      console.log('FAIL')
      input.style.backgroundColor = "#e05441"
    }
  }

  function validateTwo(e) {
    let answer = e.target.value.toLowerCase()
    let input = document.querySelector("input#q2")
    console.log(answer)
    if (answer.includes("dante")) {
      console.log('PASS')
      input.style.backgroundColor = "#61bf5c"
      return passed()
    } else {
      console.log('FAIL')
      input.style.backgroundColor = "#e05441"
      return failed()
    }
  }

  function passed() {
    if (q1.style.backgroundColor === "rgb(97, 191, 92)" && q2.style.backgroundColor === "rgb(97, 191, 92)") {
      quiz.style.display = "none"
      signupForm.removeAttribute("hidden")
      console.log('success')
    } 
  }

  function failed() {
    if (q1.style.backgroundColor === "rgb(224, 84, 65)" && q2.style.backgroundColor === "rgb(224, 84, 65)") {
      let msg = document.createElement('h4')
      quiz.append("Sorry, looks like you aren't one of us...feel free to try again if you wish.", msg)
    }
  }

})