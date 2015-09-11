////////////////////////////////////////////////////////////////////////////////
//
// Copyright © 2008 ESRI
//
// All rights reserved under the copyright laws of the United States.
// You may freely redistribute and use this software, with or
// without modification, provided you include the original copyright
// and use restrictions.  See use restrictions in the file:
// <install location>/FlexViewer/License.txt
//
////////////////////////////////////////////////////////////////////////////////

package solutions
{
	import org.openscales.core.Map;
	
	import solutions.ConfigData;
	
	/**
	 * IBaseWdiget defines the messages between WidgetManager and BaseWidget. It enables
	 * Dependency Injection (DI) implementation that allows loss coupling the
	 * detail widget logics.
	 * 
	 * <p>Once a widget module is loaded into the container, the WidgetManager will
	 * cast the instance of the module into IBaseWidget.
	 */
	public interface IBaseWidget
	{
		
		function setData(value:Object):void;
		
		function setLayerName(value:String):void;
		
		/**
		 * Give a session generated ID to the widget so that the widget can be
		 * identified during inter-component communication.
		 * 
		 * @param value a number generated by the session.
		 */
		function setId(value:Number):void;
		
		/**
		 * Widget title is coming from the configuration file. The title text is passed
		 * into the widget implementation.
		 * 
		 * @param value the title string from configuration file, config.xml
		 */
		function setTitle(value:String):void;
		
		/**
		 * Widget receives a instance of its manager
		 * 
		 * @param value the manager of the widget
		 */
		function setWidgetManager(value:WidgetManager):void;
		
		/**
		 * A widget can have 40x40 icon image. The URL of the icon image file is specified
		 * in the config.xml file.
		 * 
		 * @param value the URL string of the icon image file. Flex supports JPG and PNG.
		 */
		function setIcon(value:String):void;
		
		/**
		 * A widget can have its own configuration file. The container and widget manager don't
		 * have the knowledge of the configuration content. The URL of the configuration file is
		 * specified in the config.xml. The widget is responsible for handling the configuration
		 * file. This file can be in any formate the widget developer perfers. 
		 * 
		 * @param value The URL of the configuration file.
		 */
		function setConfig(value:String):void;
		
		/**
		 * For advanced widget developer, the global configuration data is availible for use.
		 * 
		 * @param value the global configuration data
		 * @see ConfigData
		 */
		function setConfigData(value:ConfigData):void;
		
		/**
		 * The widget manager can change the state of the widget, such as close the widget.
		 * TODO: define standard state.
		 * 
		 * @param value the state token string.
		 */
		function setState(value:String):void;
		
		/**
		 * Pass the map reference to the widget.
		 * 
		 * @para value the map instance reference.
		 */
		function setMap(value:Map):void;
		
	}
}