const fs = require("fs");
const tts = require("../../src/index");

const [_, __, text, voice] = process.argv;
const slow = process.argv[4] === "y";
const useToken = process.argv[5] === "y";

tts.synthesize({ text, voice, slow, useToken }).then((buffer) => {
  fs.writeFileSync("sample.mp3", buffer);
});
