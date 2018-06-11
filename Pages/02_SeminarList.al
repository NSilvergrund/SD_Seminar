page 123456702 "Seminar List"
{
    PageType = List;
    SourceTable = Seminar;
    UsageCategory = Documents;
    CardPageId = "Seminar Card";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("No.";"No.")
                {
                    ApplicationArea = All;
                }
                field(Name;Name)
                {
                    ApplicationArea = All;
                }
                field("Seminar Duration";"Seminar Duration")
                {
                    ApplicationArea = All;
                }
                field("Seminar Price";"Seminar Price")
                {
                    ApplicationArea = All;
                }
                field("Minimum Participants";"Minimum Participants")
                {
                    ApplicationArea = All;
                }
                field("Maximum Participants";"Maximum Participants")
                {
                    ApplicationArea = All;
                }
            }
        }
        area(FactBoxes)
        {
            systempart(Notes; Notes)
            {

            }
            systempart("Links"; Links)
            {

            }

        }
    }

    actions
    {
         area(Navigation)
        {
            group("&Seminar")
            {
                action("Co&mments")
                {
                    RunObject = page "Seminar Comment Sheet";
                    RunPageLink = "Table Name" = const (Seminar), "No." = field ("No.");
                    Image = Comment;
                    Promoted = true;
                    PromotedIsBig = true;
                    PromotedOnly = true;
                }
            }
        }
    }
}