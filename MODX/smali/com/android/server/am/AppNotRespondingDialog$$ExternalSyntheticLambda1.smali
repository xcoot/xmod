.class public final synthetic Lcom/android/server/am/AppNotRespondingDialog$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    const-string p0, "GATE"

    .line 3
    const-string p1, "<GATE-M>APP_ANR:ANR dialog has been cleared</GATE-M>"

    .line 5
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    return-void
.end method
