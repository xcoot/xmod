.class public final Lcom/android/server/policy/PhoneWindowManager$13;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/PhoneWindowManager;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager$13;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$13;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 1
    iget p1, p0, Lcom/android/server/policy/PhoneWindowManager$13;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string p1, "android.intent.action.USER_SWITCHED"

    .line 7
    .line 8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_3

    .line 17
    .line 18
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$13;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p1, v0}, Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;->onChange(Z)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$13;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 27
    .line 28
    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->updateSettings()V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$13;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 34
    .line 35
    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 36
    .line 37
    const-string v1, "android.intent.extra.user_handle"

    .line 38
    .line 39
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    iget-object v1, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 44
    .line 45
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerServiceExt;->mScreenshotController:Lcom/android/server/wm/WmScreenshotController;

    .line 46
    .line 47
    iget-object v2, v1, Lcom/android/server/wm/WmScreenshotController;->mScreenshotLock:Ljava/lang/Object;

    .line 48
    .line 49
    monitor-enter v2

    .line 50
    :try_start_0
    iget-object v3, v1, Lcom/android/server/wm/WmScreenshotController;->mScreenshotConnections:Ljava/util/HashMap;

    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-nez v3, :cond_1

    .line 57
    .line 58
    iget-object v3, v1, Lcom/android/server/wm/WmScreenshotController;->mScreenshotConnections:Ljava/util/HashMap;

    .line 59
    .line 60
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-eqz v4, :cond_0

    .line 73
    .line 74
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    check-cast v4, Landroid/content/ServiceConnection;

    .line 79
    .line 80
    invoke-virtual {v1, v4, v0}, Lcom/android/server/wm/WmScreenshotController;->resetConnection(Landroid/content/ServiceConnection;Z)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :catchall_0
    move-exception p0

    .line 85
    goto :goto_1

    .line 86
    :cond_0
    iget-object v1, v1, Lcom/android/server/wm/WmScreenshotController;->mScreenshotConnections:Ljava/util/HashMap;

    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 89
    .line 90
    .line 91
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    iget-object v1, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

    .line 93
    .line 94
    new-instance v2, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda9;

    .line 95
    .line 96
    const/4 v3, 0x0

    .line 97
    invoke-direct {v2, p1, p2, v3}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;II)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 101
    .line 102
    .line 103
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$13;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 104
    .line 105
    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 106
    .line 107
    iget-object p1, p1, Lcom/android/server/wm/DisplayRotation;->mSettingsObserver:Lcom/android/server/wm/DisplayRotation$SettingsObserver;

    .line 108
    .line 109
    if-eqz p1, :cond_2

    .line 110
    .line 111
    invoke-virtual {p1, v0}, Lcom/android/server/wm/DisplayRotation$SettingsObserver;->onChange(Z)V

    .line 112
    .line 113
    .line 114
    :cond_2
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$13;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 115
    .line 116
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 117
    .line 118
    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->onUserSwitched()V

    .line 119
    .line 120
    .line 121
    goto :goto_2

    .line 122
    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    throw p0

    .line 124
    :cond_3
    :goto_2
    return-void

    .line 125
    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    const-string v0, "android.intent.action.DOCK_EVENT"

    .line 130
    .line 131
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    const/4 v0, 0x0

    .line 136
    if-eqz p1, :cond_4

    .line 137
    .line 138
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$13;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 139
    .line 140
    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 141
    .line 142
    const-string v1, "android.intent.extra.DOCK_STATE"

    .line 143
    .line 144
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 145
    .line 146
    .line 147
    move-result p2

    .line 148
    iput p2, p1, Lcom/android/server/wm/DisplayPolicy;->mDockMode:I

    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_4
    :try_start_2
    const-string/jumbo p1, "uimode"

    .line 152
    .line 153
    .line 154
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-static {p1}, Landroid/app/IUiModeManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiModeManager;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager$13;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 163
    .line 164
    invoke-interface {p1}, Landroid/app/IUiModeManager;->getCurrentModeType()I

    .line 165
    .line 166
    .line 167
    move-result p1

    .line 168
    iput p1, p2, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 169
    .line 170
    :catch_0
    :goto_3
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$13;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 171
    .line 172
    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 173
    .line 174
    const/4 p2, 0x1

    .line 175
    invoke-interface {p1, p2, v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->updateRotation(ZZ)V

    .line 176
    .line 177
    .line 178
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$13;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 179
    .line 180
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 181
    .line 182
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListener()V

    .line 183
    .line 184
    .line 185
    return-void

    .line 186
    nop

    .line 187
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
