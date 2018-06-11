tableextension 123456700 "CSD Resource Ext" extends Resource
{
    fields
    {
        modify("Profit %")
        {
            trigger OnAfterValidate();
            begin
                rec.TestField("Unit Cost");
            end;
        }
        field(123456701; "CSD Resource Type"; Option)
        {
            OptionMembers = "Internal", "External";
            OptionCaption = 'Internal,External';
            Caption = 'Resource Type';

        }
        field(123456702; "CSD Maximum Participant"; Integer)
        {
            Caption = 'Maximum Participant';
        }
        field(123456703;"CSD Quantity Per Day";Integer)
        {
            Caption = 'Quantity Per Day';
            
        }
    }

}