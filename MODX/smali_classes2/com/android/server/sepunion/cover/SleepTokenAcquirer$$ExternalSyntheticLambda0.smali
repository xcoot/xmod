.class public final synthetic Lcom/android/server/sepunion/cover/SleepTokenAcquirer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/sepunion/cover/SleepTokenAcquirer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/sepunion/cover/SleepTokenAcquirer;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/sepunion/cover/SleepTokenAcquirer$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/sepunion/cover/SleepTokenAcquirer$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/sepunion/cover/SleepTokenAcquirer;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/sepunion/cover/SleepTokenAcquirer$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/sepunion/cover/SleepTokenAcquirer$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/sepunion/cover/SleepTokenAcquirer;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;->mSwitchState:Z

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;->mIsCoverAppCovered:Z

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;->getSleepTokenAcquirer()Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    const-string v0, "acquireSleepToken 0"

    .line 23
    .line 24
    const-string v1, "CoverManager_SleepTokenAcquirer"

    .line 25
    .line 26
    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;->acquire(IZ)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void

    .line 34
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;->mSwitchState:Z

    .line 35
    .line 36
    iget-object v1, p0, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;->mHandler:Landroid/os/Handler;

    .line 37
    .line 38
    iget-object v2, p0, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;->mDefaultSleepToken:Lcom/android/server/sepunion/cover/SleepTokenAcquirer$$ExternalSyntheticLambda0;

    .line 39
    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;->mIsCoverAppCovered:Z

    .line 43
    .line 44
    if-nez v0, :cond_1

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 47
    .line 48
    .line 49
    const-wide/16 v3, 0xc8

    .line 50
    .line 51
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;->getSleepTokenAcquirer()Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    if-eqz p0, :cond_3

    .line 70
    .line 71
    const-string/jumbo v0, "releaseSleepToken 0"

    .line 72
    .line 73
    .line 74
    const-string v1, "CoverManager_SleepTokenAcquirer"

    .line 75
    .line 76
    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    const/4 v0, 0x0

    .line 80
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;->release(I)V

    .line 81
    .line 82
    .line 83
    :cond_3
    :goto_0
    return-void

    .line 84
    nop

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
