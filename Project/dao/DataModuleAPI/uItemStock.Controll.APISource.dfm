object ApiData: TApiData
  OnCreate = ServerMethodDataModuleCreate
  Encoding = esASCII
  QueuedRequest = False
  Height = 381
  Width = 425
  PixelsPerInch = 96
  object EventsMain: TDWServerEvents
    IgnoreInvalidParams = False
    Events = <
      item
        Routes = [crGet]
        NeedAuthorization = True
        DWParams = <>
        JsonMode = jmPureJSON
        Name = 'status'
        EventName = 'status'
        OnlyPreDefinedParams = False
        OnReplyEvent = EventsMainEventsstatusReplyEvent
      end
      item
        Routes = [crAll]
        NeedAuthorization = False
        DWParams = <
          item
            TypeObject = toParam
            ObjectDirection = odIN
            ObjectValue = ovString
            ParamName = 'item'
            Encoded = True
          end
          item
            TypeObject = toParam
            ObjectDirection = odIN
            ObjectValue = ovString
            ParamName = 'state'
            Encoded = True
          end
          item
            TypeObject = toParam
            ObjectDirection = odINOUT
            ObjectValue = ovString
            ParamName = 'desc'
            Encoded = True
          end
          item
            TypeObject = toParam
            ObjectDirection = odIN
            ObjectValue = ovString
            ParamName = 'container'
            Encoded = True
          end
          item
            TypeObject = toParam
            ObjectDirection = odINOUT
            ObjectValue = ovString
            ParamName = 'type'
            Encoded = True
          end>
        JsonMode = jmPureJSON
        Name = 'new'
        EventName = 'new'
        OnlyPreDefinedParams = False
        OnReplyEvent = EventsMainEventsnewReplyEvent
      end
      item
        Routes = [crAll]
        NeedAuthorization = True
        DWParams = <
          item
            TypeObject = toParam
            ObjectDirection = odIN
            ObjectValue = ovString
            ParamName = 'id'
            Encoded = True
          end
          item
            TypeObject = toParam
            ObjectDirection = odINOUT
            ObjectValue = ovString
            ParamName = 'item'
            Encoded = True
          end
          item
            TypeObject = toParam
            ObjectDirection = odINOUT
            ObjectValue = ovString
            ParamName = 'state'
            Encoded = True
          end
          item
            TypeObject = toParam
            ObjectDirection = odINOUT
            ObjectValue = ovString
            ParamName = 'desc'
            Encoded = True
          end
          item
            TypeObject = toParam
            ObjectDirection = odINOUT
            ObjectValue = ovString
            ParamName = 'container'
            Encoded = True
          end
          item
            TypeObject = toParam
            ObjectDirection = odINOUT
            ObjectValue = ovString
            ParamName = 'type'
            Encoded = True
          end>
        JsonMode = jmPureJSON
        Name = 'edit'
        EventName = 'edit'
        OnlyPreDefinedParams = False
        OnReplyEvent = EventsMainEventseditReplyEvent
      end
      item
        Routes = [crAll]
        NeedAuthorization = True
        DWParams = <
          item
            TypeObject = toParam
            ObjectDirection = odINOUT
            ObjectValue = ovString
            ParamName = 'id'
            Encoded = True
          end>
        JsonMode = jmPureJSON
        Name = 'delete'
        EventName = 'delete'
        OnlyPreDefinedParams = False
        OnReplyEvent = EventsMainEventsdeleteReplyEvent
      end
      item
        Routes = [crAll]
        NeedAuthorization = True
        DWParams = <
          item
            TypeObject = toParam
            ObjectDirection = odINOUT
            ObjectValue = ovString
            ParamName = 'id'
            Encoded = True
          end>
        JsonMode = jmDataware
        Name = 'searchbyid'
        EventName = 'searchbyid'
        OnlyPreDefinedParams = False
      end
      item
        Routes = [crAll]
        NeedAuthorization = True
        DWParams = <>
        JsonMode = jmPureJSON
        Name = 'listall'
        EventName = 'listall'
        OnlyPreDefinedParams = False
        OnReplyEvent = EventsMainEventslistallReplyEvent
      end
      item
        Routes = [crAll]
        NeedAuthorization = True
        DWParams = <>
        JsonMode = jmPureJSON
        Name = 'gettypes'
        EventName = 'gettypes'
        OnlyPreDefinedParams = False
        OnReplyEvent = EventsMainEventsgettypesReplyEvent
      end>
    Left = 208
    Top = 192
  end
end
