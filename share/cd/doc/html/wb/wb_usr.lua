wb_usr = {
  contact = "cd@tecgraf.puc-rio.br",
  title_bgcolor = "#3366CC",
  copyright_link = "http://www.tecgraf.puc-rio.br",
  search_link = "http://www.tecgraf.puc-rio.br/cd",
  start_size = "180",
  langs = {"en"},
  copyright_name = "Tecgraf/PUC-Rio",
  file_title = "cd",          
  start_open = "1"
} 

wb_usr.messages = {
  en = {
    bar_title = "CD - Version 5.5",
    title = "CD - Canvas Draw",
  }
} 

wb_usr.tree = 
{
  name= {nl= "CD"},
  link= "home.html",
  folder=
  {
    {
      name= {en= "Product", pt= "Produto"},
      link= "prod.html",
      folder=
      {
        {
          name= {en= "Overview", pt= "Visão Geral"},
          link= "prod.html#Overview"
        },
        {
          name= {en= "Availability", pt= "Disponibilidade"},
          link= "prod.html#Availability"
        },
        {
          name= {en= "Support", pt= "Suporte"},
          link= "prod.html#Suport"
        },
        {
          name= {en= "Credits", pt= "Créditos"},
          link= "prod.html#Acknowledgments"
        },
        {
          name= {en= "Documentation", pt= "Documentação"},
          link= "prod.html#About"
        },
        { link= "", name= {en= "" } },
        {
          name= {nl= "Copyright/License"},
          link= "copyright.html"
        },
        {
          name= {nl= "Download"},
          link= "download.html",
          folder=
          {
            {
              name= {en= "Library Download Tips"},
              link= "download_tips.html"
            }
          }
        },
        {
          name= {nl= "CVS"},
          link= "cvs.html"
        },
        {
          name= {en= "History", pt= "Histórico"},
          link= "history.html"
        },
        {
          name= {en= "To Do", pt= "Pendências"},
          link= "to_do.html"
        },
        {
          name= {en= "Screenshots"},
          link= "screenshots.html",
          folder=
          {
            {
              name= {en= "C Source Code"},
              link= "screenshots_src_c.html"
            },
            {
              name= {en= "Lua Source Code"},
              link= "screenshots_src_lua.html"
            }
          }
        },
        {
          name= {en= "Comparing", pt= "Outras Bibliotecas Gráficas"},
          link= "toolkits.html"
        }
      }
    },
    {
      name= {en= "Guide", pt= "Guia"},
      link= "guide.html",
      folder=
      {
        {
          name= {en= "Getting Started", pt= "Notas de Implementação"},
          link= "guide.html#start"
        },
        {
          name= {en= "Building Applications", pt= "Arquivos de Inclusão"},
          link= "guide.html#buildapp"
        },
        { name= {en= "Building the Library"}, link= "guide.html#buildlib" },
        {
          name= {en= "Environment Variables", pt= "Variável de Ambiente"},
          link= "guide.html#Environment"
        },
        {
          name= {en= "Implementing a Driver", pt= "Implementando um Driver"},
          link= "guide.html#NewDriver"
        },
        {
          name= {en= "Intercepting Primitives", pt= "Interceptando Primitivas"},
          link= "guide.html#Play"
        },
        {
          name= {en= "IUP Compatibility", pt= "Uso com a Biblioteca IUP"},
          link= "guide.html#IUP"
        },
        { link= "", name= {en= "" } },
        {
          name= {en= "Building in Linux"},
          link= "building.html"
        },
        {
          name= {en= "Internal Architecture", pt= "Arquitetura Interna"},
          link= "internal.html"
        },
        {
          name= {en= "Samples", pt= "Exemplos"},
          link= "samples.html"
        },
        {
          name= {en= "Lua Binding", pt= "Ligação com Lua"},
          link= "cdlua.html"
        },
        {
          name= {en= "CDLua+IMLua", pt= "Ligação com Lua"},
          link= "cdluaim.html"
        }
      }
    },
    { link= "", name= {en= "" } },
    {
      name= {en= "Canvas"},
      link= "canvas.html",
      folder=
      {
        {
          name= {en= "Initialization"},
          folder=
          {
            {
              name= {nl= "CreateCanvas"},
              link= "func/init.html#cdCreateCanvas"
            },
            {
              name= {nl= "CreateCanvasf"},
              link= "func/init.html#cdCreateCanvasf"
            },
            {
              name= {nl= "KillCanvas"},
              link= "func/init.html#cdKillCanvas"
            },
            {
              name= {nl= "Activate"},
              link= "func/init.html#cdCanvasActivate"
            },
            {
              name= {nl= "Deactivate"},
              link= "func/init.html#cdCanvasDeactivate"
            },
            {
              name= {nl= "UseContextPlus"},
              link= "func/init.html#cdUseContextPlus"
            },
            {
              name= {nl= "InitContextPlus"},
              link= "func/init.html#cdInitContextPlus"
            },
            { link= "", name= {en= "" } },
            {
              name= {nl= "GetContext"},
              link= "func/init.html#cdGetContext"
            },
            {
              name= {nl= "ContextCaps"},
              link= "func/init.html#cdContextCaps"
            },
            {
              name= {nl= "ContextType"},
              link= "func/init.html#cdContextType"
            },
            {
              name= {nl= "ContextIsPlus"},
              link= "func/init.html#cdContextIsPlus"
            },
            {
              name= {nl= "Simulate"},
              link= "func/init.html#cdSimulate"
            },
            { link= "", name= {en= "" } },
            {
              name= {nl= "cdlua_open"},
              link= "func/init.html#cdlua_open"
            },
            {
              name= {nl= "cdlua_close"},
              link= "func/init.html#cdlua_close"
            },
            {
              name= {nl= "cdlua_getcanvas"},
              link= "func/init.html#cdlua_getcanvas"
            }
          }
        },
        {
          name= {en= "Control"},
          folder=
          {
            {
              name= {nl= "Clear"},
              link= "func/control.html#cdClear"
            },
            {
              name= {nl= "Flush"},
              link= "func/control.html#cdFlush"
            },
            {
              name= {nl= "SaveState"},
              link= "func/control.html#cdSaveState"
            },
            {
              name= {nl= "RestoreState"},
              link= "func/control.html#cdRestoreState"
            },
            {
              name= {nl= "ReleaseState"},
              link= "func/control.html#cdReleaseState"
            },
            {
              name= {nl= "SetAttribute"},
              link= "func/control.html#cdSetAttribute"
            },
            {
              name= {nl= "SetfAttribute"},
              link= "func/control.html#cdSetfAttribute"
            },
            {
              name= {nl= "GetAttribute"},
              link= "func/control.html#cdGetAttribute"
            }
          }
        },
        {
          name= {en= "Coordinate System"},
          folder=
          {
            {
              name= {nl= "GetSize"},
              link= "func/coordinates.html#cdGetCanvasSize"
            },
            {
              name= {nl= "UpdateYAxis"},
              link= "func/coordinates.html#cdUpdateYAxis"
            },
            {
              name= {nl= "MM2Pixel"},
              link= "func/coordinates.html#cdMM2Pixel"
            },
            {
              name= {nl= "Pixel2MM"},
              link= "func/coordinates.html#cdPixel2MM"
            },
            {
              name= {nl= "Origin"},
              link= "func/coordinates.html#cdOrigin"
            },
            { link= "", name= {en= "" } },
            {
              name= {nl= "Transform"},
              link= "func/coordinates.html#cdTransform"
            },
            {
              name= {nl= "GetTransform"},
              link= "func/coordinates.html#cdGetTransform"
            },
            {
              name= {nl= "TransformMultiply"},
              link= "func/coordinates.html#cdTransformMultiply"
            },
            {
              name= {nl= "TransformTranslate"},
              link= "func/coordinates.html#cdTransformTranslate"
            },
            {
              name= {nl= "TransformScale"},
              link= "func/coordinates.html#cdTransformScale"
            },
            {
              name= {nl= "TransformRotate"},
              link= "func/coordinates.html#cdTransformRotate"
            }
          }
        },
        {
          name= {en= "World Coordinates"},
          link= "func/wd.html",
          folder=
          {
            {
              name= {nl= "Window"},
              link= "func/wd.html#wdWindow"
            },
            {
              name= {nl= "GetWindow"},
              link= "func/wd.html#wdGetWindow"
            },
            {
              name= {nl= "Viewport"},
              link= "func/wd.html#wdViewport"
            },
            {
              name= {nl= "GetViewport"},
              link= "func/wd.html#wdGetViewport"
            },
            {
              name= {nl= "World2Canvas"},
              link= "func/wd.html#wdWorld2Canvas"
            },
            {
              name= {nl= "Canvas2World"},
              link= "func/wd.html#wdCanvas2World"
            },
            {
              name= {nl= "SetTransform"},
              link= "func/wd.html#wdSetTransform"
            },
            {
              name= {nl= "GetTransform"},
              link= "func/wd.html#wdGetTransform"
            },
            {
              name= {nl= "Translate"},
              link= "func/wd.html#wdTranslate"
            },
            {
              name= {nl= "Scale"},
              link= "func/wd.html#wdScale"
            },
            {
              name= {en= "Extra"},
              folder=
              {
                {
                  name= {nl= "Hardcopy"},
                  link= "func/wd.html#wdHardcopy"
                }
              }
            }
          }
        },
        {
          name= {en= "General Attributes"},
          folder=
          {
            {
              name= {nl= "Foreground"},
              link= "func/attributes.html#cdForeground"
            },
            {
              name= {nl= "Background"},
              link= "func/attributes.html#cdBackground"
            },
            {
              name= {nl= "WriteMode"},
              link= "func/attributes.html#cdWriteMode"
            }
          }
        },
        {
          name= {nl= "Clipping"},
          link= "func/clipping.html",
          folder=
          {
            {
              name= {nl= "Clip"},
              link= "func/clipping.html#cdClip"
            },
            {
              name= {nl= "ClipArea"},
              link= "func/clipping.html#cdClipArea"
            },
            {
              name= {nl= "GetClipArea"},
              link= "func/clipping.html#cdGetClipArea"
            },
            {
              name= {nl= "Polygons"},
              link= "func/clipping.html#Polygons"
            },
            {
              name= {nl= "Regions"},
              link= "func/region.html",
              folder=
              {
                {
                  name= {nl= "Creating"},
                  link= "func/region.html#Creating"
                },
                {
                  name= {nl= "RegionCombineMode"},
                  link= "func/region.html#cdRegionCombineMode"
                },
                {
                  name= {nl= "RegionCombineMode"},
                  link= "func/region.html#cdRegionCombineMode"
                },
                {
                  name= {nl= "PointInRegion"},
                  link= "func/region.html#cdPointInRegion"
                },
                {
                  name= {nl= "OffsetRegion"},
                  link= "func/region.html#cdOffsetRegion"
                },
                {
                  name= {nl= "RegionBox"},
                  link= "func/region.html#cdRegionBox"
                }
              }
            }
          }
        }
      }
    },
    {
      name= {en= "Primitives"},
      folder=
      {
        {
          name= {en= "Marks"},
          link= "func/marks.html",
          folder=
          {
            {
              name= {nl= "Pixel"},
              link= "func/marks.html#cdPixel"
            },
            {
              name= {nl= "Mark"},
              link= "func/marks.html#cdMark"
            },
            {
              name= {en= "Attributes"},
              folder=
              {
                {
                  name= {nl= "MarkType"},
                  link= "func/marks.html#cdMarkType"
                },
                {
                  name= {nl= "MarkSize"},
                  link= "func/marks.html#cdMarkSize"
                }
              }
            }
          }
        },
        {
          name= {en= "Lines"},
          link= "func/lines.html",
          folder=
          {
            {
              name= {nl= "Line"},
              link= "func/lines.html#cdLine"
            },
            {
              name= {nl= "Line Polygons/Bezier Curves"},
              link= "func/lines.html#Polygons",
              folder=
              {
                {
                  name= {nl= "Polygons and Regions"},
                  link= "func/polygon.html"
                }
              }
            },
            {
              name= {nl= "Rect"},
              link= "func/lines.html#cdRect"
            },
            {
              name= {nl= "Arc"},
              link= "func/lines.html#cdArc"
            },
            {
              name= {en= "Attributes"},
              folder=
              {
                {
                  name= {nl= "LineStyle"},
                  link= "func/lines.html#cdLineStyle"
                },
                {
                  name= {nl= "LineStyleDashes"},
                  link= "func/lines.html#cdLineStyleDashes"
                },
                {
                  name= {nl= "LineWidth"},
                  link= "func/lines.html#cdLineWidth"
                },
                {
                  name= {nl= "LineJoin"},
                  link= "func/lines.html#cdLineJoin"
                },
                {
                  name= {nl= "LineCap"},
                  link= "func/lines.html#cdLineCap"
                }
              }
            }
          }
        },
        {
          name= {en= "Filled Areas"},
          link= "func/filled.html",
          folder=
          {
            {
              name= {nl= "Polygons"},
              link= "func/filled.html#Polygons"
            },
            {
              name= {nl= "Box"},
              link= "func/filled.html#cdBox"
            },
            {
              name= {nl= "Sector"},
              link= "func/filled.html#cdSector"
            },
            {
              name= {nl= "Chord"},
              link= "func/filled.html#cdChord"
            },
            {
              name= {en= "Attributes"},
              folder=
              {
                {
                  name= {nl= "BackOpacity"},
                  link= "func/filled.html#cdBackOpacity"
                },
                {
                  name= {nl= "FillMode"},
                  link= "func/filled.html#cdFillMode"
                },
                {
                  name= {nl= "InteriorStyle"},
                  link= "func/filled.html#cdInteriorStyle"
                },
                {
                  name= {nl= "Hatch"},
                  link= "func/filled.html#cdHatch"
                },
                {
                  name= {nl= "Stipple"},
                  link= "func/filled.html#cdStipple"
                },
                {
                  name= {nl= "Stipple (WC)"},
                  link= "func/filled.html#wdStipple"
                },
                {
                  name= {nl= "GetStipple"},
                  link= "func/filled.html#cdGetStipple"
                },
                {
                  name= {nl= "Pattern"},
                  link= "func/filled.html#cdPattern"
                },
                {
                  name= {nl= "Pattern (WC)"},
                  link= "func/filled.html#wdPattern"
                },
                {
                  name= {nl= "GetPattern"},
                  link= "func/filled.html#cdGetPattern"
                },
                {
                  name= {nl= "Data Access"},
                  link= "func/filled.html#DataAccess"
                }
              }
            },
            {
              name= {en= "Extras in Lua"},
              folder=
              {
                {
                  name= {nl= "CreatePattern"},
                  link= "func/filled.html#cdCreatePattern"
                },
                {
                  name= {nl= "KillPattern"},
                  link= "func/filled.html#cdKillPattern"
                },
                {
                  name= {nl= "CreateStipple"},
                  link= "func/filled.html#cdCreateStipple"
                },
                {
                  name= {nl= "KillStipple"},
                  link= "func/filled.html#cdKillStipple"
                }
              }
            }
          }
        },
        {
          name= {en= "Text"},
          link= "func/text.html",
          folder=
          {
            {
              name= {nl= "Text"},
              link= "func/text.html#cdText"
            },
            {
              name= {en= "Attributes"},
              folder=
              {
                {
                  name= {nl= "Font"},
                  link= "func/text.html#cdFont"
                },
                {
                  name= {nl= "GetFont"},
                  link= "func/text.html#cdGetFont"
                },
                {
                  name= {nl= "NativeFont"},
                  link= "func/text.html#cdNativeFont"
                },
                {
                  name= {nl= "TextAlignment"},
                  link= "func/text.html#cdTextAlignment"
                },
                {
                  name= {nl= "TextOrientation"},
                  link= "func/text.html#cdTextOrientation"
                }
              }
            },
            {
              name= {en= "Properties"},
              folder=
              {
                {
                  name= {nl= "GetFontDim"},
                  link= "func/text.html#cdFontDim"
                },
                {
                  name= {nl= "GetTextSize"},
                  link= "func/text.html#cdTextSize"
                },
                {
                  name= {nl= "GetTextBounds"},
                  link= "func/text.html#cdTextBounds"
                },
                {
                  name= {nl= "GetTextBox"},
                  link= "func/text.html#cdTextBox"
                },
              }
            }
          }
        },
        {
          name= {en= "Vector Text"},
          link= "func/vectortext.html",
          folder=
          {
            {
              name= {nl= "VectorText"},
              link= "func/vectortext.html#cdVectorText"
            },
            {
              name= {en= "Attributes"},
              folder=
              {
                {
                  name= {nl= "VectorTextDirection"},
                  link= "func/vectortext.html#cdVectorTextDirection"
                },
                {
                  name= {nl= "VectorTextTransform"},
                  link= "func/vectortext.html#cdVectorTextTransform"
                },
                {
                  name= {nl= "VectorTextSize"},
                  link= "func/vectortext.html#cdVectorTextSize"
                },
                {
                  name= {nl= "VectorCharSize"},
                  link= "func/vectortext.html#cdVectorCharSize"
                },
                {
                  name= {nl= "VectorFont"},
                  link= "func/vectortext.html#cdVectorFont"
                }
              }
            },
            {
              name= {en= "Properties"},
              folder=
              {
                {
                  name= {nl= "GetVectorTextSize"},
                  link= "func/vectortext.html#cdGetVectorTextSize"
                },
                {
                  name= {nl= "GetVectorTextBounds"},
                  link= "func/vectortext.html#cdGetVectorTextBounds"
                },
                {
                  name= {nl= "GetVectorTextBox"},
                  link= "func/vectortext.html#cdGetVectorTextBox"
                }
              }
            }
          }
        },
        {
          name= {en= "Client Images"},
          link= "func/client.html",
          folder=
          {
            {
              name= {nl= "GetImageRGB"},
              link= "func/client.html#cdGetImageRGB"
            },
            {
              name= {nl= "PutImageRectRGB"},
              link= "func/client.html#cdPutImageRectRGB"
            },
            {
              name= {nl= "PutImageRectRGBA"},
              link= "func/client.html#cdPutImageRectRGBA"
            },
            {
              name= {nl= "PutImageRectMap"},
              link= "func/client.html#cdPutImageRectMap"
            },
            {
              name= {nl= "RGB2Map"},
              link= "func/client.html#cdRGB2Map"
            },
            {
              name= {en= "Extras"},
              folder=
              {
                {
                  name= {nl= "CreateBitmap"},
                  link= "func/client.html#cdCreateBitmap"
                },
                {
                  name= {nl= "InitBitmap"},
                  link= "func/client.html#cdInitBitmap"
                },
                {
                  name= {nl= "KillBitmap"},
                  link= "func/client.html#cdKillBitmap"
                },
                {
                  name= {nl= "BitmapGetData"},
                  link= "func/client.html#cdBitmapGetData"
                },
                {
                  name= {nl= "BitmapSetRect"},
                  link= "func/client.html#cdBitmapSetRect"
                },
                {
                  name= {nl= "GetBitmap"},
                  link= "func/client.html#cdGetBitmap"
                },
                {
                  name= {nl= "PutBitmap"},
                  link= "func/client.html#cdPutBitmap"
                },
                {
                  name= {nl= "BitmapRGB2Map"},
                  link= "func/client.html#cdBitmapRGB2Map"
                }
              }
            },
            {
              name= {en= "Extras in Lua"},
              folder=
              {
                {
                  name= {nl= "CreateImageRGB"},
                  link= "func/client.html#cdCreateImageRGB"
                },
                {
                  name= {nl= "KillImageRGB"},
                  link= "func/client.html#cdKillImageRGB"
                },
                {
                  name= {nl= "CreateImageRGBA"},
                  link= "func/client.html#cdCreateImageRGBA"
                },
                {
                  name= {nl= "KillImageRGBA"},
                  link= "func/client.html#cdKillImageRGBA"
                },
                {
                  name= {nl= "CreateImageMap"},
                  link= "func/client.html#cdCreateImageMap"
                },
                {
                  name= {nl= "KillImageMap"},
                  link= "func/client.html#cdKillImageMap"
                },
                {
                  name= {nl= "Data Access"},
                  link= "func/client.html#DataAccess"
                }
              }
            }
          }
        },
        {
          name= {en= "Server Images"},
          link= "func/server.html",
          folder=
          {
            {
              name= {nl= "CreateImage"},
              link= "func/server.html#cdCreateImage"
            },
            {
              name= {nl= "KillImage"},
              link= "func/server.html#cdKillImage"
            },
            {
              name= {nl= "GetImage"},
              link= "func/server.html#cdGetImage"
            },
            {
              name= {nl= "PutImageRect"},
              link= "func/server.html#cdPutImageRect"
            },
            {
              name= {nl= "ScrollArea"},
              link= "func/server.html#cdScrollArea"
            }
          }
        }
      }
    },
    {
      name= {en= "Other"},
      folder=
      {
        {
          name= {en= "System", pt= "Sistema"},
          folder=
          {
            {
              name= {nl= "Version"},
              link= "func/other.html#cdVersion"
            }
          }
        },
        {
          name= {en= "Metafile Interpretation", pt= "Interpretação de Metafiles"},
          folder=
          {
            {
              name= {nl= "Play"},
              link= "func/other.html#cdPlay"
            },
            {
              name= {nl= "RegisterCallback"},
              link= "func/other.html#cdRegisterCallback"
            }
          }
        },
        {
          name= {en= "Color Coding", pt= "Codificação de Cores"},
          folder=
          {
            {
              name= {nl= "EncodeColor"},
              link= "func/color.html#cdEncodeColor"
            },
            {
              name= {nl= "DecodeColor"},
              link= "func/color.html#cdDecodeColor"
            },
            {
              name= {nl= "EncodeAlpha"},
              link= "func/color.html#cdEncodeAlpha"
            },
            {
              name= {nl= "DecodeAlpha"},
              link= "func/color.html#cdDecodeAlpha"
            },
            {
              name= {nl= "Red"},
              link= "func/color.html#cdRed"
            },
            {
              name= {nl= "Green"},
              link= "func/color.html#cdGreen"
            },
            {
              name= {nl= "Blue"},
              link= "func/color.html#cdBlue"
            },
            { link= "", name= {en= "" } },
            {
              name= {nl= "GetColorPlanes"},
              link= "func/color.html#cdGetColorPlanes"
            },
            {
              name= {nl= "Palette"},
              link= "func/color.html#cdPalette"
            },
            {
              name= {nl= "CreatePalette"},
              link= "func/color.html#cdCreatePalette"
            },
            {
              name= {nl= "KillPalette"},
              link= "func/color.html#cdKillPalette"
            }
          }
        }
      }
    },
    { link= "", name= {en= "" } },
    {
      name= {nl= "Drivers"},
      link= "drv.html",
      folder=
      {
        {
          name= {en= "Window Systems", pt= "Sistemas de Janelas"},
          folder=
          {
            {
              name= {nl= "IUP"},
              link= "drv/iup.html"
            },
            {
              name= {nl= "Native Window"},
              link= "drv/native.html"
            },
            {
              name= {nl= "OpenGL"},
              link= "drv/gl.html"
            }
          }
        },
        {
          name= {en= "Devices", pt= "Dispositivos"},
          folder=
          {
            {
              name= {nl= "Clipboard"},
              link= "drv/clipbd.html"
            },
            {
              name= {en= "Printer", pt= "Impressora"},
              link= "drv/printer.html"
            },
            {
              name= {en= "Picture"},
              link= "drv/picture.html"
            }
          }
        },
        {
          name= {en= "Images", pt= "Memória"},
          folder=
          {
            {
              name= {en= "Client Image", pt= "Imagem de Cliente"},
              link= "drv/irgb.html"
            },
            {
              name= {en= "Server Image", pt= "Imagem de Servidor"},
              link= "drv/image.html"
            },
            {
              name= {nl= "Client Double Buffer"},
              link= "drv/dbufrgb.html"
            },
            {
              name= {nl= "Server Double Buffer"},
              link= "drv/dbuf.html"
            }
          }
        },
        {
          name= {en= "File", pt= "Arquivo"},
          folder=
          {
            {
              name= {nl= "PDF"},
              link= "drv/pdf.html"
            },
            {
              name= {nl= "PS"},
              link= "drv/ps.html"
            },
            {
              name= {nl= "SVG"},
              link= "drv/svg.html"
            },
            {
              name= {nl= "MF"},
              link= "drv/mf.html"
            },
            {
              name= {nl= "DEBUG"},
              link= "drv/debug.html"
            },
            { link= "", name= {en= "" } },
            {
              name= {nl= "CGM"},
              link= "drv/cgm.html"
            },
            {
              name= {nl= "DGN"},
              link= "drv/dgn.html"
            },
            {
              name= {nl= "DXF"},
              link= "drv/dxf.html"
            },
            { link= "", name= {en= "" } },
            {
              name= {nl= "EMF"},
              link= "drv/emf.html"
            },
            {
              name= {nl= "WMF"},
              link= "drv/wmf.html"
            },
          }
        },
        {
          name= {en= "Base Drivers"},
          folder=
          {
            {
              name= {en= "GDK"},
              link= "drv/gdk.html"
            },
            {
              name= {nl= "GDI"},
              link= "drv/win32.html"
            },
            {
              name= {nl= "X-Win"},
              link= "drv/xwin.html"
            },
            { link= "", name= {en= "" } },
            {
              name= {en= "Simulation"},
              link= "drv/sim.html"
            },
          }
        },
        {
          name= {en= "Context Plus"},
          folder=
          {
            {
              name= {en= "Cairo"},
              link= "drv/cairo.html"
            },
            {
              name= {nl= "GDI+"},
              link= "drv/gdiplus.html"
            },
            {
              name= {nl= "XRender"},
              link= "drv/xrender.html"
            }
          }
        }
      }
    }
  }
} 
