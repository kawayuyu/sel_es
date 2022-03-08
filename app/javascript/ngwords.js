// JSONデータの読み込み
let ngwords = [];
$.getJSON('data/ngwords.json', json => {
  ngwords = json.data;
});

function hasNGWords(str, ngwords) {

  for(let i = 0; i < ngwords.length; i++) {
    if(~str.indexOf(ngwords[i])) return true;
  }

  return false;

}