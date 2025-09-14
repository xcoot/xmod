.class public final Lcom/android/server/am/ActiveServices$ProcessAnrTimer;
.super Lcom/android/server/utils/AnrTimer;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public constructor <init>(ILcom/android/server/am/ActivityManagerService;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/am/ActiveServices$ProcessAnrTimer;->$r8$classId:I

    .line 2
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 3
    new-instance v0, Lcom/android/server/utils/AnrTimer$Args;

    invoke-direct {v0}, Lcom/android/server/utils/AnrTimer$Args;-><init>()V

    invoke-direct {p0, p2, p1, p3, v0}, Lcom/android/server/utils/AnrTimer;-><init>(Landroid/os/Handler;ILjava/lang/String;Lcom/android/server/utils/AnrTimer$Args;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Handler;ILjava/lang/String;Lcom/android/server/utils/AnrTimer$Args;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ActiveServices$ProcessAnrTimer;->$r8$classId:I

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/utils/AnrTimer;-><init>(Landroid/os/Handler;ILjava/lang/String;Lcom/android/server/utils/AnrTimer$Args;)V

    return-void
.end method


# virtual methods
.method public final getPid(Ljava/lang/Object;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/am/ActiveServices$ProcessAnrTimer;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lcom/android/server/am/ServiceRecord;

    .line 7
    .line 8
    iget-object p0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    iget p0, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0

    .line 17
    :pswitch_0
    check-cast p1, Lcom/android/server/am/ProcessRecord;

    .line 18
    .line 19
    iget p0, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 20
    .line 21
    return p0

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getUid(Ljava/lang/Object;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/am/ActiveServices$ProcessAnrTimer;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lcom/android/server/am/ServiceRecord;

    .line 7
    .line 8
    iget-object p0, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0

    .line 17
    :pswitch_0
    check-cast p1, Lcom/android/server/am/ProcessRecord;

    .line 18
    .line 19
    iget p0, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 20
    .line 21
    return p0

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
