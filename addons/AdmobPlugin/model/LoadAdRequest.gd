#
# © 2024-present https://github.com/cengiz-pz
#

class_name LoadAdRequest
extends RefCounted

enum AdPosition {
	TOP,
	BOTTOM,
	LEFT,
	RIGHT,
	TOP_LEFT,
	TOP_RIGHT,
	BOTTOM_LEFT,
	BOTTOM_RIGHT,
	CENTER
}

enum AdSize {
	BANNER,
	LARGE_BANNER,
	MEDIUM_RECTANGLE,
	FULL_BANNER,
	LEADERBOARD,
	ADAPTIVE
}

const DATA_KEY_AD_UNIT_ID = "ad_unit_id"
const DATA_KEY_REQUEST_AGENT = "request_agent"
const DATA_KEY_AD_SIZE = "ad_size"
const DATA_KEY_AD_POSITION = "ad_position"
const DATA_KEY_KEYWORDS = "keywords"
const DATA_KEY_USER_ID = "user_id"
const DATA_KEY_CUSTOM_DATA = "custom_data"

var _data: Dictionary


func _init() -> void:
	_data = {}


func set_ad_unit_id(a_value: String) -> LoadAdRequest:
	_data[DATA_KEY_AD_UNIT_ID] = a_value
	return self


func set_request_agent(a_value: String) -> LoadAdRequest:
	_data[DATA_KEY_REQUEST_AGENT] = a_value
	return self


func set_ad_size(a_value: AdSize) -> LoadAdRequest:
	_data[DATA_KEY_AD_SIZE] = AdSize.keys()[a_value]
	return self


func set_ad_position(a_value: AdPosition) -> LoadAdRequest:
	_data[DATA_KEY_AD_POSITION] = AdPosition.keys()[a_value]
	return self


func set_keywords(a_value: Array) -> LoadAdRequest:
	_data[DATA_KEY_KEYWORDS] = a_value
	return self


func add_keyword(a_value: String) -> LoadAdRequest:
	if not _data.has(DATA_KEY_KEYWORDS) or _data[DATA_KEY_KEYWORDS] == null:
		_data[DATA_KEY_KEYWORDS] = [ a_value ]
	else:
		_data[DATA_KEY_KEYWORDS].append(a_value)
	return self


func set_user_id(a_value: String) -> LoadAdRequest:
	_data[DATA_KEY_USER_ID] = a_value
	return self


func set_custom_data(a_value: String) -> LoadAdRequest:
	_data[DATA_KEY_CUSTOM_DATA] = a_value
	return self


func get_raw_data() -> Dictionary:
	return _data
