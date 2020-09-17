const mongoose = require('mongoose')

const trackerSchema = new mongoose.Schema({
  exercise: {
    type: String,
    required: true
  },

  weight: {
    type: String,
    required: true

  },
  target_muscle: {
    type: String,
    required: true
  },
  sets: {
    type: String,
    required: true
  },
  owner: {
    type: mongoose.Schema.Types.ObjectId,
    ref: 'User',
    required: true
  }
}, {
  timestamps: true
})

module.exports = mongoose.model('tracker', trackerSchema)
