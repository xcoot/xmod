.class public final synthetic Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget v2, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v2, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p0, Lcom/android/server/wm/WindowManagerService$LocalService;

    .line 11
    .line 12
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    sget v0, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->showToastIfBlockingScreenCapture(Lcom/android/server/wm/WindowState;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->sensitiveContentRecentsScreenshotBugfix()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mSensitiveContentPackages:Lcom/android/server/wm/SensitiveContentPackages;

    .line 44
    .line 45
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 46
    .line 47
    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 48
    .line 49
    iget v3, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    .line 50
    .line 51
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 52
    .line 53
    invoke-interface {v4}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {v1, v3, v4, v2}, Lcom/android/server/wm/SensitiveContentPackages;->shouldBlockScreenCaptureForApp(ILandroid/os/IBinder;Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_1

    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    .line 68
    .line 69
    iget v1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 70
    .line 71
    iget v2, p1, Lcom/android/server/wm/Task;->mUserId:I

    .line 72
    .line 73
    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/TaskSnapshotController;->removeAndDeleteSnapshot(II)V

    .line 74
    .line 75
    .line 76
    iget-object p0, p1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 77
    .line 78
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    .line 79
    .line 80
    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 81
    .line 82
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;

    .line 83
    .line 84
    const/16 v2, 0x1d

    .line 85
    .line 86
    invoke-virtual {v1, v2, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskSnapshotInvalidated:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 91
    .line 92
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 96
    .line 97
    .line 98
    :cond_1
    :goto_0
    return-void

    .line 99
    :pswitch_0
    check-cast p0, Landroid/util/ArraySet;

    .line 100
    .line 101
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 102
    .line 103
    sget v2, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    .line 104
    .line 105
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 106
    .line 107
    invoke-virtual {p0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    if-nez v2, :cond_4

    .line 112
    .line 113
    iget-boolean v2, p1, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    .line 114
    .line 115
    if-eqz v2, :cond_4

    .line 116
    .line 117
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->mCaptureCallbacks:Landroid/os/RemoteCallbackList;

    .line 118
    .line 119
    if-eqz v2, :cond_4

    .line 120
    .line 121
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    if-lez v2, :cond_4

    .line 126
    .line 127
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->mCaptureCallbacks:Landroid/os/RemoteCallbackList;

    .line 128
    .line 129
    if-eqz v2, :cond_3

    .line 130
    .line 131
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    :goto_1
    if-ge v0, v2, :cond_2

    .line 136
    .line 137
    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->mCaptureCallbacks:Landroid/os/RemoteCallbackList;

    .line 138
    .line 139
    invoke-virtual {v3, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    check-cast v3, Landroid/app/IScreenCaptureObserver;

    .line 144
    .line 145
    :try_start_0
    invoke-interface {v3}, Landroid/app/IScreenCaptureObserver;->onScreenCaptured()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .line 147
    .line 148
    :catch_0
    add-int/2addr v0, v1

    .line 149
    goto :goto_1

    .line 150
    :cond_2
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mCaptureCallbacks:Landroid/os/RemoteCallbackList;

    .line 151
    .line 152
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 153
    .line 154
    .line 155
    :cond_3
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 156
    .line 157
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    :cond_4
    return-void

    .line 161
    :pswitch_1
    check-cast p0, Landroid/view/SurfaceControl$Transaction;

    .line 162
    .line 163
    check-cast p1, Lcom/android/server/wm/DisplayContent;

    .line 164
    .line 165
    sget v2, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    .line 166
    .line 167
    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    .line 168
    .line 169
    iget-object v2, p1, Lcom/android/server/wm/InputMonitor;->mHandler:Landroid/os/Handler;

    .line 170
    .line 171
    iget-object v3, p1, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindows:Lcom/android/server/wm/InputMonitor$UpdateInputWindows;

    .line 172
    .line 173
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 174
    .line 175
    .line 176
    iput-boolean v1, p1, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsImmediately:Z

    .line 177
    .line 178
    invoke-virtual {v3}, Lcom/android/server/wm/InputMonitor$UpdateInputWindows;->run()V

    .line 179
    .line 180
    .line 181
    iput-boolean v0, p1, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsImmediately:Z

    .line 182
    .line 183
    iget-object p1, p1, Lcom/android/server/wm/InputMonitor;->mInputTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 184
    .line 185
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 186
    .line 187
    .line 188
    return-void

    .line 189
    :pswitch_2
    check-cast p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;

    .line 190
    .line 191
    check-cast p1, Lcom/android/server/wm/DisplayContent;

    .line 192
    .line 193
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 194
    .line 195
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    .line 196
    .line 197
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/DisplayWindowSettings;->applySettingsToDisplayLocked(Lcom/android/server/wm/DisplayContent;Z)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->reconfigureDisplayLocked()V

    .line 201
    .line 202
    .line 203
    return-void

    .line 204
    :pswitch_3
    check-cast p0, Lcom/android/server/wm/WindowManagerService;

    .line 205
    .line 206
    move-object v2, p1

    .line 207
    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 208
    .line 209
    sget p1, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    .line 210
    .line 211
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 212
    .line 213
    .line 214
    iget-object p1, v2, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    .line 215
    .line 216
    invoke-virtual {p1}, Landroid/view/Display;->getType()I

    .line 217
    .line 218
    .line 219
    move-result p1

    .line 220
    if-ne p1, v1, :cond_5

    .line 221
    .line 222
    iget p0, p0, Lcom/android/server/wm/WindowManagerService;->mMaxUiWidth:I

    .line 223
    .line 224
    iput p0, v2, Lcom/android/server/wm/DisplayContent;->mMaxUiWidth:I

    .line 225
    .line 226
    iget v3, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 227
    .line 228
    iget v4, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 229
    .line 230
    iget v5, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    .line 231
    .line 232
    iget v6, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayPhysicalXDpi:F

    .line 233
    .line 234
    iget v7, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayPhysicalYDpi:F

    .line 235
    .line 236
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetrics(IIIFF)V

    .line 237
    .line 238
    .line 239
    :cond_5
    return-void

    .line 240
    nop

    .line 241
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
