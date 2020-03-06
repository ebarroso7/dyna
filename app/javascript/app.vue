<template>
  <div id="app">
    <div v-if="savedLocations.length">
      <p>Your saved locations:<p>
      <div v-for="location in savedLocations">
        <div class="location_card" @click="location_url(location.id)" @keyup.enter="location_url(location.id)" tabindex="0">
          <h4>{{ location.name }}</h4>
          {{location.address}}
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  props: ["savedLocations"],
  data() {
    return {
      message: "Hello Vue!"
    }
  },
  methods: {
    location_url(id){
      window.location.href = "/locations/" + id
    }
  },
}
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
div.location_card{
  border: 2px solid #6ECCF6;
  border-radius: 10px / 5px;
  margin: 0 0 -1px 0;
  padding: 5px 10px;
}
.location_card:hover {
	background-color: #F1F2F2;
}
</style>
