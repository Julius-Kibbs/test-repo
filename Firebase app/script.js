firebase.initializeApp({
    apiKey: "AIzaSyBJV0ySjrtutCAIyq9daaParC4zU9v4cHM",
    authDomain: "fire-apps-a1bc4.firebaseapp.com",
    projectId: "fire-apps-a1bc4",
    storageBucket: "fire-apps-a1bc4.appspot.com",
    messagingSenderId: "113361337845",
    appId: "1:113361337845:web:97378369cfc809ef6234bc",
    measurementId: "G-0MKDBF6VBK"
});

const db = firebase.firestore();

//function to add tasks
function addTask(){
    const taskInput = document.getElementById("task-input");
    const task = taskInput.value.trim();
    if(task !== ""){
        db.collection("tasks").add({
            task: task,
            timestamp: firebase.firestore.FieldValue.serverTimestamp()
        });
        taskInput.value = "";
        console.log("Task added");
    }
}

//function to render tasks
function renderTasks(doc){
    const taskList = document.getElementById("task-list");
    const taskItem = document.createElement("li");
    taskItem.className = "task-item";
    taskItem.innerHTML =`
        <span>${doc.data().task}</span>
        <button onclick="deleteTask('${doc.id}')">Delete</button>
    `;
    taskList.appendChild(taskItem);
}

//Real time listener for tasks
db.collection("tasks")
    .orderBy("timestamp", "desc")
    .onSnapshot(snapshot => {
        const changes = snapshot.docChanges();
        changes.forEach(change => {
            if(change.type === "added"){
                renderTasks(change.doc);
            }
        });
    });

//function to delete tasks
function deleteTask(id){
    db.collection("tasks").doc(id).delete();
    location.reload();
}