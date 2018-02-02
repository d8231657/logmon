//---------------------------------------------------------------------------

#include <vcl.h>
#include <fstream.h>
#pragma hdrstop

#include "Unit1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
    : TForm(Owner)
{
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Edit1Change(TObject *Sender)
{
    if(FileExists(Edit1->Text))
    {
        Memo1->Visible=false;

        Memo1->Clear();
		ifstream infile(Edit1->Text.c_str());
		string tmp="";
		while(getline(infile,tmp))
		{
			Memo1->Lines->Add(tmp.c_str());
		}
		infile.close();

//        Memo1->Lines->LoadFromFile(Edit1->Text);
        SendMessage(Memo1->Handle, WM_VSCROLL, SB_BOTTOM, NULL);
        Memo1->Visible=true;
    }
    else
    {
        Memo1->Clear();
    }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::CheckBox1Click(TObject *Sender)
{
    Timer1->Enabled=CheckBox1->Checked;
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Timer1Timer(TObject *Sender)
{
    Edit1Change(NULL);
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Edit2Exit(TObject *Sender)
{
    Timer1->Interval=Edit2->Text.ToInt();
}
//---------------------------------------------------------------------------
void __fastcall TForm1::FormShow(TObject *Sender)
{
    Memo1->DoubleBuffered=true;
    Form1->DoubleBuffered=true;

    if(FileExists("logmon.tmp"))
    {
        TStringList &sl=*new TStringList;
        sl.LoadFromFile("logmon.tmp");
        if(sl.Count>=4)
        {
            Edit1->Text=sl.Strings[0];
            Edit2->Text=sl.Strings[1];
            Memo1->Font->Name=sl.Strings[2];
            Memo1->Font->Size=sl.Strings[3].ToInt();
        }
        delete &sl;
    }
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Edit2KeyDown(TObject *Sender, WORD &Key,
      TShiftState Shift)
{
    if(Key==VK_RETURN)
    {
        Edit2Exit(NULL);
    }
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button1Click(TObject *Sender)
{
    DeleteFile(Edit1->Text);
}
//---------------------------------------------------------------------------


void __fastcall TForm1::Button2Click(TObject *Sender)
{
    FontDialog1->Font=Memo1->Font;
    FontDialog1->Execute();
    Memo1->Font=FontDialog1->Font;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::FormClose(TObject *Sender, TCloseAction &Action)
{
    TStringList &sl=*new TStringList;
    sl.Add(Edit1->Text.Trim());
    sl.Add(Edit2->Text.Trim());
    sl.Add(Memo1->Font->Name);
    sl.Add(Memo1->Font->Size);
    sl.SaveToFile("logmon.tmp");
    delete &sl;
}
//---------------------------------------------------------------------------

