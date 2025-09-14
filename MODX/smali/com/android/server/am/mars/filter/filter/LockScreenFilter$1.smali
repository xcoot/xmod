.class public final Lcom/android/server/am/mars/filter/filter/LockScreenFilter$1;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/am/mars/filter/filter/LockScreenFilter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/mars/filter/filter/LockScreenFilter;Landroid/os/Handler;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter$1;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/LockScreenFilter;

    .line 5
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 8
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter$1;->$r8$classId:I

    .line 3
    packed-switch p1, :pswitch_data_0

    .line 6
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/LockScreenFilter;

    .line 8
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->getLockClockFaceSub()V

    .line 11
    return-void

    .line 12
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/LockScreenFilter;

    .line 14
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->getLockClockFace()V

    .line 17
    return-void

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
