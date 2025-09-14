.class public final Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$1;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$1;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Landroid/view/accessibility/AccessibilityEvent;

    .line 6
    .line 7
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    move p1, v2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$1;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    .line 16
    .line 17
    const-string v3, "Error during sending "

    .line 18
    .line 19
    iget-object v4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-enter v4

    .line 22
    :try_start_0
    iget-object v5, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 23
    .line 24
    if-nez v5, :cond_1

    .line 25
    .line 26
    monitor-exit v4

    .line 27
    goto/16 :goto_5

    .line 28
    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto/16 :goto_7

    .line 31
    .line 32
    :cond_1
    if-nez v1, :cond_3

    .line 33
    .line 34
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPendingEvents:Landroid/util/SparseArray;

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Landroid/view/accessibility/AccessibilityEvent;

    .line 41
    .line 42
    if-nez v1, :cond_2

    .line 43
    .line 44
    monitor-exit v4

    .line 45
    goto :goto_5

    .line 46
    :cond_2
    iget-object v6, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPendingEvents:Landroid/util/SparseArray;

    .line 47
    .line 48
    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 49
    .line 50
    .line 51
    :cond_3
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getCapabilities()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    and-int/2addr v0, v2

    .line 61
    if-eqz v0, :cond_4

    .line 62
    .line 63
    iget v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    .line 64
    .line 65
    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setConnectionId(I)V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_4
    const/4 v0, 0x0

    .line 70
    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    .line 71
    .line 72
    .line 73
    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setSealed(Z)V

    .line 74
    .line 75
    .line 76
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcClientTracingEnabled()Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_5

    .line 82
    .line 83
    const-string/jumbo v0, "onAccessibilityEvent"

    .line 84
    .line 85
    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v4, ";"

    .line 95
    .line 96
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {p0, v0, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    goto :goto_2

    .line 110
    :catchall_1
    move-exception p0

    .line 111
    goto :goto_6

    .line 112
    :catch_0
    move-exception p0

    .line 113
    goto :goto_4

    .line 114
    :cond_5
    :goto_2
    invoke-interface {v5, v1, p1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 115
    .line 116
    .line 117
    :goto_3
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 118
    .line 119
    .line 120
    goto :goto_5

    .line 121
    :goto_4
    :try_start_2
    const-string p1, "AbstractAccessibilityServiceConnection"

    .line 122
    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string v2, " to "

    .line 132
    .line 133
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 144
    .line 145
    .line 146
    goto :goto_3

    .line 147
    :goto_5
    return-void

    .line 148
    :goto_6
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 149
    .line 150
    .line 151
    throw p0

    .line 152
    :goto_7
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 153
    throw p0
.end method
