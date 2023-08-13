import express from "express";
const app = express();

app.get("/", (req, res) => {
	res.send("welcome to the ");
});

app.get("/extra", (req, res) => {
	res.send("some extra content");
});

const PORT = process.env.PORT;
app.listen(PORT, () => {
	console.log(`Listening on ${PORT}`);
});
