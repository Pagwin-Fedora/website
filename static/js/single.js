let elems = document.getElementsByTagName("h2");
for(let e of elems){
    e.outerHTML = `<a href="./#${e.innerText}" id="${e.innerText}" name="${e.innerText}"><h2>#${e.innerHTML}</h2></a>`;
    document.getElementById(e.innerText).addEventListener('click',event=>{
	event.target.scrollIntoView();
    });
}
