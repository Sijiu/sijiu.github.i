/***
 @author: mxh @time:2020/6/10 10:44
 ***/

let arr = document.getElementsByTagName("a");
arr = [].slice.call(arr);
arr.forEach(el => {
    if (el.getAttribute("href") && el.getAttribute("href").startsWith("http")
        && (!el.getAttribute("href").startsWith("https://sijiu.github.io"))) {
        el.setAttribute("target", "_blank")
    }
})

let changeTag = function () {
    let aim_tag = decodeURI(location.hash.replace(/#|-ref/g, ""))
    let h2arr = document.getElementsByName("tags_div");
    h2arr = [].slice.call(h2arr);
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

let t_arr = document.getElementsByName("tag_a");
t_arr = [].slice.call(t_arr);
t_arr.forEach(el => {
    el.onclick = changeTag;
})

changeTag();