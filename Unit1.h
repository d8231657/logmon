//---------------------------------------------------------------------------

#ifndef Unit1H
#define Unit1H
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ComCtrls.hpp>
#include <ExtCtrls.hpp>
#include <Dialogs.hpp>
//---------------------------------------------------------------------------
class TForm1 : public TForm
{
__published:	// IDE-managed Components
    TEdit *Edit1;
    TCheckBox *CheckBox1;
    TEdit *Edit2;
    TTimer *Timer1;
    TMemo *Memo1;
    TButton *Button1;
    TFontDialog *FontDialog1;
    TButton *Button2;
    TOpenDialog *OpenDialog1;
    TButton *Button3;
    void __fastcall Edit1Change(TObject *Sender);
    void __fastcall CheckBox1Click(TObject *Sender);
    void __fastcall Timer1Timer(TObject *Sender);
    void __fastcall Edit2Exit(TObject *Sender);
    void __fastcall FormShow(TObject *Sender);
    void __fastcall Edit2KeyDown(TObject *Sender, WORD &Key,
          TShiftState Shift);
    void __fastcall Button1Click(TObject *Sender);
    void __fastcall Button2Click(TObject *Sender);
    void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
    void __fastcall Button3Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
    __fastcall TForm1(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif
