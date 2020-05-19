page 50007 "DMT - KILL ALL Active Sessions"
{
    Caption = 'DMT - KILL ALL Active Sessions';
    Editable = true;
    PageType = List;
    ShowFilter = true;
    SourceTable = "Active Session";
    UsageCategory = Lists;
    ApplicationArea = ALL;

    //** COMMENTED - WE NEED ALL SESSIONS!
    //SourceTableView = WHERE("Client Type" = FILTER(<> "Web Service" & <> "Management Client" & <> NAS & <> "Client Service"));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(CurrentSession; IsCurrentSession)
                {
                    ApplicationArea = Suite;
                    Caption = 'Current Session';
                    ToolTip = 'Specifies if the line describes the current session.';
                }
                field("Session ID"; "Session ID")
                {
                    ApplicationArea = Suite;
                }
                field("User ID"; "User ID")
                {
                    ApplicationArea = Suite;
                }
                field("Client Type"; "Client Type")
                {
                    ApplicationArea = Suite;
                }
                field("Client Computer Name"; "Client Computer Name")
                {
                    ApplicationArea = Suite;
                }
            }
        }
    }

    actions
    {
    }

    trigger OnOpenPage()
    begin
        //SetRange("Server Instance ID", ServiceInstanceId);  //ALL SESSIONS
    end;

    local procedure IsCurrentSession(): Boolean
    begin
        exit("Session ID" = SessionId);
    end;
}

