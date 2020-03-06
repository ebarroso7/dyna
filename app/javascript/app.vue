<template>
  <div id="app">
    <div v-if="savedLocations">
      <p>Your saved locations:<p>
      <div v-for="location in savedLocations">
        <div class="location_card" @click="location_url(location.id)" @keyup.enter="location_url(location.id)" tabindex="0">
          <h4>{{ location.name }}</h4>
          {{location.address}}
        </div>
      </div>
    </div>

    <div v-if="deliveries">
      <div @click="toggleAddDeliveryForm()" @keyup.enter="toggleAddDeliveryForm()" tabindex="0">
        Add a delivery to this location
      </div>

      <div v-if="showAddDeliveryForm">
        vue form
      </div>

      <div v-for="delivery in deliveries">
        <h3>{{formatDate(delivery.time)}}</h3>
        <div class="location_card" @click="delivery_url(delivery.id)" @keyup.enter="delivery_url(delivery.id)" tabindex="0">
          <h4>{{ delivery.name }}</h4>
          {{delivery.store}}
        </div>
      </div>
    </div>

    <div v-if="orders">
      <div @click="toggleAddOrderForm()" @keyup.enter="toggleAddOrderForm()" tabindex="0">
        Add an order to this delivery
      </div>

      <div v-if="showAddOrderForm">
        vue form
      </div>

      <div v-for="order in orders">
        <div class="location_card" @click="order_url(order.id)" @keyup.enter="order_url(order.id)" tabindex="0">
          <h3>{{ order.description}}</h3>
        </div>
      </div>

    </div>

  </div>
</template>

<script>
import moment from 'moment'
export default {
  props: ["savedLocations", "deliveries", "orders"],
  data() {
    return {
      showAddDeliveryForm: false,
      showAddOrderForm: false,
    }
  },
  methods: {
    delivery_url(id){
      window.location.href = "/deliveries/" + id
    },
    location_url(id){
      window.location.href = "/locations/" + id
    },
    order_url(id){
      window.location.href = "/orders/" + id
    },
    toggleAddDeliveryForm(){
      this.showAddDeliveryForm = !this.showAddDeliveryForm
    },
    toggleAddOrderForm(){
      this.showAddOrderForm = !this.showAddOrderForm
    },
    formatDate(date){
      return moment(String(date)).format('LLLL')
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
