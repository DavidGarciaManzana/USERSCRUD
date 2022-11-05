function getAge(dateString) {
    var today = new Date();
    var birthDate = new Date(dateString);
    var age = today.getFullYear() - birthDate.getFullYear();
    var m = today.getMonth() - birthDate.getMonth();
    if (m < 0 || (m === 0 && today.getDate() < birthDate.getDate())) {
        age--;
    }
    return age;
}

fetch('https://localhost:7278/api/User')
    .then((response) => response.json())
    .then((data) =>
        data.forEach(element => {
            let father = document.createElement('div')
            father.classList.add('father')
     father.innerHTML = `<p>Name: ${element.name}</p>
    <p>Birth Date: ${element.birthDate}</p>
    <p>Age: ${getAge(element.birthDate)}</p>
    <p>Email: ${element.email}</p>
    <p>Password: ${element.password}</p>`
        document.body.appendChild(father)
        }));

