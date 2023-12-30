table 50110 customerDetails
{
    DataClassification = ToBeClassified;
    Caption = 'customer master data to maintain csutomer data';

    fields
    {
        field(10; No; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'No';
            AutoIncrement = true;
            trigger OnValidate()
            begin
                if No <= 0 then
                    Error('No should be greater than 0');
            end;
        }
        field(1; CustomerID; Code[10])
        {
            DataClassification = ToBeClassified;
            Caption = 'CustomerID';
            trigger OnValidate()
            var
                i: Integer;
                charNo: Integer;
            begin
                for i := 1 to StrLen(Rec.CustomerID) do begin
                    charNo := Rec.CustomerID[i];
                    if not (Rec.CustomerID[i] in ['A' .. 'Z', 'a' .. 'z', '0' .. '9']) then
                        Error('Only A-Z 0-9 allowed')
                end;
            end;

        }

        field(2; CustomerName; Text[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'Customer Name';
        }

        field(3; PhoneNo; Text[10])
        {
            DataClassification = ToBeClassified;
            Caption = 'Phone No';

            trigger OnValidate()
            begin
                if not ValidatePhoneNumber(PhoneNo) then
                    Error('Invalid PhoneNumber');
            end;
        }

        field(4; EmailId; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Email Id';

            trigger OnValidate()
            begin
                if not ValidateEmail(EmailId) then
                    Error('Invalid email format');
            end;
        }

        field(5; Billingadd; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Billing Address';
        }

        field(6; Shippingadd; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Shipping Address';
        }

        field(7; Customtype; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = cutomer,supplier,prospect;

        }
        field(8; status; Enum "status")
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(key1; No)
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    begin
        Message('The record has been Inserted');
    end;

    trigger OnModify()
    begin
        Message('The record has been Modified')
    end;

    trigger OnDelete()
    begin
        Message('The record has been Delete')
    end;

    trigger OnRename()
    begin
        Message('The record has been Renamed')
    end;

    procedure ValidatePhoneNumber(PhoneNumber: Text[20]): Boolean;
    var
        IsValid: Boolean;
        PhoneNumberStr: Text[20];
        i: Integer;
        c: Char;

    begin
        PhoneNumberStr := '';

        //Remove non-numeric character from phoneNumber
        for i := 1 to StrLen(PhoneNumber) do begin

            c := PhoneNumber[i];
            if (c >= '0') AND
            (c <= '9') then begin
                PhoneNumberStr := PhoneNumberStr + c;
            end;
        end;
        // check 10 digits 
        IsValid := StrLen(PhoneNumberStr) = 10;

        exit(IsValid);
    end;

    procedure ValidateEmail(Email: Text[100]): Boolean;

    var
        IsValid: Boolean;
        EmailPattern: Text[100];
        Regex: Codeunit Regex;

    begin
        EmailPattern := '^[a-zA-Z0-9+_.-]+@(gmail\.com|outlook\.com|yahoo\.com)$';
        IsValid := Regex.IsMatch(Email, EmailPattern);

        exit(IsValid);
    end;


}