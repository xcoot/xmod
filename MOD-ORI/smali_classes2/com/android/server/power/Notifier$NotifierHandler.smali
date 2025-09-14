.class public final Lcom/android/server/power/Notifier$NotifierHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/Notifier;


# direct methods
.method public constructor <init>(Lcom/android/server/power/Notifier;Landroid/os/Looper;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/server/power/Notifier$NotifierHandler;->this$0:Lcom/android/server/power/Notifier;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto/16 :goto_3

    .line 9
    .line 10
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/power/Notifier$NotifierHandler;->this$0:Lcom/android/server/power/Notifier;

    .line 11
    .line 12
    sget-object p1, Lcom/android/server/power/Notifier;->CHARGING_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    goto/16 :goto_3

    .line 18
    .line 19
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/power/Notifier$NotifierHandler;->this$0:Lcom/android/server/power/Notifier;

    .line 20
    .line 21
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 22
    .line 23
    sget-object v0, Lcom/android/server/power/Notifier;->CHARGING_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

    .line 24
    .line 25
    invoke-virtual {p0, p1, v2}, Lcom/android/server/power/Notifier;->playChargingStartedFeedback(IZ)V

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->release()V

    .line 31
    .line 32
    .line 33
    goto/16 :goto_3

    .line 34
    .line 35
    :pswitch_2
    iget-object p0, p0, Lcom/android/server/power/Notifier$NotifierHandler;->this$0:Lcom/android/server/power/Notifier;

    .line 36
    .line 37
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mTrustManager:Landroid/app/trust/TrustManager;

    .line 40
    .line 41
    invoke-virtual {p0, p1, v1}, Landroid/app/trust/TrustManager;->setDeviceLockedForUser(IZ)V

    .line 42
    .line 43
    .line 44
    goto/16 :goto_3

    .line 45
    .line 46
    :pswitch_3
    const/4 p1, 0x4

    .line 47
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 48
    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/server/power/Notifier$NotifierHandler;->this$0:Lcom/android/server/power/Notifier;

    .line 51
    .line 52
    sget-object p1, Lcom/android/server/power/Notifier;->CHARGING_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    new-instance p1, Landroid/content/Intent;

    .line 58
    .line 59
    const-string v0, "android.os.action.ENHANCED_DISCHARGE_PREDICTION_CHANGED"

    .line 60
    .line 61
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const/high16 v0, 0x40000000    # 2.0f

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    .line 71
    .line 72
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 73
    .line 74
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 75
    .line 76
    .line 77
    goto/16 :goto_3

    .line 78
    .line 79
    :pswitch_4
    iget-object p0, p0, Lcom/android/server/power/Notifier$NotifierHandler;->this$0:Lcom/android/server/power/Notifier;

    .line 80
    .line 81
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 82
    .line 83
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 84
    .line 85
    sget-object v2, Lcom/android/server/power/Notifier;->CHARGING_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

    .line 86
    .line 87
    invoke-virtual {p0, p1, v1}, Lcom/android/server/power/Notifier;->playChargingStartedFeedback(IZ)V

    .line 88
    .line 89
    .line 90
    iget-boolean p1, p0, Lcom/android/server/power/Notifier;->mShowWirelessChargingAnimationConfig:Z

    .line 91
    .line 92
    if-eqz p1, :cond_0

    .line 93
    .line 94
    iget-object p1, p0, Lcom/android/server/power/Notifier;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 95
    .line 96
    if-eqz p1, :cond_0

    .line 97
    .line 98
    check-cast p1, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 99
    .line 100
    iget-object p1, p1, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 101
    .line 102
    iget-object p1, p1, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 103
    .line 104
    if-eqz p1, :cond_0

    .line 105
    .line 106
    :try_start_0
    invoke-interface {p1, v0}, Lcom/android/internal/statusbar/IStatusBar;->showWirelessChargingAnimation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .line 108
    .line 109
    :catch_0
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;

    .line 110
    .line 111
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->release()V

    .line 112
    .line 113
    .line 114
    goto/16 :goto_3

    .line 115
    .line 116
    :pswitch_5
    iget-object p0, p0, Lcom/android/server/power/Notifier$NotifierHandler;->this$0:Lcom/android/server/power/Notifier;

    .line 117
    .line 118
    sget-object p1, Lcom/android/server/power/Notifier;->CHARGING_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

    .line 119
    .line 120
    invoke-virtual {p0}, Lcom/android/server/power/Notifier;->sendNextBroadcast()V

    .line 121
    .line 122
    .line 123
    goto :goto_3

    .line 124
    :pswitch_6
    iget-object p0, p0, Lcom/android/server/power/Notifier$NotifierHandler;->this$0:Lcom/android/server/power/Notifier;

    .line 125
    .line 126
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 127
    .line 128
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 129
    .line 130
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    .line 131
    .line 132
    monitor-enter v1

    .line 133
    :try_start_1
    iget-boolean v3, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    .line 134
    .line 135
    if-nez v3, :cond_1

    .line 136
    .line 137
    monitor-exit v1

    .line 138
    goto :goto_3

    .line 139
    :catchall_0
    move-exception p0

    .line 140
    goto :goto_5

    .line 141
    :cond_1
    iput-boolean v2, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    .line 142
    .line 143
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    .line 145
    .line 146
    const-class v2, Landroid/telephony/TelephonyManager;

    .line 147
    .line 148
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 153
    .line 154
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->notifyUserActivity()V

    .line 155
    .line 156
    .line 157
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    .line 158
    .line 159
    iget-object v1, v1, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    .line 160
    .line 161
    iget-object v1, v1, Lcom/android/server/input/InputManagerService;->mKeyboardBacklightController:Lcom/android/server/input/InputManagerService$KeyboardBacklightControllerInterface;

    .line 162
    .line 163
    invoke-interface {v1}, Lcom/android/server/input/InputManagerService$KeyboardBacklightControllerInterface;->notifyUserActivity()V

    .line 164
    .line 165
    .line 166
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 167
    .line 168
    check-cast p0, Lcom/android/server/policy/PhoneWindowManager;

    .line 169
    .line 170
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    .line 172
    .line 173
    if-nez v0, :cond_4

    .line 174
    .line 175
    const/4 v0, 0x2

    .line 176
    if-ne p1, v0, :cond_4

    .line 177
    .line 178
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 179
    .line 180
    iget-boolean v0, p1, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    .line 181
    .line 182
    if-eqz v0, :cond_2

    .line 183
    .line 184
    goto :goto_1

    .line 185
    :cond_2
    iget-object v0, p1, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    .line 186
    .line 187
    iget-object p1, p1, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 188
    .line 189
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 190
    .line 191
    if-eqz v0, :cond_3

    .line 192
    .line 193
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    .line 194
    .line 195
    iget-object v0, v0, Lcom/android/server/wm/Session;->mProcess:Lcom/android/server/wm/WindowProcessController;

    .line 196
    .line 197
    goto :goto_0

    .line 198
    :cond_3
    const/4 v0, 0x0

    .line 199
    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->setProcessAnimatingWhileDozing(Lcom/android/server/wm/WindowProcessController;)V

    .line 200
    .line 201
    .line 202
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    .line 203
    .line 204
    monitor-enter p1

    .line 205
    :try_start_2
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z

    .line 206
    .line 207
    if-eqz v0, :cond_5

    .line 208
    .line 209
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 210
    .line 211
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    .line 212
    .line 213
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 214
    .line 215
    .line 216
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 217
    .line 218
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    .line 219
    .line 220
    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    .line 221
    .line 222
    int-to-long v2, p0

    .line 223
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 224
    .line 225
    .line 226
    goto :goto_2

    .line 227
    :catchall_1
    move-exception p0

    .line 228
    goto :goto_4

    .line 229
    :cond_5
    :goto_2
    monitor-exit p1

    .line 230
    :goto_3
    return-void

    .line 231
    :goto_4
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 232
    throw p0

    .line 233
    :goto_5
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 234
    throw p0

    .line 235
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
