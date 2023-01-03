const json = require('../docs/index.json');
const corpus = require('../docs/corpus.json');
const lunr = require('lunr');
const wrapper = require('./wrapper.js');

var idx = lunr.Index.load(json)

var documents = corpus.reduce(function (memo, doc) {
  memo[doc.id] = doc
  return memo
}, {})

window.corpus = corpus
window.idx = idx
window.lunr = lunr

window.search = function (q) {
  console.time('search: ' + q)
  var results = idx.search(q)
  console.timeEnd('search: ' + q)
  return results
}

var buildSearchResult = function (doc) {
  var li = document.createElement('li'),
      article = document.createElement('article'),
      header = document.createElement('header'),
      section1 = document.createElement('section'),
      section2 = document.createElement('section'),
      h4 = document.createElement('h4'),
      line1 = document.createElement('span'),
      br1 = document.createElement('br'),
      line2 = document.createElement('span'),
      p1 = document.createElement('p'),
      p2 = document.createElement('p');

  line1.dataset.field = 'line1'
  line1.textContent = doc.line1 

  line2.dataset.field = 'line2'
  line2.textContent = doc.line2

  p1.dataset.field = 'tamil'
  p1.textContent = doc.tamil

  p2.dataset.field = 'english'
  p2.textContent = doc.english

  li.appendChild(article)
  article.appendChild(header)
  article.appendChild(section1)
  article.appendChild(section2)
  h4.appendChild(line1)
  h4.appendChild(br1)
  h4.appendChild(line2)
  header.appendChild(h4)
  section1.appendChild(p1)
  section2.appendChild(p2)

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

  var ol = document.querySelector('ol')

  while (ol.firstChild) {
    ol.removeChild(ol.firstChild)
  }

  Object.keys(documents).forEach(function (id) {
    var doc = documents[id],
        li = buildSearchResult(doc)

    ol.appendChild(li)
  })
})

searchForm.addEventListener('submit', function (event) {
  event.preventDefault()
  clearQueryError()

  var query = searchField.value,
      results = undefined,
      ol = document.querySelector('ol')

  try {
    results = idx.search(query)
  } catch(e) {
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

  results.forEach(function (result) {
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
  })
})
