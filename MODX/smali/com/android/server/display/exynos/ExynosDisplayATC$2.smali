.class public final Lcom/android/server/display/exynos/ExynosDisplayATC$2;
.super Landroid/os/CountDownTimer;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;


# direct methods
.method public constructor <init>(Lcom/android/server/display/exynos/ExynosDisplayATC;JJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC$2;->this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 3
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 6
    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC$2;->this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 3
    iget-object v0, v0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHandler:Lcom/android/server/display/exynos/ExynosDisplayATC$1;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC$2;->this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 13
    iget-object v1, v0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    .line 15
    const-string/jumbo v2, "dim_status"

    .line 18
    invoke-virtual {v1, v2}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    invoke-static {v1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    const/4 v2, 0x0

    .line 27
    if-nez v1, :cond_1

    .line 29
    iput v2, v0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mDimOperating:I

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 35
    move-result v1

    .line 36
    iput v1, v0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mDimOperating:I

    .line 38
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC$2;->this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 40
    iget v1, v0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mDimOperating:I

    .line 42
    const-string v3, "ExynosDisplayATC"

    .line 44
    if-eqz v1, :cond_3

    .line 46
    iget v1, v0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mCountDownTimerCount:I

    .line 48
    iget v4, v0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mMaxCountDownTimerCount:I

    .line 50
    if-ge v1, v4, :cond_3

    .line 52
    iget-boolean v0, v0, Lcom/android/server/display/exynos/ExynosDisplayATC;->DEBUG:Z

    .line 54
    if-eqz v0, :cond_2

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    .line 58
    const-string v1, "Restart Refresh Timer as dimming started: "

    .line 60
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC$2;->this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 65
    iget v1, v1, Lcom/android/server/display/exynos/ExynosDisplayATC;->mCountDownTimerCount:I

    .line 67
    invoke-static {v0, v1, v3}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 70
    :cond_2
    invoke-virtual {p0}, Landroid/os/CountDownTimer;->cancel()V

    .line 73
    invoke-virtual {p0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 76
    goto :goto_1

    .line 77
    :cond_3
    iput v2, v0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mCountDownTimerCount:I

    .line 79
    iget-object v0, v0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHandler:Lcom/android/server/display/exynos/ExynosDisplayATC$1;

    .line 81
    if-eqz v0, :cond_4

    .line 83
    const/4 v1, 0x6

    .line 84
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 87
    :cond_4
    sget-boolean v0, Lcom/android/server/display/exynos/ExynosDisplayATC;->TUNE_MODE:Z

    .line 89
    if-eqz v0, :cond_5

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    .line 93
    const-string v1, "Finished Refresh Timer interval: "

    .line 95
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC$2;->this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 100
    iget v1, v1, Lcom/android/server/display/exynos/ExynosDisplayATC;->mIntervalMs:I

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    const-string v1, ", timeout: "

    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC$2;->this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 112
    iget p0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mTimeoutMs:I

    .line 114
    invoke-static {v0, p0, v3}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 117
    :cond_5
    :goto_1
    return-void
.end method

.method public final onTick(J)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC$2;->this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 3
    iget p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mCountDownTimerCount:I

    .line 5
    const/4 p2, 0x1

    .line 6
    add-int/2addr p1, p2

    .line 7
    iput p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mCountDownTimerCount:I

    .line 9
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHandler:Lcom/android/server/display/exynos/ExynosDisplayATC$1;

    .line 11
    if-eqz p0, :cond_0

    .line 13
    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 16
    :cond_0
    return-void
.end method
