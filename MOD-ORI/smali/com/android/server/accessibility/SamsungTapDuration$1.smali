.class public final Lcom/android/server/accessibility/SamsungTapDuration$1;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/SamsungTapDuration;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/SamsungTapDuration;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTapDuration$1;->this$0:Lcom/android/server/accessibility/SamsungTapDuration;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p1, v0, :cond_3

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    move v0, p1

    .line 8
    :goto_0
    const/4 v1, 0x4

    .line 9
    const-string v2, "SamsungTapDuration"

    .line 10
    .line 11
    iget-object v3, p0, Lcom/android/server/accessibility/SamsungTapDuration$1;->this$0:Lcom/android/server/accessibility/SamsungTapDuration;

    .line 12
    .line 13
    if-ge v0, v1, :cond_2

    .line 14
    .line 15
    iget-object v1, v3, Lcom/android/server/accessibility/SamsungTapDuration;->mDurationProgress:[Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    .line 16
    .line 17
    aget-object v1, v1, v0

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    new-instance v4, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$$ExternalSyntheticLambda0;

    .line 25
    .line 26
    const/4 v5, 0x3

    .line 27
    invoke-direct {v4, v1, v5}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/SamsungTapDurationProgressUI;I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v4}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object v1, v3, Lcom/android/server/accessibility/SamsungTapDuration;->mDownEvent:[Landroid/view/MotionEvent;

    .line 34
    .line 35
    aget-object v1, v1, v0

    .line 36
    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 40
    .line 41
    .line 42
    move-result-wide v4

    .line 43
    invoke-virtual {v1, v4, v5}, Landroid/view/MotionEvent;->setDownTime(J)V

    .line 44
    .line 45
    .line 46
    :try_start_0
    iget-object v1, v3, Lcom/android/server/accessibility/SamsungTapDuration;->mDownEvent:[Landroid/view/MotionEvent;

    .line 47
    .line 48
    aget-object v1, v1, v0

    .line 49
    .line 50
    iget-object v4, v3, Lcom/android/server/accessibility/SamsungTapDuration;->mRawEvent:[Landroid/view/MotionEvent;

    .line 51
    .line 52
    aget-object v4, v4, v0

    .line 53
    .line 54
    iget-object v5, v3, Lcom/android/server/accessibility/SamsungTapDuration;->mPolicyFlags:[I

    .line 55
    .line 56
    aget v5, v5, v0

    .line 57
    .line 58
    invoke-virtual {v3, v1, v4, v5}, Lcom/android/server/accessibility/SamsungTapDuration;->onActionTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    .line 61
    :goto_1
    invoke-virtual {v3, v0}, Lcom/android/server/accessibility/SamsungTapDuration;->clearMotionEvents(I)V

    .line 62
    .line 63
    .line 64
    goto :goto_3

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    goto :goto_2

    .line 67
    :catch_0
    :try_start_1
    const-string/jumbo v1, "idBits did not match any ids in the event"

    .line 68
    .line 69
    .line 70
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :goto_2
    invoke-virtual {v3, v0}, Lcom/android/server/accessibility/SamsungTapDuration;->clearMotionEvents(I)V

    .line 75
    .line 76
    .line 77
    throw p0

    .line 78
    :cond_1
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    const-string p0, "Tap is valid"

    .line 82
    .line 83
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    iput-boolean p1, v3, Lcom/android/server/accessibility/SamsungTapDuration;->mHoldingState:Z

    .line 87
    .line 88
    return-void

    .line 89
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 90
    .line 91
    const-string v0, "Unkwown message type: "

    .line 92
    .line 93
    invoke-static {p1, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw p0
.end method
