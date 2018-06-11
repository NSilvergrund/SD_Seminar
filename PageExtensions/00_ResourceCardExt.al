pageextension 123456700 "CSD ResourceCardExt" extends "Resource Card"
{
    layout
    {
        addlast(General)
        {
            field("CSD Resource Type"; "CSD Resource Type")
            {
                ApplicationArea = All;
            }
            field("CSD Quantity Per Day"; "CSD Quantity Per Day")
            {
                ApplicationArea = All;
            }

        }
        addafter("Personal Data")
        {
            group("CSD Room")
            {
                Visible = ShowRoom;
                Caption = 'Room';

                field("CSD Maximum Participant"; "CSD Maximum Participant")
                {

                }
            }
        }
    }
    trigger OnAfterGetRecord();
    begin
        ShowRoom := (Type = Type::Machine);

    end;

    var
        [InDataSet]
        ShowRoom: Boolean;


}