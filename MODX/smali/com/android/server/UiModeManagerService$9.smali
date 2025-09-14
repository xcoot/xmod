.class public final Lcom/android/server/UiModeManagerService$9;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/UiModeManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/UiModeManagerService;Landroid/os/Handler;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/UiModeManagerService$9;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$9;->this$0:Lcom/android/server/UiModeManagerService;

    .line 5
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 8
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 4

    .line 1
    iget p2, p0, Lcom/android/server/UiModeManagerService$9;->$r8$classId:I

    .line 3
    packed-switch p2, :pswitch_data_0

    .line 6
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$9;->this$0:Lcom/android/server/UiModeManagerService;

    .line 8
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 15
    move-result-object p1

    .line 16
    const-string/jumbo p2, "shopdemo"

    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 23
    move-result p1

    .line 24
    const/4 p2, 0x1

    .line 25
    if-ne p1, p2, :cond_0

    .line 27
    move v0, p2

    .line 28
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mShopDemo:Z

    .line 30
    return-void

    .line 31
    :pswitch_0
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$9;->this$0:Lcom/android/server/UiModeManagerService;

    .line 33
    iget-object p1, p1, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    .line 35
    monitor-enter p1

    .line 36
    :try_start_0
    iget-object p2, p0, Lcom/android/server/UiModeManagerService$9;->this$0:Lcom/android/server/UiModeManagerService;

    .line 38
    invoke-virtual {p2}, Lcom/android/server/UiModeManagerService;->updateContrastLocked()Z

    .line 41
    move-result p2

    .line 42
    if-eqz p2, :cond_2

    .line 44
    iget-object p2, p0, Lcom/android/server/UiModeManagerService$9;->this$0:Lcom/android/server/UiModeManagerService;

    .line 46
    iget-object v0, p2, Lcom/android/server/UiModeManagerService;->mContrasts:Landroid/util/SparseArray;

    .line 48
    iget v1, p2, Lcom/android/server/UiModeManagerService;->mCurrentUser:I

    .line 50
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->contains(I)Z

    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_1

    .line 56
    invoke-virtual {p2}, Lcom/android/server/UiModeManagerService;->updateContrastLocked()Z

    .line 59
    :cond_1
    iget-object v0, p2, Lcom/android/server/UiModeManagerService;->mContrasts:Landroid/util/SparseArray;

    .line 61
    iget p2, p2, Lcom/android/server/UiModeManagerService;->mCurrentUser:I

    .line 63
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 66
    move-result-object p2

    .line 67
    check-cast p2, Ljava/lang/Float;

    .line 69
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 72
    move-result p2

    .line 73
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$9;->this$0:Lcom/android/server/UiModeManagerService;

    .line 75
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mUiModeManagerCallbacks:Landroid/util/SparseArray;

    .line 77
    iget p0, p0, Lcom/android/server/UiModeManagerService;->mCurrentUser:I

    .line 79
    new-instance v1, Landroid/os/RemoteCallbackList;

    .line 81
    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 84
    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 87
    move-result-object p0

    .line 88
    check-cast p0, Landroid/os/RemoteCallbackList;

    .line 90
    new-instance v0, Lcom/android/server/UiModeManagerService$11$$ExternalSyntheticLambda0;

    .line 92
    invoke-direct {v0, p2}, Lcom/android/server/UiModeManagerService$11$$ExternalSyntheticLambda0;-><init>(F)V

    .line 95
    invoke-static {v0}, Lcom/android/internal/util/FunctionalUtils;->ignoreRemoteException(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;)Ljava/util/function/Consumer;

    .line 98
    move-result-object p2

    .line 99
    invoke-virtual {p0, p2}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    .line 102
    goto :goto_0

    .line 103
    :catchall_0
    move-exception p0

    .line 104
    goto :goto_1

    .line 105
    :cond_2
    :goto_0
    monitor-exit p1

    .line 106
    return-void

    .line 107
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    throw p0

    .line 109
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$9;->this$0:Lcom/android/server/UiModeManagerService;

    .line 111
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->updateSystemProperties()V

    .line 114
    return-void

    .line 115
    :pswitch_2
    iget-object p2, p0, Lcom/android/server/UiModeManagerService$9;->this$0:Lcom/android/server/UiModeManagerService;

    .line 117
    iget-object p2, p2, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    .line 119
    monitor-enter p2

    .line 120
    :try_start_1
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$9;->this$0:Lcom/android/server/UiModeManagerService;

    .line 122
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 129
    move-result-object v0

    .line 130
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 133
    move-result v1

    .line 134
    const-string/jumbo v2, "user_setup_complete"

    .line 137
    const/4 v3, 0x0

    .line 138
    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 141
    move-result v0

    .line 142
    const/4 v1, 0x1

    .line 143
    if-ne v0, v1, :cond_3

    .line 145
    if-nez p1, :cond_3

    .line 147
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$9;->this$0:Lcom/android/server/UiModeManagerService;

    .line 149
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 155
    move-result-object p1

    .line 156
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 159
    move-result-object p1

    .line 160
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$9;->this$0:Lcom/android/server/UiModeManagerService;

    .line 162
    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mSetupWizardObserver:Lcom/android/server/UiModeManagerService$9;

    .line 164
    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 167
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$9;->this$0:Lcom/android/server/UiModeManagerService;

    .line 169
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 172
    move-result-object p1

    .line 173
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$9;->this$0:Lcom/android/server/UiModeManagerService;

    .line 175
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 178
    move-result-object v1

    .line 179
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 182
    move-result v2

    .line 183
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/UiModeManagerService;->updateNightModeFromSettingsLocked(Landroid/content/Context;Landroid/content/res/Resources;I)V

    .line 186
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$9;->this$0:Lcom/android/server/UiModeManagerService;

    .line 188
    invoke-virtual {p0, v3, v3}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 191
    goto :goto_2

    .line 192
    :catchall_1
    move-exception p0

    .line 193
    goto :goto_3

    .line 194
    :cond_3
    :goto_2
    monitor-exit p2

    .line 195
    return-void

    .line 196
    :goto_3
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 197
    throw p0

    .line 198
    nop

    .line 199
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
