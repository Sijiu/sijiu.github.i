/***
 @author: mxh @time:2020/6/10 10:44
 ***/

Object.prototype.toArray = function () {
    return [].slice.call(this);
}

let addBlank = function(){
    let arr = document.getElementsByTagName("a").toArray();
    arr.forEach(el => {
        if (el.getAttribute("href") && el.getAttribute("href").startsWith("http")
            && (!el.getAttribute("href").startsWith("https://sijiu.github.io"))) {
            el.setAttribute("target", "_blank")
        }
    })
}

let changeTag = function () {
    let aim_tag = decodeURI(location.hash.replace(/#|-ref/g, ""))
    let h2arr = document.getElementsByName("tags_div").toArray();
    h2arr.forEach(el => {
        let tag = el.getAttribute("id")
        if (tag && tag.replace("_div", "") === aim_tag) {
            el.setAttribute("class", "tag_show")
        } else {
            if (aim_tag) {
                el.setAttribute("class", "tag_hide")
            } else {
                el.setAttribute("class", "tag_show")
            }
        }
    })
}

let bindTag = function () {
    let t_arr = document.getElementsByName("tag_a").toArray();
    t_arr.forEach(el => {
        el.onclick = changeTag;
    })
}

let categoryCount = function(){
    let count = {
        {% for category in site.categories %}
            {% assign name = category | first %}
            {% assign count = category | last | size %}
        {{ name }}: {{ count }},
        {% endfor%}
    }
    console.log("===", count, JSON.stringify(count))
    let li_arr = document.querySelectorAll("nav li").toArray();
    li_arr.forEach(el => {
        let cat = el.getAttribute("class")
        if(cat){
            el.querySelector("span").textContent = count[cat]
        }
    })
}
categoryCount();
addBlank();
changeTag();
bindTag();