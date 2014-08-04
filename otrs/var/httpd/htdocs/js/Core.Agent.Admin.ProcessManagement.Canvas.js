// --
// Core.Agent.Admin.ProcessManagement.Canvas.js - provides the special module functions for the Process Management Diagram Canvas.
// Copyright (C) 2001-2013 OTRS AG, http://otrs.org/
// --
// This software comes with ABSOLUTELY NO WARRANTY. For details, see
// the enclosed file COPYING for license information (AGPL). If you
// did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
// --

/*global jsPlumb */

"use strict";

var Core = Core || {};
Core.Agent = Core.Agent || {};
Core.Agent.Admin = Core.Agent.Admin || {};
Core.Agent.Admin.ProcessManagement = Core.Agent.Admin.ProcessManagement || {};

/**
 * @namespace
 * @exports TargetNS as Core.Agent.Admin.ProcessManagement.Canvas
 * @description
 *      This namespace contains the special module functions for the ProcessManagement Diagram Canvas module.
 */
Core.Agent.Admin.ProcessManagement.Canvas = (function (TargetNS) {

    var Elements = {},
        ActivityBoxHeight = 80;

    function EscapeHTML(Content) {
        return Content
            .replace(/&/g, '&amp;')
            .replace(/"/g, '&quot;')
            .replace(/'/g, '&#39;')
            .replace(/</g, '&lt;')
            .replace(/>/g, '&gt;');
    }

    function GetCanvasSize($Element) {
        var MinWidth = 500,
            MinHeight = 500,
            MaxWidth = 0,
            MaxHeight = 0,
            ScreenWidth;

        // Find maximum X and maximum Y value in Layout config data.
        // This data was saved the last time the process was edited
        // it is possible to extend the canvas for larger drawings.
        // The minimum width is based on the available space (screen resolution)

        // Get width of surrounding element (possible canvas width)
        ScreenWidth = $Element.width();

        // Loop through available elements and find max needed width and height
        $.each(Core.Agent.Admin.ProcessManagement.ProcessLayout, function (Key, Value) {
            var Left = parseInt(Value.left, 10),
                Top = parseInt(Value.top, 10);

            if (Left > MaxWidth) {
                MaxWidth = Left + 110;
            }
            if (Top > MaxHeight) {
                MaxHeight = Top + ActivityBoxHeight;
            }
        });

        // Width should always be at least the screen width
        if (ScreenWidth > MaxWidth) {
            MaxWidth = ScreenWidth;
        }

        // The canvas should always have at least a minimum size
        if (MinWidth > MaxWidth) {
            MaxWidth = MinWidth;
        }
        if (MinHeight > MaxHeight) {
            MaxHeight = MinHeight;
        }

        return {
            Width: MaxWidth,
            Height: MaxHeight
        };
    }

    function ShowRemoveEntityCanvasConfirmationDialog(EntityType, EntityName, EntityID, Callback) {
        var DialogID = 'Remove' + EntityType + 'CanvasConfirmationDialog',
            $DialogElement = $('#Dialogs #' + DialogID);

        // Update EntityName in Dialog
        $DialogElement.find('span.EntityName').text(EntityName);

        Core.UI.Dialog.ShowContentDialog(
            $('#Dialogs #' + DialogID),
            Core.Agent.Admin.ProcessManagement.Localization.RemoveEntityCanvasTitle,
            '240px',
            'Center',
            true,
            [
               {
                   Label: Core.Agent.Admin.ProcessManagement.Localization.CancelMsg,
                   Class: 'Primary',
                   Function: function () {
                       Core.UI.Dialog.CloseDialog($('.Dialog'));
                   }
               },
               {
                   Label: Core.Agent.Admin.ProcessManagement.Localization.DeleteMsg,
                   Function: function () {
                       if (typeof(Callback) !== 'undefined') {
                           Callback();
                       }
                   }
               }
           ]
        );
    }

    TargetNS.CreateStartEvent = function (PosX, PosY) {
        var DefaultX = 30,
            DefaultY = 30;

        PosX = PosX || DefaultX;
        PosY = PosY || DefaultY;

        $('#Canvas').append('<div id="StartEvent"></div>').find('#StartEvent').css({
            'top' : PosY + 'px',
            'left': PosX + 'px'
        });
    };

    TargetNS.CreateActivity = function (EntityID, EntityName, ActivityID, PosX, PosY) {

        var Config = Core.Agent.Admin.ProcessManagement.ProcessData,
            ProcessEntityID = $('#ProcessEntityID').val(),
            EntityNameHeight,
            $EntityBox;

        $('#Canvas')
            .append('<div class="Activity" id="' + EscapeHTML(EntityID) + '"><span>' + EscapeHTML(EntityName) + '</span><div class="Icon Loader"></div><div class="Icon Success"></div></div>')
            .find('#' + EntityID)
            .css({
                'top' : PosY + 'px',
                'left': PosX + 'px'
            })
            .bind('mouseenter.Activity', function() {
                TargetNS.ShowActivityTooltip($(this));
                TargetNS.ShowActivityDeleteButton($(this));
                TargetNS.ShowActivityEditButton($(this));
                if (TargetNS.DragActivityItem) {
                    $(this).addClass('ReadyToDrop');
                }
                $(this).addClass('Hovered');
            })
            .bind('mouseleave.Activity', function() {
                $('#DiagramTooltip').hide();
                $(this).removeClass('ReadyToDrop').find('.DiagramDeleteLink').remove();
                $(this).removeClass('ReadyToDrop').find('.DiagramEditLink').remove();
                $(this).removeClass('Hovered');
            })
            .bind('dblclick.Activity', function() {
                var Path = Core.Config.Get('Config.PopupPathActivity') + "EntityID=" + EntityID + ";ID=" + ActivityID,
                    SessionData = Core.App.GetSessionInformation();
                if ( !Core.Config.Get('SessionIDCookie') && Path.indexOf(SessionData[Core.Config.Get('SessionName')]) === -1 ) {
                    Path += ';' + encodeURIComponent(Core.Config.Get('SessionName')) + '=' + encodeURIComponent(SessionData[Core.Config.Get('SessionName')]);
                }

                Core.Agent.Admin.ProcessManagement.ShowOverlay();
                Core.UI.Popup.OpenPopup(Path, 'Activity');
            });

        // Correct placing of activity name within box
        $EntityBox = $('#' + EntityID);
        EntityNameHeight = $EntityBox.find('span').height();
        $EntityBox.find('span').css('margin-top', parseInt( (ActivityBoxHeight - EntityNameHeight) / 2, 10) );

        // make the activity able to accept transitions
        jsPlumb.makeTarget(EntityID, {
            anchor: 'Continuous',
            isTarget: true,
            detachable: true,
            reattach: true,
            endpoint: [ 'Dot', { radius: 7, hoverClass: 'EndpointHover' } ],
            paintStyle: { fillStyle: '#000' },
            parameters: {
                'Parent': EntityID
            }
        });

        // Add the Activity to our list of elements
        Elements[EntityID] = $('#' + EntityID);
    };

    TargetNS.CreateActivityDummy = function (StartActivityID) {
        var StartActivityPosition, DummyPosition, CanvasSize = {},
            Activities = Core.Agent.Admin.ProcessManagement.ProcessData.Activity;

        if ($('#Dummy').length) {
            $('#Dummy').remove();
        }

        CanvasSize.width = $('#Canvas').width();
        CanvasSize.height = $('#Canvas').height();

        // get position of start activity to calculate position of dummy
        StartActivityPosition = $('#' + StartActivityID).position();
        DummyPosition = StartActivityPosition;
        DummyPosition.top += 120;
        DummyPosition.left += 150;

        // check if DummyPosition is out of canvas and correct position
        if ((CanvasSize.width - 85) <= DummyPosition.left) {
            DummyPosition.left -= 250;
        }
        if ((CanvasSize.height - 115) <= DummyPosition.top) {
            DummyPosition.top -= 240;
        }

        $('#Canvas').append('<div class="Activity" id="Dummy"><span>Dummy</span></div>').find('#Dummy').css({
            top: DummyPosition.top,
            left: DummyPosition.left
        });
    };

    TargetNS.ShowTransitionTooltip = function (Connection, StartActivity, EndActivity) {
        var $Tooltip = $('#DiagramTooltip'),
            $Element = $(Connection.canvas),
            $TitleElement = $Element.clone(),
            text,
            position = { x: 0, y: 0},
            Transition = Core.Agent.Admin.ProcessManagement.ProcessData.Transition,
            ElementID = $TitleElement.find('span').attr('id'),
            CurrentProcessEntityID = $('#ProcessEntityID').val(),
            PathInfo = Core.Agent.Admin.ProcessManagement.ProcessData.Process[CurrentProcessEntityID].Path,
            AssignedTransitionActions = [],
            CanvasWidth, CanvasHeight,
            TooltipWidth, TooltipHeight;

        $TitleElement.find('a').remove();
        text = '<h4>' + EscapeHTML($TitleElement.text()) + '</h4>';

        if (typeof Transition[ElementID] === 'undefined') {
            return false;
        }

        if (!$Tooltip.length) {
            $Tooltip = $('<div id="DiagramTooltip"></div>').css('display', 'none').appendTo('#Canvas');
        }
        else if ($Tooltip.is(':visible')) {
            $Tooltip.hide();
        }

        $.each(PathInfo, function(Activity, Transition) {
            if (Activity === StartActivity && typeof Transition[ElementID] !== 'undefined' && typeof Transition[ElementID].TransitionAction !== 'undefined') {
                AssignedTransitionActions = Transition[ElementID].TransitionAction;
                return false;
            }
        });

        // Add content to the tooltip
        text += "<ul>";
        if (AssignedTransitionActions.length) {
            $.each(AssignedTransitionActions, function (Key, Value) {
                text += "<li>" + EscapeHTML(Core.Agent.Admin.ProcessManagement.ProcessData.TransitionAction[Value].Name) + " (" + EscapeHTML(Value) + ") </li>";
            });
        }
        else {
            text += '<li class="NoDialogsAssigned">' + Core.Agent.Admin.ProcessManagement.Localization.NoTransitionActionsAssigned + '</li>';
        }
        text += "</ul>";

        $Tooltip.html(text);

        // calculate tooltip position
        // x: x-coordinate of canvas + x-coordinate of element within canvas + width of element
        //position.x = parseInt($Element.css('left'), 10) + parseInt($Element.width(), 10) + 30;
        //
        // y: y-coordinate of canvas + y-coordinate of element within canvas + height of element
        //position.y = parseInt($Element.css('top'), 10) + 15;

        // calculate tooltip position
        // if activity box is at the right border of the canvas, switch tooltip to the left side of the box
        CanvasWidth = $('#Canvas').width();
        TooltipWidth = $Tooltip.width();

        // If activity does not fit in canvas, generate tooltip on the left side
        if (CanvasWidth < (parseInt($Element.css('left'), 10) + parseInt($Element.width(), 10) + TooltipWidth)) {
            // x: x-coordinate of element within canvas - width of tooltip
            position.x = parseInt($Element.css('left'), 10) - TooltipWidth - 5;
        }
        // otherwise put tooltip on the right side (default behaviour)
        else {
            // x: x-coordinate of canvas + x-coordinate of element within canvas + width of element
            position.x = parseInt($Element.css('left'), 10) + parseInt($Element.width(), 10) + 40;
        }

        // if activity box is at the bottom border of the canvas, set tooltip y-coordinate to the top as far as needed
        CanvasHeight = $('#Canvas').height();
        TooltipHeight = $Tooltip.height();

        // y-coordinate
        if (parseInt($Element.css('top'), 10) + TooltipHeight + 15 > CanvasHeight) {
            position.y = CanvasHeight - TooltipHeight - 15;
        }
        else {
            position.y = parseInt($Element.css('top'), 10) + 15;
        }

        $Tooltip
            .css('top', position.y)
            .css('left', position.x)
            .show();
    };

    TargetNS.ShowActivityTooltip = function ($Element) {
        var $Tooltip = $('#DiagramTooltip'),
            text = '<h4>' + EscapeHTML($Element.find('span').text()) + '</h4>',
            position = {x: 0, y: 0},
            Activity = Core.Agent.Admin.ProcessManagement.ProcessData.Activity,
            ActivityDialogs,
            ElementID = $Element.attr('id'),
            CanvasWidth,
            CanvasHeight,
            TooltipWidth,
            TooltipHeight;

        if (typeof Activity[$Element.attr('id')] === 'undefined') {
            return false;
        }

        ActivityDialogs = Activity[$Element.attr('id')].ActivityDialog;

        if (!$Tooltip.length) {
            $Tooltip = $('<div id="DiagramTooltip"></div>').css('display', 'none').appendTo('#Canvas');
        }
        else if ($Tooltip.is(':visible')) {
            $Tooltip.hide();
        }

        // Add content to the tooltip
        text += "<ul>";
        if (ActivityDialogs) {
            $.each(ActivityDialogs, function (Key, Value) {
                var Interfaces = Core.Agent.Admin.ProcessManagement.ProcessData.ActivityDialog[Value].Interface,
                    SelectedInterface = '';

                $.each(Interfaces, function (Key, Value) {
                    if (SelectedInterface.length) {
                        SelectedInterface += '/';
                    }
                    SelectedInterface += Value.substr(0,1);
                });
                text += "<li><span class=\"AvailableIn\">" + SelectedInterface + "</span> " + EscapeHTML(Core.Agent.Admin.ProcessManagement.ProcessData.ActivityDialog[Value].Name) + " (" + EscapeHTML(Value) + ") </li>";
            });
        }
        else {
            text += '<li class="NoDialogsAssigned">' + Core.Agent.Admin.ProcessManagement.Localization.NoDialogsAssigned + '</li>';
        }

        text += "</ul>";

        $Tooltip.html(text);

        // calculate tooltip position
        // if activity box is at the right border of the canvas, switch tooltip to the left side of the box
        CanvasWidth = $('#Canvas').width();
        TooltipWidth = $Tooltip.width();

        // If activity does not fit in canvas, generate tooltip on the left side
        if (CanvasWidth < (parseInt($Element.css('left'), 10) + parseInt($Element.width(), 10) + TooltipWidth)) {
            // x: x-coordinate of element within canvas - width of tooltip
            position.x = parseInt($Element.css('left'), 10) - TooltipWidth - 10;
        }
        // otherwise put tooltip on the right side (default behaviour)
        else {
            // x: x-coordinate of canvas + x-coordinate of element within canvas + width of element
            position.x = parseInt($Element.css('left'), 10) + parseInt($Element.width(), 10) + 15;
        }

        // if activity box is at the bottom border of the canvas, set tooltip y-coordinate to the top as far as needed
        CanvasHeight = $('#Canvas').height();
        TooltipHeight = $Tooltip.height();

        // y-coordinate
        if (parseInt($Element.css('top'), 10) + TooltipHeight + 10 > CanvasHeight) {
            position.y = CanvasHeight - TooltipHeight - 10;
        }
        else {
            position.y = parseInt($Element.css('top'), 10) + 10;
        }

        $Tooltip
            .css('top', position.y)
            .css('left', position.x)
            .show();
    };

    TargetNS.ShowActivityDeleteButton = function ($Element) {
        var $delete = $('.DiagramDeleteLink').clone(),
            position = { x: 0, y: 0},
            Activity = Core.Agent.Admin.ProcessManagement.ProcessData.Activity,
            ElementID = $Element.attr('id');

        if (typeof Activity[ElementID] === 'undefined') {
            return false;
        }

        if ($delete.is(':visible')) {
            $delete.hide();
        }

        $Element.append($delete);

        $delete
            .show()
            .unbind('click')
            .bind('click', function () {
                ShowRemoveEntityCanvasConfirmationDialog('Activity', Activity[ElementID].Name, ElementID, function () {
                    TargetNS.RemoveActivity(ElementID);
                    Core.UI.Dialog.CloseDialog($('.Dialog'));
                });
                return false;
            });
    };

    TargetNS.ShowActivityEditButton = function ($Element) {
        var $edit = $('.DiagramEditLink').clone(),
            position = { x: 0, y: 0},
            Activity = Core.Agent.Admin.ProcessManagement.ProcessData.Activity,
            ElementID = $Element.attr('id');

        if (typeof Activity[ElementID] === 'undefined') {
            return false;
        }

        if ($edit.is(':visible')) {
            $edit.hide();
        }

        $Element.append($edit);

        $edit
            .show()
            .unbind('click')
            .bind('click', function () {
                var Path = Core.Config.Get('Config.PopupPathActivity') + "EntityID=" + ElementID + ";ID=" + Activity[ElementID].ID,
                    SessionData = Core.App.GetSessionInformation();
                if ( !Core.Config.Get('SessionIDCookie') && Path.indexOf(SessionData[Core.Config.Get('SessionName')]) === -1 ) {
                    Path += ';' + encodeURIComponent(Core.Config.Get('SessionName')) + '=' + encodeURIComponent(SessionData[Core.Config.Get('SessionName')]);
                }

                Core.Agent.Admin.ProcessManagement.ShowOverlay();
                Core.UI.Popup.OpenPopup(Path, 'Activity');
                return false;
            });
    };

    TargetNS.ShowActivityLoader = function (EntityID) {
        if (typeof Elements[EntityID] !== 'undefined') {
            $('#' + EntityID).find('span').hide().parent().find('.Loader').show();
        }
    };

    TargetNS.ShowActivityAddActivityDialogSuccess = function (EntityID) {
        if (typeof Elements[EntityID] !== 'undefined') {
            // show icon for success
            $('#' + EntityID).find('.Loader').hide().parent().find('.Success').show();

            // wait 1 second, fade success icon out and label back in
            window.setTimeout(function () {
                $('#' + EntityID).find('.Success').fadeOut('slow', function() {
                    $('#' + EntityID).find('span').fadeIn();
                });
            }, 1000);
        }
    };

    TargetNS.ShowActivityAddActivityDialogError = function (EntityID) {
        $('#' + EntityID).find('.Loader').hide().parent().find('span').show();
    };

    TargetNS.RemoveActivity = function (EntityID) {
        var Config = Core.Agent.Admin.ProcessManagement.ProcessData,
            ProcessEntityID = $('#ProcessEntityID').val();

        // remove HTML elements
        $('#DiagramTooltip').hide();
        $('#' + EntityID).find('.DiagramDeleteLink').remove();
        $('#' + EntityID).find('.DiagramEditLink').remove();

        // if Activity is StartActivity, this Activity cannot be removed...
        if (Config.Process[ProcessEntityID].StartActivity === EntityID) {
            alert(Core.Agent.Admin.ProcessManagement.Localization.ActivityCannotBeDeleted);
            return;
        }

        // update config
        // delete entity and all transitions starting *from* here
        if (typeof Config.Process[ProcessEntityID].Path[EntityID] !== 'undefined') {
            delete Config.Process[ProcessEntityID].Path[EntityID];
        }

        // delete Elements array entry
        Core.Agent.Admin.ProcessManagement.Canvas.RemoveActivityFromConfig(EntityID);

        // delete all transitions *to* this entity
        $.each(Config.Process[ProcessEntityID].Path, function (StartActivity, Value) {
            // the Value is a hash with the transition name as Key
            // loop again
            $.each(Value, function (Transition, EndActivity) {
                // Key is now the Transition
                // Value is a hash with a Key "ActivityID" which is possibly our deleted Entity
                if (EndActivity.ActivityEntityID && EndActivity.ActivityEntityID === EntityID) {
                    delete Config.Process[ProcessEntityID].Path[StartActivity][Transition];
                }
            });
        });

        // remove connections
        jsPlumb.detachAllConnections(EntityID);

        // remove element from canvas
        $('#Canvas').find('#' + EntityID).remove();
    };

    TargetNS.RemoveActivityFromConfig = function (EntityID) {
        delete Elements[EntityID];
    };

    TargetNS.UpdateElementPosition = function ($Element) {
        var EntityID;
        // Element can be "false" if newly placed on the canvas
        // otherwise it's an object
        if ($Element) {
            EntityID = $Element.attr('id');
            if (typeof Core.Agent.Admin.ProcessManagement.ProcessLayout[EntityID] !== 'undefined') {
                // Save new element position
                Core.Agent.Admin.ProcessManagement.ProcessLayout[EntityID] = {
                    left: parseInt($Element.css('left'), 10),
                    top: parseInt($Element.css('top'), 10)
                };
            }
        }
    };

    TargetNS.SetStartActivity = function (EntityID) {

        // Not more than one StartActivity allowed, function does not check this!
        // After the initialization of the canvas, an automatic setting of the StartActivity is not useful
        // Only the user can change this by moving the arrow
        if (typeof Elements[EntityID] !== 'undefined') {

            // Create the connection from StartEvent to StartActivity
            // We don't create the Endpoints here, because every Activity
            // creates its own Endpoint on CreateActivity()
            jsPlumb.connect({
                source: 'StartEvent',
                target: EntityID,
                anchor: 'Continuous',
                endpoint: 'Blank',
                detachable: true,
                reattach: true,
            });
        }
    };

    TargetNS.LastTransitionDetails = {};

    TargetNS.CreateTransition = function (StartElement, EndElement, EntityID, TransitionName) {

        var Config = Core.Agent.Admin.ProcessManagement.ProcessData,
            ProcessEntityID = $('#ProcessEntityID').val(),
            Path = Config.Process[ProcessEntityID].Path,
            StartActivity, EndActivity, OldActivity, Connection,
            PopupPath;

        StartActivity = Elements[StartElement];
        if (EndElement === "Dummy") {
            EndActivity = $('#Dummy').attr('id');
        }
        else {
            EndActivity = Elements[EndElement];
        }

        if ((typeof StartActivity === 'undefined') || (typeof EndActivity === 'undefined')) {
            return false;
        }

        // Get TransitionName from Config
        if (typeof TransitionName === 'undefined') {
            if (Config.Transition && Config.Transition[EntityID]) {
                TransitionName = Config.Transition[EntityID].Name;
            }
            else {
                TransitionName = 'NoName';
            }
        }

        PopupPath = Core.Config.Get('Config.PopupPathPath') + "ProcessEntityID=" + ProcessEntityID + ";TransitionEntityID=" + EntityID + ";StartActivityID=" + StartElement;

        Connection = jsPlumb.connect({
            source: StartActivity,
            target: EndActivity,
            anchor: 'Continuous',
            endpoints: [
                "Blank",
                [ 'Dot', { radius: 7, hoverClass: 'EndpointHover' } ]
            ],
            endpointStyle: { fillStyle: '#000' },
            detachable: true,
            reattach: true,
            overlays: [
                [ "Diamond", { location: 18, width: 15, length: 25, paintStyle: { fillStyle: '#FFF', outlineWidth: 1, outlineColor: '#000'} } ],
                [ "Label", { label: '<span id="' + EntityID + '" title="' + EscapeHTML(TransitionName) + '">' + EscapeHTML(TransitionName) + '</span>', location: 0.5, cssClass: 'TransitionLabel', id: 'label', events: {
                    mouseenter: function(labelOverlay, originalEvent) {
                        TargetNS.LastTransitionDetails = {
                            LabelOverlay: labelOverlay,
                            StartElement: StartElement,
                            EndElement: EndElement
                        };
                        TargetNS.HighlightTransitionLabel(labelOverlay, StartElement, EndElement);
                        originalEvent.stopPropagation();
                        return false;
                    },
                    mouseexit: function(labelOverlay, originalEvent) {
                        TargetNS.UnHighlightTransitionLabel(labelOverlay);
                        originalEvent.stopPropagation();
                        return false;
                    }
                }}]
            ],
            parameters: {
                TransitionID: EntityID
            }
        });

        Connection.bind('mouseenter', function (ActiveConnection) {
            var Overlay = Connection.getOverlay('label');

            // add class to label
            if (Overlay) {
                $(Overlay.canvas).addClass('Hovered');
            }
        });

        Connection.bind('mouseexit', function (ActiveConnection) {
            var Overlay = Connection.getOverlay('label');

            // remove hover class from label
            if (Overlay) {
                $(Overlay.canvas).removeClass('Hovered');
            }
        });

        Connection.bind('dblclick', function(Connection, Event) {
            var EndActivity = Connection.endpoints[1],
                SessionData = Core.App.GetSessionInformation();
            // Do not open path dialog for dummy connections
            // dblclick on overlays (e.g. labels) propagate to the connection
            // prevent opening path dialog twice if clicked on label
            if (EndActivity !== 'Dummy' && !$(Event.srcElement).hasClass('TransitionLabel')) {
                Core.Agent.Admin.ProcessManagement.ShowOverlay();

                if ( !Core.Config.Get('SessionIDCookie') && PopupPath.indexOf(SessionData[Core.Config.Get('SessionName')]) === -1 ) {
                    PopupPath += ';' + encodeURIComponent(Core.Config.Get('SessionName')) + '=' + encodeURIComponent(SessionData[Core.Config.Get('SessionName')]);
                }

                Core.UI.Popup.OpenPopup(PopupPath, 'Path');
            }
            Event.stopImmediatePropagation();
            return false;
        });
    };

    TargetNS.HighlightTransitionLabel = function(Connection, StartActivity, EndActivity) {

        var Config = Core.Agent.Admin.ProcessManagement.ProcessData,
            ProcessEntityID = $('#ProcessEntityID').val(),
            Path = Config.Process[ProcessEntityID].Path,
            TransitionEntityID = Connection.component.getParameter('TransitionID'),
            StartActivityID = Connection.component.sourceId,
            PopupPath = Core.Config.Get('Config.PopupPathPath') + "ProcessEntityID=" + ProcessEntityID + ";TransitionEntityID=" + TransitionEntityID + ";StartActivityID=" + StartActivityID,
            Transition,
            SessionData = Core.App.GetSessionInformation();

        if (TargetNS.DragTransitionAction) {
            $(Connection.canvas).addClass('ReadyToDrop');
            TargetNS.DragTransitionActionTransition = {
                TransitionID: TransitionEntityID,
                StartActivity: StartActivityID,
                Connection: Connection
            };
        }

        if (!$(Connection.canvas).find('.Delete').length) {
            $(Connection.canvas).append('<a class="Delete" title="' + Core.Agent.Admin.ProcessManagement.Localization.TransitionDeleteLink + '" href="#">x</a>').find('.Delete').bind('click', function(Event) {
                ShowRemoveEntityCanvasConfirmationDialog('Path', Config.Transition[TransitionEntityID].Name, TransitionEntityID, function () {
                    jsPlumb.detach(Connection.component);
                    delete Path[StartActivityID][TransitionEntityID];
                    Core.UI.Dialog.CloseDialog($('.Dialog'));
                });

                Event.stopPropagation();
                return false;
            });
        }

        if (!$(Connection.canvas).find('.Edit').length) {
            $(Connection.canvas).append('<a class="Edit" title="' + Core.Agent.Admin.ProcessManagement.Localization.TransitionEditLink + '" href="#">&gt;</a>').find('.Edit').bind('click', function(Event) {
                if (EndActivity !== 'Dummy') {
                    if ( !Core.Config.Get('SessionIDCookie') && PopupPath.indexOf(SessionData[Core.Config.Get('SessionName')]) === -1 ) {
                        PopupPath += ';' + encodeURIComponent(Core.Config.Get('SessionName')) + '=' + encodeURIComponent(SessionData[Core.Config.Get('SessionName')]);
                    }
                    Core.Agent.Admin.ProcessManagement.ShowOverlay();
                    Core.UI.Popup.OpenPopup(PopupPath, 'Path');
                }
                Event.stopPropagation();
                return false;
            });
        }

        // highlight label
        $(Connection.canvas).addClass('Hovered');
        Connection.component.setPaintStyle({ strokeStyle: "#FF9922", lineWidth: '2' });

        // show tooltip with assigned transition actions
        TargetNS.ShowTransitionTooltip(Connection, StartActivity, EndActivity);

        $(Connection.canvas).unbind('dblclick.Transition').bind('dblclick.Transition', function(Event) {
            if (EndActivity !== 'Dummy') {
                Core.Agent.Admin.ProcessManagement.ShowOverlay();
                Core.UI.Popup.OpenPopup(PopupPath, 'Path');
            }
            Event.stopPropagation();
            return false;
        });
    };

    TargetNS.UnHighlightTransitionLabel = function(Connection) {
        $('#DiagramTooltip').hide();
        if (TargetNS.DragTransitionAction) {
            $(Connection.canvas).removeClass('ReadyToDrop');
            TargetNS.DragTransitionActionTransition = {};
        }
        $(Connection.canvas).removeClass('Hovered');
        Connection.component.setPaintStyle({ strokeStyle: "#000", lineWidth: '2' });
    };

    TargetNS.DragActivityItem = false;
    TargetNS.DragTransitionAction = false;
    TargetNS.DragTransitionActionTransition = {};

    TargetNS.DrawDiagram = function () {
        var Config = Core.Agent.Admin.ProcessManagement.ProcessData,
            Layout = Core.Agent.Admin.ProcessManagement.ProcessLayout,
            ProcessEntityID = $('#ProcessEntityID').val(),
            StartActivity = Config.Process[ProcessEntityID].StartActivity;

        // Set some jsPlumb defaults
        jsPlumb.importDefaults({
            Connector: [ 'Flowchart', { curviness: 0, margin: -1, showLoopback:false } ],
            PaintStyle: { strokeStyle: "#000", lineWidth: 2 },
            HoverPaintStyle: { strokeStyle: "#FF9922", lineWidth: 2 },
            ConnectionOverlays: [
                [ "PlainArrow", { location: -15, width: 20, length: 15 } ]
            ]
        });

        // Always start with drawing the start event element
        TargetNS.CreateStartEvent();

        // Draw all available Activities (Keys of the ProcessData-Path)
        $.each(Config.Process[ProcessEntityID].Path, function (Key, Value) {
            if (typeof Layout[Key] !== 'undefined') {
                TargetNS.CreateActivity(Key, Config.Activity[Key].Name, Config.Activity[Key].ID, Layout[Key].left, Layout[Key].top);
            }
            else {
                Core.Exception.Throw('Error: Activity without Layout Position!', 'ProcessError');
            }
        });

        // Start Activity
        if (typeof StartActivity !== 'undefined') {
            TargetNS.SetStartActivity(StartActivity);
        }

        // Now draw the Transitions
        $.each(Config.Process[ProcessEntityID].Path, function (Key, Value) {
            var StartActivityID = Key,
                TransitionID, EndActivityID,
                TransitionHash = Value;

            if (typeof TransitionHash !== 'undefined') {
                $.each(TransitionHash, function (Key, Value) {
                    TransitionID = Key;
                    // if EndActivity available, draw transition directly
                    if (typeof Value !== 'undefined') {
                        EndActivityID = Value.ActivityEntityID;
                        TargetNS.CreateTransition(StartActivityID, EndActivityID, TransitionID);
                    }

                    // if EndActivity is undefined draw transition with dummy
                    else {

                        // Create dummy activity to use for initial transition
                        TargetNS.CreateActivityDummy(StartActivityID);

                        // Create transition between this Activity and DummyElement
                        TargetNS.CreateTransition(StartActivityID, 'Dummy', TransitionID);

                        // Remove Connection to DummyElement and delete DummyElement again
                        TargetNS.RemoveActivityDummy();
                    }
                });
            }
        });

        TargetNS.MakeDraggable();

        $('div.TransitionLabel')
            .delegate('a.Delete, a.Edit, span', 'mouseenter', function () {
                TargetNS.HighlightTransitionLabel(TargetNS.LastTransitionDetails.LabelOverlay, TargetNS.LastTransitionDetails.StartElement, TargetNS.LastTransitionDetails.EndElement);
            })
            .delegate('a.Delete, a.Edit, span', 'mouseleave', function () {
                TargetNS.UnHighlightTransitionLabel(TargetNS.LastTransitionDetails.LabelOverlay);
            });
    };

    TargetNS.MakeDraggable = function() {
        // make all activities draggable (note the z-index!)
        jsPlumb.draggable($('#Canvas .Activity'), {
            containment: '#Canvas',
            start: function() {
                $('#DiagramTooltip').hide();
                $(this).find('.DiagramDeleteLink').remove();
                $(this).find('.DiagramEditLink').remove();
            },
            stop: function() {
                TargetNS.UpdateElementPosition($(this));
            }
        });
    };

    TargetNS.Redraw = function () {
        $('#ShowEntityIDs').removeClass('Visible').text(Core.Agent.Admin.ProcessManagement.Localization.ShowEntityIDs);
        jsPlumb.reset();
        $('#Canvas').empty();
        TargetNS.Init();
    };

    TargetNS.Extend = function (CanvasSize) {
        var CanvasWidth,
            CanvasHeight;

        if (typeof CanvasSize !== 'undefined') {

            CanvasWidth = $('#Canvas').width() + parseInt(CanvasSize.Width, 10);
            CanvasHeight = $('#Canvas').height() + parseInt(CanvasSize.Height, 10);

            $('#Canvas').width(CanvasWidth).height(CanvasHeight);
        }
    };

    TargetNS.Init = function () {
        var CanvasSize = GetCanvasSize($('#Canvas')),
            CanvasWidth = CanvasSize.Width,
            CanvasHeight = CanvasSize.Height;

        // set the width and height of the drawing canvas,
        // based on the saved layout information (if available)
        $('#Canvas').width(CanvasWidth).height(CanvasHeight);

        // reset, because at this point (initial draw or redraw), there cannot be a saved connection
        TargetNS.LatestConnectionTransitionID = undefined;

        // init label spacer
        var CanvasLabelSpacer = new LabelSpacer();

        // init binding to connection changes
        jsPlumb.bind('connection', function(Data, OriginalEvent) {
            var Config = Core.Agent.Admin.ProcessManagement.ProcessData,
                ProcessEntityID = $('#ProcessEntityID').val(),
                Path = Config.Process[ProcessEntityID].Path,
                TransitionID, TransitionName;

            // check if we need to register a new StartActivity
            if (Data.sourceId === 'StartEvent') {
                Config.Process[ProcessEntityID].StartActivity = Data.targetId;
            }

            // in case the target is the dummy, its a whole new transition
            // and we need to mark it as "to be connected", so the user will
            // see that there is something to do with it
            else if (Data.targetId === 'Dummy') {
                Data.connection.setPaintStyle({ strokeStyle: "red", lineWidth: 4 });
                Data.targetEndpoint.setPaintStyle({ fillStyle: "red" });
            }
            else if (Data.targetId === Data.sourceId) {
                return false;
            }
            // otherwise, an existing transition has been (re)connected
            else {
                // get TransitionID and TransitionName
                TransitionID = Data.connection.getParameter('TransitionID');

                // Fallback: try to get the ID from the earlier saved variable, if it cannot be retrieved from the connection
                if (typeof TransitionID === 'undefined') {
                    TransitionID = TargetNS.LatestConnectionTransitionID;
                }

                if (Config.Transition && Config.Transition[TransitionID]) {
                    TransitionName = Config.Transition[TransitionID].Name;
                }
                else {
                    TransitionName = 'NoName';
                }

                // set new Path
                // this event also fires on the initial drawing of the diagram
                // we have to make sure, that existing data is not overwritten
                // if the config entry already exists, there is no need to redefine it
                if (typeof Path[Data.sourceId][TransitionID] === 'undefined') {
                    Path[Data.sourceId][TransitionID] = {
                        ActivityEntityID: Data.targetId
                    };
                }
                else if (Path[Data.sourceId][TransitionID].ActivityEntityID !== Data.targetId) {
                    Path[Data.sourceId][TransitionID].ActivityEntityID = Data.targetId;
                }

                // set connection style to blackagain (if it was red before)
                Data.connection.setPaintStyle({ strokeStyle: "#000", lineWidth: 2 });
                Data.targetEndpoint.setPaintStyle({ fillStyle: "#000" });
            }
        });

        // init event to save transition ID, because information is lost while re-connecting connections
        jsPlumb.bind('beforeDrop', function(Data) {
           TargetNS.LatestConnectionTransitionID = Data.connection.getParameter('TransitionID');
           return true;
        });

        TargetNS.DrawDiagram();
    };

    TargetNS.ShowEntityIDs = function () {

        var ActivityEntityID, TransitionEntityID, Connections, Overlay;

        // show EntityIDs of Activities
        $('.Activity').each(function() {
            ActivityEntityID = $(this).attr('id');
            $(this).append('<em class="EntityID">' + ActivityEntityID + '</em>');
        });

        // show EntityIDs of Transitions
        Connections = jsPlumb.getConnections();
        $(Connections).each(function() {
            TransitionEntityID = this.getParameter('TransitionID');
            Overlay = this.getOverlay('label');
            if (Overlay) {
                $(Overlay.canvas).append('<em class="EntityID">' + TransitionEntityID + '</em>');
            }
        });

    };

    return TargetNS;
}(Core.Agent.Admin.ProcessManagement.Canvas || {}));

/*jslint nomen: true*/
