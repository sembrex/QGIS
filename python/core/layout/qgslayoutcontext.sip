/************************************************************************
 * This file has been generated automatically from                      *
 *                                                                      *
 * src/core/layout/qgslayoutcontext.h                                   *
 *                                                                      *
 * Do not edit manually ! Edit header and run scripts/sipify.pl again   *
 ************************************************************************/



class QgsLayoutContext
{
%Docstring
 Stores information relating to the current context and rendering settings for a layout.
.. versionadded:: 3.0
%End

%TypeHeaderCode
#include "qgslayoutcontext.h"
%End
  public:

    enum Flag
    {
      FlagDebug,
      FlagOutlineOnly,
      FlagAntialiasing,
      FlagUseAdvancedEffects,
    };
    typedef QFlags<QgsLayoutContext::Flag> Flags;


    QgsLayoutContext();

    void setFlags( const QgsLayoutContext::Flags flags );
%Docstring
 Sets the combination of ``flags`` that will be used for rendering the layout.
.. seealso:: setFlag()
.. seealso:: flags()
.. seealso:: testFlag()
%End

    void setFlag( const QgsLayoutContext::Flag flag, const bool on = true );
%Docstring
 Enables or disables a particular rendering ``flag`` for the layout. Other existing
 flags are not affected.
.. seealso:: setFlags()
.. seealso:: flags()
.. seealso:: testFlag()
%End

    QgsLayoutContext::Flags flags() const;
%Docstring
 Returns the current combination of flags used for rendering the layout.
.. seealso:: setFlags()
.. seealso:: setFlag()
.. seealso:: testFlag()
 :rtype: QgsLayoutContext.Flags
%End

    bool testFlag( const Flag flag ) const;
%Docstring
 Check whether a particular rendering ``flag`` is enabled for the layout.
.. seealso:: setFlags()
.. seealso:: setFlag()
.. seealso:: flags()
 :rtype: bool
%End

    QgsRenderContext::Flags renderContextFlags() const;
%Docstring
 Returns the combination of render context flags matched to the layout context's settings.
 :rtype: QgsRenderContext.Flags
%End

    void setFeature( const QgsFeature &feature );
%Docstring
 Sets the current ``feature`` for evaluating the layout. This feature may
 be used for altering an item's content and appearance for a report
 or atlas layout.
.. seealso:: feature()
%End

    QgsFeature feature() const;
%Docstring
 Returns the current feature for evaluating the layout. This feature may
 be used for altering an item's content and appearance for a report
 or atlas layout.
.. seealso:: setFeature()
 :rtype: QgsFeature
%End

    QgsVectorLayer *layer() const;
%Docstring
 Returns the vector layer associated with the layout's context.
.. seealso:: setLayer()
 :rtype: QgsVectorLayer
%End

    void setLayer( QgsVectorLayer *layer );
%Docstring
 Sets the vector ``layer`` associated with the layout's context.
.. seealso:: layer()
%End

    void setDpi( double dpi );
%Docstring
 Sets the ``dpi`` for outputting the layout. This also sets the
 corresponding DPI for the context's measurementConverter().
.. seealso:: dpi()
%End

    double dpi() const;
%Docstring
 Returns the ``dpi`` for outputting the layout.
.. seealso:: setDpi()
 :rtype: float
%End


    QgsLayoutMeasurementConverter &measurementConverter();
%Docstring
 Returns the layout measurement converter to be used in the layout. This converter is used
 for translating between other measurement units and the layout's native unit.
 :rtype: QgsLayoutMeasurementConverter
%End

    bool gridVisible() const;
%Docstring
 Returns true if the page grid should be drawn.
.. seealso:: setGridVisible()
 :rtype: bool
%End

    void setGridVisible( bool visible );
%Docstring
 Sets whether the page grid should be ``visible``.
.. seealso:: gridVisible()
%End

    bool boundingBoxesVisible() const;
%Docstring
 Returns true if the item bounding boxes should be drawn.
.. seealso:: setBoundingBoxesVisible()
 :rtype: bool
%End

    void setBoundingBoxesVisible( bool visible );
%Docstring
 Sets whether the item bounding boxes should be ``visible``.
.. seealso:: boundingBoxesVisible()
%End

    void setPagesVisible( bool visible );
%Docstring
 Sets whether the page items should be ``visible`` in the layout. Removing
 them will prevent both display of the page boundaries in layout views and
 will also prevent them from being rendered in layout exports.
.. seealso:: pagesVisible()
%End

    bool pagesVisible() const;
%Docstring
 Returns whether the page items are be visible in the layout. This setting
 effects both display of the page boundaries in layout views and
 whether they will be rendered in layout exports.
.. seealso:: setPagesVisible()
 :rtype: bool
%End

};




/************************************************************************
 * This file has been generated automatically from                      *
 *                                                                      *
 * src/core/layout/qgslayoutcontext.h                                   *
 *                                                                      *
 * Do not edit manually ! Edit header and run scripts/sipify.pl again   *
 ************************************************************************/
