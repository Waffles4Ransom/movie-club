document.addEventListener('DOMContentLoaded', () => {
  let q1 = document.getElementById('q1')
  let q2 = document.getElementById('q2')
  let quiz = document.querySelector('.quiz')
  let signupForm = document.querySelector('.join')

  q1.addEventListener('change', validate)
  q2.addEventListener('change', validate)

  function validate(e) {
    let answer = e.target.value.toLowerCase()
    let inputOne = document.querySelector("input#q1")
    let inputTwo = document.querySelector("input#q2")

    if (e.target.id === 'q1') {
      if (answer.includes("frisby")) {
        inputOne.style.backgroundColor = "#61bf5c"
        return passed()
      } else {
        inputOne.style.backgroundColor = "#e05441"
        return failed()
      }
    } else if (e.target.id === 'q2') {
      if (answer.includes("dante")) {
        inputTwo.style.backgroundColor = "#61bf5c"
        return passed()
      } else {
        inputTwo.style.backgroundColor = "#e05441"
        return failed()
      }
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