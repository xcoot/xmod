.class public final Lcom/android/server/accessibility/KeyboardInterceptor;
.super Lcom/android/server/accessibility/BaseEventStreamTransformation;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field public mEventQueueEnd:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

.field public mEventQueueStart:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

.field public final mHandler:Landroid/os/Handler;

.field public final mPolicy:Lcom/android/server/policy/WindowManagerPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/policy/WindowManagerPolicy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 7
    .line 8
    new-instance p1, Landroid/os/Handler;

    .line 9
    .line 10
    invoke-direct {p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mHandler:Landroid/os/Handler;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 11

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const-string v0, "KeyboardInterceptor"

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq p1, v2, :cond_0

    .line 8
    .line 9
    const-string p0, "Unexpected message type"

    .line 10
    .line 11
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v3

    .line 19
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueEnd:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    .line 20
    .line 21
    if-eqz p1, :cond_6

    .line 22
    .line 23
    iget-wide v5, p1, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->dispatchTime:J

    .line 24
    .line 25
    cmp-long v5, v5, v3

    .line 26
    .line 27
    if-gtz v5, :cond_6

    .line 28
    .line 29
    iget-object v5, p1, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->event:Landroid/view/KeyEvent;

    .line 30
    .line 31
    iget p1, p1, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->policyFlags:I

    .line 32
    .line 33
    invoke-virtual {v5}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    const/16 v7, 0x19

    .line 38
    .line 39
    const/4 v8, 0x0

    .line 40
    const-wide/16 v9, 0x0

    .line 41
    .line 42
    if-eq v6, v7, :cond_3

    .line 43
    .line 44
    const/16 v7, 0x18

    .line 45
    .line 46
    if-ne v6, v7, :cond_2

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    move-wide v5, v9

    .line 50
    goto :goto_2

    .line 51
    :cond_3
    :goto_1
    iget-object v6, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 52
    .line 53
    check-cast v6, Lcom/android/server/policy/PhoneWindowManager;

    .line 54
    .line 55
    invoke-virtual {v6, v8, v5, p1}, Lcom/android/server/policy/PhoneWindowManager;->interceptKeyBeforeDispatching(Landroid/os/IBinder;Landroid/view/KeyEvent;I)J

    .line 56
    .line 57
    .line 58
    move-result-wide v5

    .line 59
    :goto_2
    cmp-long p1, v5, v9

    .line 60
    .line 61
    if-lez p1, :cond_4

    .line 62
    .line 63
    iget-object p1, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueEnd:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    .line 64
    .line 65
    add-long/2addr v3, v5

    .line 66
    iput-wide v3, p1, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->dispatchTime:J

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_4
    if-nez p1, :cond_5

    .line 70
    .line 71
    iget-object p1, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 72
    .line 73
    iget-object v5, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueEnd:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    .line 74
    .line 75
    iget-object v6, v5, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->event:Landroid/view/KeyEvent;

    .line 76
    .line 77
    iget v5, v5, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->policyFlags:I

    .line 78
    .line 79
    invoke-virtual {p1, v6, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyKeyEvent(Landroid/view/KeyEvent;I)Z

    .line 80
    .line 81
    .line 82
    :cond_5
    iget-object p1, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueEnd:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    .line 83
    .line 84
    iget-object v5, p1, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->previous:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    .line 85
    .line 86
    iput-object v5, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueEnd:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    .line 87
    .line 88
    iget-object v5, p1, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->event:Landroid/view/KeyEvent;

    .line 89
    .line 90
    invoke-virtual {v5}, Landroid/view/KeyEvent;->recycle()V

    .line 91
    .line 92
    .line 93
    iput-object v8, p1, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->event:Landroid/view/KeyEvent;

    .line 94
    .line 95
    iput v1, p1, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->policyFlags:I

    .line 96
    .line 97
    iput-wide v9, p1, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->dispatchTime:J

    .line 98
    .line 99
    iput-object v8, p1, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->previous:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    .line 100
    .line 101
    sget-object v5, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->sPool:Landroid/util/Pools$SimplePool;

    .line 102
    .line 103
    invoke-virtual {v5, p1}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    iget-object p1, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueEnd:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    .line 107
    .line 108
    if-nez p1, :cond_1

    .line 109
    .line 110
    iput-object v8, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueStart:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_6
    :goto_3
    iget-object p1, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueStart:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    .line 114
    .line 115
    if-eqz p1, :cond_7

    .line 116
    .line 117
    iget-object p1, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mHandler:Landroid/os/Handler;

    .line 118
    .line 119
    iget-object p0, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueEnd:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    .line 120
    .line 121
    iget-wide v3, p0, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->dispatchTime:J

    .line 122
    .line 123
    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 124
    .line 125
    .line 126
    move-result p0

    .line 127
    if-nez p0, :cond_7

    .line 128
    .line 129
    const-string p0, "Failed to schedule key event"

    .line 130
    .line 131
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    :cond_7
    return v2
.end method

.method public final onKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 4
    .line 5
    const-wide/16 v1, 0x1000

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 16
    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string/jumbo v4, "event="

    .line 20
    .line 21
    .line 22
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v4, ";policyFlags="

    .line 29
    .line 30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    const-string v4, "KeyboardInterceptor.onKeyEvent"

    .line 41
    .line 42
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    const/16 v1, 0x19

    .line 50
    .line 51
    const-wide/16 v2, 0x0

    .line 52
    .line 53
    if-eq v0, v1, :cond_2

    .line 54
    .line 55
    const/16 v1, 0x18

    .line 56
    .line 57
    if-ne v0, v1, :cond_1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    move-wide v0, v2

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 63
    .line 64
    const/4 v1, 0x0

    .line 65
    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    .line 66
    .line 67
    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->interceptKeyBeforeDispatching(Landroid/os/IBinder;Landroid/view/KeyEvent;I)J

    .line 68
    .line 69
    .line 70
    move-result-wide v0

    .line 71
    :goto_1
    cmp-long v2, v0, v2

    .line 72
    .line 73
    if-gez v2, :cond_3

    .line 74
    .line 75
    return-void

    .line 76
    :cond_3
    if-gtz v2, :cond_5

    .line 77
    .line 78
    iget-object v2, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueStart:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    .line 79
    .line 80
    if-eqz v2, :cond_4

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_4
    iget-object p0, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 84
    .line 85
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyKeyEvent(Landroid/view/KeyEvent;I)Z

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :cond_5
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 90
    .line 91
    .line 92
    move-result-wide v2

    .line 93
    add-long/2addr v2, v0

    .line 94
    iget-object v0, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueStart:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    .line 95
    .line 96
    if-nez v0, :cond_7

    .line 97
    .line 98
    sget-object v0, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->sPool:Landroid/util/Pools$SimplePool;

    .line 99
    .line 100
    invoke-virtual {v0}, Landroid/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    check-cast v0, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    .line 105
    .line 106
    if-nez v0, :cond_6

    .line 107
    .line 108
    new-instance v0, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    .line 109
    .line 110
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 111
    .line 112
    .line 113
    :cond_6
    invoke-static {p1}, Landroid/view/KeyEvent;->obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    iput-object p1, v0, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->event:Landroid/view/KeyEvent;

    .line 118
    .line 119
    iput p2, v0, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->policyFlags:I

    .line 120
    .line 121
    iput-wide v2, v0, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->dispatchTime:J

    .line 122
    .line 123
    iput-object v0, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueStart:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    .line 124
    .line 125
    iput-object v0, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueEnd:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    .line 126
    .line 127
    iget-object p0, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mHandler:Landroid/os/Handler;

    .line 128
    .line 129
    const/4 p1, 0x1

    .line 130
    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 131
    .line 132
    .line 133
    move-result p0

    .line 134
    if-nez p0, :cond_9

    .line 135
    .line 136
    const-string p0, "KeyboardInterceptor"

    .line 137
    .line 138
    const-string p1, "Failed to schedule key event"

    .line 139
    .line 140
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_7
    sget-object v0, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->sPool:Landroid/util/Pools$SimplePool;

    .line 145
    .line 146
    invoke-virtual {v0}, Landroid/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    check-cast v0, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    .line 151
    .line 152
    if-nez v0, :cond_8

    .line 153
    .line 154
    new-instance v0, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    .line 155
    .line 156
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 157
    .line 158
    .line 159
    :cond_8
    invoke-static {p1}, Landroid/view/KeyEvent;->obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    iput-object p1, v0, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->event:Landroid/view/KeyEvent;

    .line 164
    .line 165
    iput p2, v0, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->policyFlags:I

    .line 166
    .line 167
    iput-wide v2, v0, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->dispatchTime:J

    .line 168
    .line 169
    iget-object p1, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueStart:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    .line 170
    .line 171
    iput-object v0, p1, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->previous:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    .line 172
    .line 173
    iput-object v0, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueStart:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    .line 174
    .line 175
    :cond_9
    :goto_3
    return-void
.end method
