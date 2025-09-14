.class public final synthetic Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda38;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda38;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda38;->$r8$classId:I

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 4
    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object p0, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter p0

    .line 11
    const/4 v0, 0x0

    .line 12
    :try_start_0
    iput-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputBound:Z

    .line 13
    .line 14
    iget v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    add-int/lit8 v0, v0, -0x1

    .line 27
    .line 28
    :goto_0
    if-ltz v0, :cond_1

    .line 29
    .line 30
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 37
    .line 38
    iget-boolean v2, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestImeApis:Z

    .line 39
    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    iget-object v1, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    .line 43
    .line 44
    const/16 v2, 0xd

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 51
    .line 52
    .line 53
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception p1

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    monitor-exit p0

    .line 59
    return-void

    .line 60
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    throw p1

    .line 62
    :pswitch_0
    iget-object p0, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 63
    .line 64
    monitor-enter p0

    .line 65
    const/4 v0, 0x1

    .line 66
    :try_start_1
    iput-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputBound:Z

    .line 67
    .line 68
    iget v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 69
    .line 70
    invoke-virtual {p1, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    sub-int/2addr v1, v0

    .line 81
    :goto_2
    if-ltz v1, :cond_3

    .line 82
    .line 83
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 90
    .line 91
    iget-boolean v2, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestImeApis:Z

    .line 92
    .line 93
    if-eqz v2, :cond_2

    .line 94
    .line 95
    iget-object v0, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    .line 96
    .line 97
    const/16 v2, 0xc

    .line 98
    .line 99
    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 104
    .line 105
    .line 106
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :catchall_1
    move-exception p1

    .line 110
    goto :goto_3

    .line 111
    :cond_3
    monitor-exit p0

    .line 112
    return-void

    .line 113
    :goto_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 114
    throw p1

    .line 115
    :pswitch_1
    iget-object p0, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 116
    .line 117
    monitor-enter p0

    .line 118
    :try_start_2
    iget v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 119
    .line 120
    invoke-virtual {p1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityUserState;->isHandlingAccessibilityEventsLocked()Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-eqz v0, :cond_4

    .line 129
    .line 130
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 131
    .line 132
    const-string/jumbo v1, "user"

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    check-cast v0, Landroid/os/UserManager;

    .line 140
    .line 141
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 142
    .line 143
    iget v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 144
    .line 145
    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    iget-object v0, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 150
    .line 151
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    const v2, 0x1040ffd

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    const/16 v1, 0x4000

    .line 163
    .line 164
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    iget v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 176
    .line 177
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 178
    .line 179
    .line 180
    move-result-wide v2

    .line 181
    invoke-virtual {v1, v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setEventTime(J)V

    .line 182
    .line 183
    .line 184
    iget-object v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    .line 185
    .line 186
    new-instance v3, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda12;

    .line 187
    .line 188
    const/4 v4, 0x5

    .line 189
    invoke-direct {v3, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda12;-><init>(I)V

    .line 190
    .line 191
    .line 192
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-static {v3, p1, v1, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-virtual {v2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 201
    .line 202
    .line 203
    goto :goto_4

    .line 204
    :catchall_2
    move-exception p1

    .line 205
    goto :goto_5

    .line 206
    :cond_4
    :goto_4
    monitor-exit p0

    .line 207
    return-void

    .line 208
    :goto_5
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 209
    throw p1

    .line 210
    nop

    .line 211
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
