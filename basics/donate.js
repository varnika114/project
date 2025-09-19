const alumni = [
  { name: "Aarav Mehta", field: "Software Engineering" },
  { name: "Sara Iqbal", field: "Medicine" },
  { name: "Devika Ramesh", field: "Finance" },
  { name: "Karthik Rao", field: "Design" },
  { name: "Rina Kapoor", field: "Education" },
  { name: "Naveen Das", field: "Marketing" }
];

const cardsContainer = document.getElementById("alumniCards");
const searchInput = document.getElementById("searchInput");

function displayCards(filter = "") {
  cardsContainer.innerHTML = "";
  const filtered = alumni.filter(a =>
    a.name.toLowerCase().includes(filter.toLowerCase()) ||
    a.field.toLowerCase().includes(filter.toLowerCase())
  );
  filtered.forEach(alumnus => {
    const card = document.createElement("div");
    card.className = "card";
    card.innerHTML = `
      <h4>${alumnus.name}</h4>
      <p>Field: ${alumnus.field}</p>
    `;
    cardsContainer.appendChild(card);
  });
}

searchInput.addEventListener("input", (e) => {
  displayCards(e.target.value);
});

window.addEventListener("DOMContentLoaded", () => {
  displayCards();
});