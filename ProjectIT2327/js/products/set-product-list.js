'use strict'
//creating product elements
import { Slider } from '../slider/Slider.js';

export function createContent(categoryName, productList) {
    if (categoryName == 'We recommend') displaySlider();
    const contentBlock = document.querySelector('.content');
    contentBlock.appendChild(createCategory(categoryName));
    contentBlock.appendChild(createProductList(productList));
}

//deleting of excess product elements for loading new
export function deleteContent() {
    const productListBlock = document.querySelector('.product-list');
    const categoryBlock = document.querySelector('.category');
    const sliderBlock = document.querySelector('.slider');

    if (sliderBlock) {
        sliderBlock.classList.remove('slider__active');
    }

    if (categoryBlock || productListBlock) {
        productListBlock.remove();
        categoryBlock.remove();
    }
}
//request to get data from JSON files
export function createRequest(URL) {
    const requestResponse = fetch(URL).then(response => response.json());
    return requestResponse;
}

export function displayErrorMessage() {
    const contentBlock = document.querySelector('.content');
    const errorMessage = document.createElement('p');
    errorMessage.setAttribute('class', 'error-message');
    errorMessage.innerHTML = 'ERROR 404! URL is not found!';
    if (!contentBlock.contains(errorMessage)) {
        contentBlock.appendChild(errorMessage);
    }
}

export function deleteErrorMessage() {
    const contentBlock = document.querySelector('.content');
    const errorMessage = document.querySelector('.error-message');
    if (contentBlock.contains(errorMessage)) {
        contentBlock.removeChild(errorMessage);
    }
}

function createSlider() {
    const slider = new Slider();
    slider.createSlides();
    slider.createBtns();
}

function displaySlider() {
    if (!document.querySelector('.slider')) createSlider();
    const sliderBlock = document.querySelector('.slider');
    sliderBlock.classList.add('slider__active');
}

function createCategory(categoryName) {
    const categoryBlock = document.createElement('div');
    categoryBlock.setAttribute('class', 'category');
    categoryBlock.innerHTML = `<p class="category__name">${categoryName}</p>`;
    return categoryBlock;
}

function filterText(str){
    str = str[0].toUpperCase() + str.slice(1).toLowerCase();
    return str;
}

function createProductList(productList) {
    const productItems = productList.map(element => {
        const elem = document.createElement("div");
        elem.setAttribute("class", "product");
        elem.setAttribute('id', element.Product_id);
        elem.innerHTML = `
            <img class="product__image" src="${element.Photo}" alt="">
            <p class="product__name">
                ${filterText(element.Title)}
            </p>
            <p class="product__description">
            ${element.Composition.map((el, index) => { 
                return (index == 0) ? filterText(el) : el.toLowerCase();
                }).join( ", " )}
            </p>
            <p class="product__price">${element.Price}$</p>
            <p class="product__btn"><i class="fas fa-plus"></i></p>
            <div class="product__weight"><img src="../images/products-images/weight.svg"><p>${element.Weight}g</p></div>
            `;
        return elem;
    });

    const productListBlock = document.createElement('div');
    productListBlock.setAttribute('class', 'product-list');
    for (let product of productItems) {
        productListBlock.appendChild(product);
    }
    return productListBlock;
}