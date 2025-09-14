.class public final Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation$2;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation$2;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object p2, p0, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation$2;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;

    .line 13
    .line 14
    iget-object v0, p2, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->mAccelerometerRotationUri:Ljava/lang/String;

    .line 15
    .line 16
    iget p2, p2, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->mUserId:I

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-static {p1, v0, v1, p2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation$2;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->rotateScreen()V

    .line 25
    .line 26
    .line 27
    return-void
.end method
