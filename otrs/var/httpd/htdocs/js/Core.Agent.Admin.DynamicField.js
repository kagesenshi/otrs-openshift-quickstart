// --
// Core.Agent.Admin.DynamicField.js - provides the special module functions for the Dynamic Fields.
// Copyright (C) 2001-2012 OTRS AG, http://otrs.org/
// --
// This software comes with ABSOLUTELY NO WARRANTY. For details, see
// the enclosed file COPYING for license information (AGPL). If you
// did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
// --

"use strict";

var Core = Core || {};
Core.Agent = Core.Agent || {};
Core.Agent.Admin = Core.Agent.Admin || {};

/**
 * @namespace
 * @exports TargetNS as Core.Agent.Admin.DynamicField
 * @description
 *      This namespace contains the special module functions for the .DynamicField module.
 */
Core.Agent.Admin.DynamicField = (function (TargetNS) {

    /**
     * @function
     * @private
     * @param {Object} Data The data that should be converted
     * @return {string} query string of the data
     * @description Converts a given hash into a query string
     */
    function SerializeData(Data) {
        var QueryString = '';
        $.each(Data, function (Key, Value) {
            QueryString += ';' + encodeURIComponent(Key) + '=' + encodeURIComponent(Value);
        });
        return QueryString;
    }

    TargetNS.Redirect = function( FieldType, ObjectType ) {
        var DynamicFieldsConfig, Action, URL, FieldOrder;

        // get configuration
        DynamicFieldsConfig = Core.Config.Get('DynamicFields');

        // get action
        Action = DynamicFieldsConfig[ FieldType ];

        // get field order
        FieldOrder = parseInt($('#MaxFieldOrder').val(), 10) + 1;

        // redirect to correct url
        URL = Core.Config.Get('Baselink') + 'Action=' + Action + ';Subaction=Add' + ';ObjectType=' + ObjectType + ';FieldType=' + FieldType + ';FieldOrder=' + FieldOrder;
        URL += SerializeData(Core.App.GetSessionInformation());
        window.location = URL;
    };

    TargetNS.ValidationInit = function() {

        Core.Form.Validate.AddRule("Validate_Alphanumeric", {
            Validate_Alphanumeric: true
        });
        Core.Form.Validate.AddMethod("Validate_Alphanumeric", function (Value, Element) {
            return ( /^[a-zA-Z0-9]+$/.test(Value));
        }, "");

        Core.Form.Validate.AddRule("Validate_PositiveNegativeNumbers", {
            Validate_PositiveNegativeNumbers: true
        });
        Core.Form.Validate.AddMethod("Validate_PositiveNegativeNumbers", function (Value, Element) {
            return ( /^-?[0-9]+$/.test(Value));
        }, "");

    };

    return TargetNS;
}(Core.Agent.Admin.DynamicField || {}));
