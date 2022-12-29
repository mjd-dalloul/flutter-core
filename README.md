# Folder Structure
	|- lib
	
		|---- datasource
		|		|
		|		|--- local_data_soruce
		|		|		|
		|		|		|-- i_base_local_data_source.dart
		|		|		|
		|		|		|-- base_local_data_source.dart
		|		|		|
		|		|--- remote_data_source
		|		|		|
		|		|		|-- i_base_remote_data_source.dart
		|		|		|
		|		|		|-- base_remote_data_source.dart
		|		|		|
		|		|--- shared_preferences_data_source
		|		|		|
		|		|		|-- i_base_shared_preferences.dart
		|		|		|-- base_shared_preferences.dart
		|		|
		|---- repository
		|		|
		|		|--- base_repository.dart
		|		|
		|		|--- common_app_repository.dart
		|
		|---- presentation
		|		|
		|		|--- mixins
		|		|		|
		|		|		|-- bloc_builder_mixin.dart
		|		|		|
		|		|		|-- bloc_consumer_mixin.dart
		|		|		|
		|		|		|-- bloc_listener_mixin.dart
		|		|		|
		|		|		|-- bloc_provider_mixin.dart
		|		|		|
		|		|		|-- search_mixin.dart
		|		|		|
		|		|		|-- size_mixin.dart
		|		|		|
		|		|		|-- theme_mixin.dart
		|		|
		|		|--- widgets
		|		|		|
		|		|		|-- base_bloc_page.dart
		|		|		|
		|		|		|-- base_state_widget.dart
		|		|		|
		|		|		|-- bloc_helper_widget.dart
		|		|		|
		|		|		|-- bloc_state_getit.dart
		|		|		|
		|		|		|-- bloc_state_provider.dart
		|		|
		|---- state_mangement
		|		|
		|		|--- bloc_state_mangement
		|		|		|
		|		|		|-- base_bloc.dart
		|		|		|
		|		|		|--- helper_bloc
		|		|		|
		|		|		|	|-- helper_bloc.dart
		|		|		|	|
		|		|		|	|-- helper_state.dart
		|		|		|	|
		|		|		|	|-- helper_event.dart
		|		|
		|---- utils
		|		|
		|		|--- data_model_wrapper.dart
		|		|
		|		|--- token_constants.dart
		|		|
		|		|--- extensions
		|		|		|
		|		|		|-- double_ext.dart
		|		|		|
		|		|		|-- int_ext.dart
		|		|		|
		|		|		|-- map_ext.dart
		|		|		|
		|		|		|-- string_ext.dart
		|		|
		|		|--- failures
		|		|		|
		|		|		|-- base_failure.dart
		|		|		|
		|		|		|-- local_failures.dart
		|		|		|
		|		|		|-- network_failures.dart
		|		|
		|		|--- interceptors
		|		|		|
		|		|		|-- json_decoder_interceptor.dart
		|		|		|
		|		|		|-- token_interceptor.dart
		|		|
		|---- constant.dart
		|
		|---- type_defs.dart

[BaseSharedPreferences]
This class will remove the shared preferences boilerplate code, by saving the common application
info which present at [SharedPreferencesKeys], to save addition data.
