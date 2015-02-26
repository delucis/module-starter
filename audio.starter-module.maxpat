{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 6,
			"minor" : 1,
			"revision" : 9,
			"architecture" : "x86"
		}
,
		"rect" : [ 25.0, 69.0, 640.0, 480.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Helvetica Neue",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"boxes" : [ 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 225.0, 435.0, 79.0, 20.0 ],
					"text" : "send~ 2-dac"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 435.0, 79.0, 20.0 ],
					"text" : "send~ 1-dac"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 225.0, 75.0, 91.0, 20.0 ],
					"text" : "receive~ 2-adc"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 15.0, 75.0, 91.0, 20.0 ],
					"text" : "receive~ 1-adc"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "#1" ],
					"id" : "obj-2",
					"maxclass" : "bpatcher",
					"name" : "modular.stereo-output-picker.maxpat",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 15.0, 375.0, 229.0, 45.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 120.0, 229.0, 45.0 ],
					"varname" : "modular.stereo-input-picker[1]"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "#1" ],
					"id" : "obj-1",
					"maxclass" : "bpatcher",
					"name" : "modular.stereo-input-picker.maxpat",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 15.0, 15.0, 229.0, 45.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 0.0, 229.0, 45.0 ],
					"varname" : "modular.stereo-input-picker"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-2", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-2", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "modular.stereo-input-picker.maxpat",
				"bootpath" : "/Users/chris/Desktop/desktop/Max/music264-spring-2015/music-264-modular/lib/abstractions",
				"patcherrelativepath" : "../music-264-modular/lib/abstractions",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "pattr-control.maxpat",
				"bootpath" : "/Users/chris/Desktop/desktop/Max/music264-spring-2015/music-264-modular/lib/externals",
				"patcherrelativepath" : "../music-264-modular/lib/externals",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "read-write-pattr.maxpat",
				"bootpath" : "/Users/chris/Desktop/desktop/Max/music264-spring-2015/music-264-modular/lib/externals",
				"patcherrelativepath" : "../music-264-modular/lib/externals",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "datetime.maxpat",
				"bootpath" : "/Users/chris/Desktop/desktop/Max/music264-spring-2015/music-264-modular/lib/externals",
				"patcherrelativepath" : "../music-264-modular/lib/externals",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "modular.stereo-output-picker.maxpat",
				"bootpath" : "/Users/chris/Desktop/desktop/Max/music264-spring-2015/music-264-modular/lib/abstractions",
				"patcherrelativepath" : "../music-264-modular/lib/abstractions",
				"type" : "JSON",
				"implicit" : 1
			}
 ]
	}

}
