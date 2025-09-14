.class public Lcom/android/server/notification/NASLearnMoreActivity;
.super Landroid/app/Activity;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/app/AlertDialog$Builder;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    const v0, 0x10408da

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    new-instance v0, Lcom/android/server/notification/NASLearnMoreActivity$1;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/android/server/notification/NASLearnMoreActivity$1;-><init>(Lcom/android/server/notification/NASLearnMoreActivity;)V

    .line 19
    .line 20
    .line 21
    const p0, 0x104000a

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p0, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const/16 v0, 0x7d3

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    .line 42
    .line 43
    .line 44
    return-void
.end method
