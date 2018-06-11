page 123456700 "Seminar Setup"
{
    PageType = Card;
    SourceTable = "Seminar Setup";
    Caption = 'Seminar Setup';
    UsageCategory = Administration;
    InsertAllowed = FALSE;
    DeleteAllowed = FALSE;

    layout
    {
        area(content)
        {
            group(Numbering)
            {
                field("Seminar Nos."; "Seminar Nos.")
                {
                    ApplicationArea = All;
                }
                field("Seminar Registration Nos."; "Seminar Registration Nos.")
                {
                    ApplicationArea = All;
                }
                field("Posted Seminar Reg. Nos."; "Posted Seminar Reg. Nos.")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    trigger OnOpenPage();

    begin
        IF NOT get then begin
            INIT;
            INSERT;
        END;
    end;
}