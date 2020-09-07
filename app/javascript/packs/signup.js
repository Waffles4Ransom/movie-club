document.addEventListener('DOMContentLoaded', () => {
  let q1 = document.getElementById('q1')
  let q2 = document.getElementById('q2')
  let quiz = document.querySelector('.quiz')
  let signupForm = document.querySelector('.join')

  q1.addEventListener('change', validate)
  q2.addEventListener('change', validate)

  function validate(e) {
    let answer = e.target.value.toLowerCase()
    
    if (e.target.id === 'q1') {
      if (answer.includes("frisby")) {
        q1.style.backgroundColor = "#61bf5c"
        return passed()
      } else {
        q1.style.backgroundColor = "#e05441"
        return failed()
      }
    } else if (e.target.id === 'q2') {
      if (answer.includes("dante")) {
        q2.style.backgroundColor = "#61bf5c"
        return passed()
      } else {
        q2.style.backgroundColor = "#e05441"
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