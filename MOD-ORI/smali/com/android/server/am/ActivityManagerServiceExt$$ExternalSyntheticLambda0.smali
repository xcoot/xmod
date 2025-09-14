.class public final synthetic Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/am/ActivityManagerServiceExt;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ActivityManagerServiceExt;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/ActivityManagerServiceExt;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/ActivityManagerServiceExt;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Ljava/lang/String;

    .line 11
    .line 12
    check-cast p1, Lcom/android/server/am/ProcessRecord;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    .line 18
    .line 19
    invoke-virtual {v1, p0}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    iput-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->mDedicated:Z

    .line 27
    .line 28
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveCallbacks:Ljava/util/ArrayList;

    .line 29
    .line 30
    new-instance v2, Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;

    .line 31
    .line 32
    invoke-direct {v2, p1, p0}, Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;-><init>(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mCb4Process:Ljava/util/Optional;

    .line 39
    .line 40
    new-instance v2, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda1;

    .line 41
    .line 42
    const/4 v3, 0x1

    .line 43
    invoke-direct {v2, v0, p0, p1, v3}, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/ActivityManagerServiceExt;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    return-void

    .line 50
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/ActivityManagerServiceExt;

    .line 51
    .line 52
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast p0, Lcom/android/server/am/ProcessRecord;

    .line 55
    .line 56
    check-cast p1, Landroid/os/RemoteCallback;

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 62
    .line 63
    iget p0, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 64
    .line 65
    const/4 v1, 0x1

    .line 66
    invoke-static {p1, v1, v0, p0}, Lcom/android/server/am/ActivityManagerServiceExt;->updateNeverKill(Landroid/os/RemoteCallback;ZLjava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/ActivityManagerServiceExt;

    .line 71
    .line 72
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast p0, Lcom/android/server/am/ProcessRecord;

    .line 75
    .line 76
    check-cast p1, Landroid/os/RemoteCallback;

    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 82
    .line 83
    iget p0, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 84
    .line 85
    const/4 v1, 0x1

    .line 86
    invoke-static {p1, v1, v0, p0}, Lcom/android/server/am/ActivityManagerServiceExt;->updateNeverKill(Landroid/os/RemoteCallback;ZLjava/lang/String;I)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    nop

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
