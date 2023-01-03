const lunr = require('lunr');
var wordcut = require('./wordcut')
lunr.wordcut = wordcut
require('./lunr.stemmer.support.js')(lunr)
require('./lunr.ta.js')(lunr)
require('./lunr.multi.js')(lunr);
const wrapper = require('./wrapper.js');
var stopwords = require('./stopwords');


const sourceData = require('../data-in/data-quotes.json')
const indexedData = require('../data-out/index.json');



const SELECT_COUNT = 30

var idx = lunr.Index.load(indexedData)
var searchHistory = []
var searchHistoryTopic = []
var documents = sourceData.reduce(function (memo, doc) {
  memo[doc.id] = doc
  return memo
}, {})

window.sourceData = sourceData
window.idx = idx
window.lunr = lunr

window.search = function (q) {
  console.time('search: ' + q)
  console.log('q:' + q);
  console.log('q:' + typeof (q));

  console.log('search...query' + q);
  var results = idx.search(q);
  console.timeEnd('search: ' + q)
  return results
}

function setFocusToCurrentArticle() {
  var searchResultOl = document.getElementById("search-result-ol");
  searchResultOl.scrollIntoView();

  // var articles = document.getElementsByTagName("article");
  // var i;
  // if (articles !== null && articles !== undefined) {
  //   for (i = 0; i < articles.length; i++) {
  //     //articles[i].focus();
  //     //document.getElementById("divFirst").scrollIntoView()
  //     articles[i].scrollIntoView()
  //     break;
  //     // if (x[i].type == "checkbox") {
  //     //   x[i].checked = true;
  //     // }
  //   }
  // }
}

var createSearchUrl = function (queryText, displayText) {
  console.log('q..d' + queryText + "..." + displayText);
  const currentSearchText = (queryText + '').toLowerCase().replace('=', '').replaceAll(",", " ");
  console.log(currentSearchText);
  const hrefDisplayText = (displayText !== null && displayText !== undefined) ? displayText : currentSearchText;
  var searchUrl = document.getElementById('search-url');
  // searchUrl.href = window.location.origin + window.location.pathname + "?word=" + queryText;
  // searchUrl.text = queryText;


  for (let searchedText of searchHistory) {
    if (searchedText === currentSearchText) {
      return;
    }
  }
  searchHistory.push(currentSearchText);
  var searchHistoryAnchorElement = document.createElement('a');
  var linkText = document.createTextNode(displayText);
  searchHistoryAnchorElement.appendChild(linkText);
  searchHistoryAnchorElement.title = currentSearchText;
  searchHistoryAnchorElement.href = window.location.origin + window.location.pathname + "?" + (currentSearchText + '').replaceAll('=', '').replaceAll(" ", ",");
  // a.addEventListener('click', hrefHandler, false);

  var divSearchHistory = document.getElementById('search-history');
  var divSearchHistoryTopic = document.getElementById('search-history-topic');
  var divSearchHistoryId = document.getElementById('search-history-id');

  if ((!isNaN(currentSearchText))) {
    divSearchHistoryId.appendChild(searchHistoryAnchorElement);
    divSearchHistoryId.innerHTML += '  ';
  } else if (currentSearchText.includes('_')) {
    divSearchHistoryTopic.appendChild(searchHistoryAnchorElement);
    divSearchHistoryTopic.innerHTML += '  ';
  } else {
    divSearchHistory.appendChild(searchHistoryAnchorElement);
    divSearchHistory.innerHTML += '  ';
  }

  document.querySelector('#search-form')
    .querySelectorAll('a')
    .forEach(hrefHandler);
}

window.onload = function (q) {

  clearQueryError()

  const urlParams = new URLSearchParams(window.location.search);
  console.log(urlParams);
  const userSearchText = urlParams;

  const homepageDefaultSearchText = "1"
  var searchText = (userSearchText !== null && userSearchText !== undefined) ? decodeURI(userSearchText) : homepageDefaultSearchText;
  if (searchText === homepageDefaultSearchText) return;
  var finalQuery = (searchText + '').replace('word=k_', '').replace('word=', '').replace('=', '').replaceAll('%2C', ' ');

  createSearchUrl(finalQuery, finalQuery.replaceAll(' ', ','));
  if (!isNaN(finalQuery)) {
    searchText = finalQuery
  }

  var searchForm = document.querySelector('#search-form'),
    searchField = searchForm.querySelector('input');
  //searchField.value = searchText;
  //searchHistory.push(searchText.toLowerCase())
  //createSearchUrl(searchText, userSearchText)
  // var searchUrl = document.getElementById('search-url');
  // searchUrl.href = window.location.origin + window.location.pathname + "?word=" + searchText;
  // searchUrl.text = searchText;

  var query = searchText + "",
    results = undefined,
    ol = document.querySelector('ul')

  try {
    const finalQuery = query.replace('word=k_', '').replace('word=', '').replace('=', '').replaceAll('%2C', ' ');
    console.log('search...query' + finalQuery);
    results = idx.search(finalQuery)


  } catch (e) {
    if (e instanceof lunr.QueryParseError) {
      displayQueryError(finalQuery, e)
      return
    } else {
      throw e
    }
  }

  while (ol.firstChild) {
    ol.removeChild(ol.firstChild)
  }

  results.slice(0, SELECT_COUNT).forEach(function (result) {
    var doc = documents[result.ref],
      li = buildSearchResult(doc)

    Object.keys(result.matchData.metadata).forEach(function (term) {
      Object.keys(result.matchData.metadata[term]).forEach(function (fieldName) {
        var field = li.querySelector('[data-field=' + fieldName + ']'),
          positions = result.matchData.metadata[term][fieldName].position

        wrapper(field, positions)
      })
    })

    ol.appendChild(li)
    document.querySelector('#search-result-ol')
      .querySelectorAll('a')
      .forEach(hrefHandler);
  })
}

function cleanupSpecialCharacters(input) {
  if (input !== null && input !== undefined && input.trim().length > 0) {
    return input.toLowerCase().replace("\n", '')
      .replace('-', ' ')
      .replace(':', ' ')
      .replace(';', ' ')
      .replace('\'', ' ')
      .replace(',', ' ')
      .replace('.', '')
      .replace('\t', ' ')
      .replace('  ', ' ')

  }
  return input;
}

function onlyUnique(value, index, self) {
  return self.indexOf(value) === index;
}

function getHref(item, queryParameterName, displayText = '...') {
  var kuralWordAnchorElement = document.createElement('a');
  var hrefDisplayText = displayText === '...' ? item : displayText;

  if (displayText === '<<<') {
    // <img alt="Qries" src="https://www.qries.com/images/banner_logo.png"
    //      width=150" height="70">
    var imgPrevious = document.createElement('img');

    imgPrevious.src = 'images/previous.png'
  }
  if (displayText === '>>>') {
    // <img alt="Qries" src="https://www.qries.com/images/banner_logo.png"
    //      width=150" height="70">
    var imgPrevious = document.createElement('img');

    imgPrevious.src = 'images/next.png'
  }
  if (displayText !== '<<<' && displayText !== '>>>') {
    var linkText = document.createTextNode(hrefDisplayText);
    kuralWordAnchorElement.appendChild(linkText);
    kuralWordAnchorElement.title = hrefDisplayText;
  } else {
    kuralWordAnchorElement.appendChild(imgPrevious);
  }

  kuralWordAnchorElement.href = window.location.origin +
    window.location.pathname + "?" +
    queryParameterName + item;

  return kuralWordAnchorElement;
}
function createWordsUrlTamil(doc, divKuralWordsTamil) {
  const idTopicId = doc.id
  const idTopicNameTamil = doc.id_title_ta
  const idTopicNameEnglish = doc.id_title_en
  const line1 = cleanupSpecialCharacters(doc.line1)
  const line2 = cleanupSpecialCharacters(doc.line2)
  const line3 = cleanupSpecialCharacters(doc.english)
    .split(' ')
    .filter(word => !stopwords.includes(word))
    .filter(word => word.length >= 3)
    .join(' ')
  const lineTamil = idTopicNameTamil + ' ' + line1 + ' ' + line2
  const lineEnglish = idTopicNameEnglish + ' ' + line3
  const allUniqueWordsTamil = lineTamil.split(' ').filter(onlyUnique);
  const allUniqueWordsEnglish = lineEnglish.split(' ').filter(onlyUnique);

  if (doc.id > 1) {
    const previousId = doc.id - 1;
    var idPreviousHref = getHref(previousId, '', '<<<');
    divKuralWordsTamil.appendChild(idPreviousHref);
    divKuralWordsTamil.innerHTML += ' ';
  }

  var idHref = getHref(idTopicId + '', '', idTopicId + '');
  divKuralWordsTamil.appendChild(idHref);
  divKuralWordsTamil.innerHTML += ' ';

  if (doc.id < 1080) {
    const nextId = doc.id + 1;
    var idNextHref = getHref(nextId, '', '>>>');
    divKuralWordsTamil.appendChild(idNextHref);
    divKuralWordsTamil.innerHTML += ' ';
  }

  divKuralWordsTamil.innerHTML += '<br>'

  // var idNextHref = getHref(idTopicId, 'word');
  // divKuralWordsTamil.appendChild(idHref);
  // divKuralWordsTamil.innerHTML += '<br>';

  allUniqueWordsTamil.forEach(function (item) {
    var kuralHref = getHref(item, '')
    divKuralWordsTamil.appendChild(kuralHref);
    divKuralWordsTamil.innerHTML += '  ';
  });

  divKuralWordsTamil.innerHTML += '<br>';
  allUniqueWordsEnglish.forEach(function (item) {
    var kuralHref = getHref(item, '')
    divKuralWordsTamil.appendChild(kuralHref);
    divKuralWordsTamil.innerHTML += '  ';
  });


}

var buildSearchResult = function (doc) {
  var li = document.createElement('li'),
    article = document.createElement('article'),
    header = document.createElement('header'),
    section1 = document.createElement('section'),
    section2 = document.createElement('section'),
    section3 = document.createElement('section'),
    section4 = document.createElement('section'),
    h4 = document.createElement('h4'),
    line1 = document.createElement('span'),
    br1 = document.createElement('br'),
    line2 = document.createElement('span'),
    p1 = document.createElement('p'),
    p2 = document.createElement('p'),
    p3 = document.createElement('p'),
    p4Words = document.createElement('p');

  li.setAttribute("class", "border border-3 border-secondary gap-5 m-3 p-3")


  line1.dataset.field = 'quote'
  line1.textContent = doc.quote

  // line2.dataset.field = 'line2'
  // line2.textContent = doc.line2

  // p1.dataset.field = 'tamil'
  // p1.textContent = doc.tamil

  // p2.dataset.field = 'english'
  // p2.textContent = doc.english

  // p3.dataset.field = 'tamil'
  // p3.textContent = doc.en_explanation

  
  p4Words.textContent = doc.id


  li.appendChild(article)
  article.appendChild(header)
  article.appendChild(section1)
  article.appendChild(section2)
  article.appendChild(section3)
  article.appendChild(section4)
  h4.appendChild(line1)
  h4.appendChild(br1)
  h4.appendChild(line2)
  header.appendChild(h4)
  section1.appendChild(p1)
  section2.appendChild(p2)
  section3.appendChild(p3);
  // createWordsUrlTamil(doc, section4);

  //  document.querySelector('#search-result-ol')
  // .querySelectorAll('a')
  // .forEach(hrefHandler);
  // setTimeout(function () {
  //   document.querySelector('#search-result-ol')
  //   .querySelectorAll('a')
  //   .forEach(hrefHandler);
  // }, 100);

  // setTimeout(function () {
  //   document.querySelector('#search-result-ol')
  //   .querySelectorAll('a')
  //   .forEach(hrefHandler);
  // }, 100);

  return li
}

var displayQueryError = function (queryText, error) {
  var message = document.createElement('p'),
    container = document.querySelector('.query-error')

  message.classList.add('message')
  message.textContent = error.message

  container.appendChild(message)
}

var clearQueryError = function () {
  var container = document.querySelector('.query-error')

  while (container.firstChild) {
    container.removeChild(container.firstChild)
  }
}

var searchForm = document.querySelector('#search-form'),
  searchField = searchForm.querySelector('input')

searchForm.addEventListener('reset', function (event) {
  clearQueryError()

  // var searchUrl = document.getElementById('search-url');
  // searchUrl.href = '#';
  // searchUrl.text = '';

  var ol = document.querySelector('ul')

  while (ol.firstChild) {
    ol.removeChild(ol.firstChild)
  }
  searchHistory = []
  //searchHistoryTopic = []
  document.getElementById('search-history-id').innerHTML = ''
  document.getElementById('search-history-topic').innerHTML = ''
  document.getElementById('search-history').innerHTML = ''

  const searchText = '1'
  const idSearch = searchText
  //createSearchUrl(idSearch, searchText)

  console.log('search...query...idSearch' + idSearch);
  results = idx.search(idSearch)


  results.slice(0, SELECT_COUNT).forEach(function (result) {
    var doc = documents[result.ref],
      li = buildSearchResult(doc)

    Object.keys(result.matchData.metadata).forEach(function (term) {
      Object.keys(result.matchData.metadata[term]).forEach(function (fieldName) {
        var field = li.querySelector('[data-field=' + fieldName + ']'),
          positions = result.matchData.metadata[term][fieldName].position

        wrapper(field, positions)
      })
    })

    ol.appendChild(li)
    document.querySelector('#search-result-ol')
      .querySelectorAll('a')
      .forEach(hrefHandler);
    //setFocusToCurrentArticle();
  })

})

searchForm.addEventListener('submit', function (event) {
  event.preventDefault()
  clearQueryError()

  var query = searchField.value.replaceAll(",", " "),
    results = undefined,
    ol = document.querySelector('ul')

  try {

    var displayText = searchField.value;
    if (!isNaN(query)) {
      query = query

    }

    console.log('submit...query' + query + "..." + displayText);
    results = search(query)
    console.log(results);
    createSearchUrl(query, displayText)

  } catch (e) {
    if (e instanceof lunr.QueryParseError) {
      displayQueryError(query, e)
      return
    } else {
      throw e
    }
  }

  while (ol.firstChild) {
    ol.removeChild(ol.firstChild)
  }

  results.slice(0, SELECT_COUNT).forEach(function (result) {
    var doc = documents[result.ref],
      li = buildSearchResult(doc)

    Object.keys(result.matchData.metadata).forEach(function (term) {
      Object.keys(result.matchData.metadata[term]).forEach(function (fieldName) {
        var field = li.querySelector('[data-field=' + fieldName + ']'),
          positions = result.matchData.metadata[term][fieldName].position

        wrapper(field, positions)
      })
    })

    ol.appendChild(li)
    document.querySelector('#search-result-ol')
      .querySelectorAll('a')
      .forEach(hrefHandler);
    //setFocusToCurrentArticle();
  })
})

function hrefHandler(sourceDataElement) {
  // console.log('sourceDataElement: ' + sourceDataElement);
  sourceDataElement.addEventListener('click', function (event) {
    // console.log('event: ' + event);
    event.preventDefault()
    const targetUrl = this.toString();

    const topicName = targetUrl.split("?")[1]
    const searchTopic = decodeURI(topicName)
    searchField.value = searchTopic.replace('k_', '');

    clearQueryError()

    var query = searchTopic,
      results = undefined,
      ol = document.querySelector('ul')

    //var displayText = searchTopic.replace('k_', '');
    var displayText = searchTopic
    const finalQuery = searchTopic.replaceAll(',', ' ');
    try {
      results = idx.search(finalQuery)
      createSearchUrl(finalQuery, displayText)

    } catch (e) {
      if (e instanceof lunr.QueryParseError) {
        displayQueryError(query, e)
        return
      } else {
        throw e
      }
    }

    while (ol.firstChild) {
      ol.removeChild(ol.firstChild)
    }

    results.slice(0, SELECT_COUNT).forEach(function (result) {
      var doc = documents[result.ref],
        li = buildSearchResult(doc)

      Object.keys(result.matchData.metadata).forEach(function (term) {
        Object.keys(result.matchData.metadata[term]).forEach(function (fieldName) {
          var field = li.querySelector('[data-field=' + fieldName + ']'),
            positions = result.matchData.metadata[term][fieldName].position

          wrapper(field, positions)
        })
      })

      ol.appendChild(li)
      setFocusToCurrentArticle();
      document.querySelector('#search-result-ol')
        .querySelectorAll('a')
        .forEach(hrefHandler);


    })
  }, false);

}



document.querySelector('#search-form')
  .querySelectorAll('a')
  .forEach(hrefHandler);

document.querySelector('#search-result-ol')
  .querySelectorAll('a')
  .forEach(hrefHandler);

// document.querySelector('#search-result-ol')
//   .querySelectorAll('a')
//   .forEach(hrefHandler);

//   document.querySelector('#search-result-ol')
//   .querySelectorAll('a')
//   .forEach(hrefHandler);

// setTimeout(function () {
//   document.querySelector('#search-result-ol')
//   .querySelectorAll('a')
//   .forEach(hrefHandler);
// }, 500);