<script>
export default {
  data() {
  	return {
	    min: 3,
      max: 104
  	}
	},
  methods:{
    getNumbers:function(start,stop){
      return new Array(stop-start).fill(start).map((n,i)=>n+i);
    },
    getDivision:function(n){
      if(n % 3 === 0 && n % 5 === 0){
        return "three and five"
      }
      else if(n % 3 === 0){
        return "three"
      }
      else if(n % 5 === 0){
        return "five"
      }
      else{
        return ""
      }
    }
  }
}
</script>

<template>
<div>
  <table>
    <thead>
      <tr>
        <th>Cycle</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>
          <ul>
            <li v-for="n in getNumbers(min,max)">
              {{getDivision(n)}}
            </li>
          </ul>
        </td>
        <td></td>
      </tr>
    </tbody>
  </table>

</div>

</template>

<style>
@import './assets/base.css';

#app {
  max-width: 1280px;
  margin: 0 auto;
  padding: 2rem;

  font-weight: normal;
}

@media (min-width: 1024px) {
  body {
    display: flex;
    place-items: center;
  }

  #app {
    display: grid;
    grid-template-columns: 1fr 1fr;
    padding: 0 2rem;
  }

}
</style>
