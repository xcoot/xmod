.class public final Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages;
.super Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mUserId:I


# virtual methods
.method public final performCornerAction(I)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/Thread;

    .line 3
    new-instance v0, Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages$1;

    .line 5
    invoke-direct {v0, p0}, Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages$1;-><init>(Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages;)V

    .line 8
    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 11
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 14
    return-void
.end method
