.class public final Lcom/android/server/accessibility/autoaction/actiontype/ScreenOff;
.super Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mContext:Landroid/content/Context;


# virtual methods
.method public final performCornerAction(I)V
    .locals 1

    .line 1
    new-instance p1, Landroid/content/Intent;

    .line 3
    const-string v0, "SYSTEM_ACTION_LOCK_SCREEN"

    .line 5
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/ScreenOff;->mContext:Landroid/content/Context;

    .line 10
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 13
    return-void
.end method
