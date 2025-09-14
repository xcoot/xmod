.class public final Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mA11yWindowsPopulator:Lcom/android/server/wm/AccessibilityWindowsPopulator;

.field public final mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

.field public final mCallback:Lcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;

.field public final mDisplayId:I

.field public final mHandler:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;

.field public mInitialized:Z

.field public final mRecurringAccessibilityEventsIntervalMillis:J

.field public final mService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;ILcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;Lcom/android/server/wm/AccessibilityWindowsPopulator;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArraySet;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v0, Landroid/graphics/Region;

    .line 10
    .line 11
    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v0, Landroid/graphics/Region;

    .line 15
    .line 16
    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 20
    .line 21
    iput-object p3, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mCallback:Lcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;

    .line 22
    .line 23
    iput p2, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mDisplayId:I

    .line 24
    .line 25
    new-instance p2, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;

    .line 26
    .line 27
    iget-object p3, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 28
    .line 29
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    invoke-direct {p2, p0, p3}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;-><init>(Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;Landroid/os/Looper;)V

    .line 34
    .line 35
    .line 36
    iput-object p2, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mHandler:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;

    .line 37
    .line 38
    invoke-static {p1}, Lcom/android/server/wm/AccessibilityController;->getAccessibilityControllerInternal(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    .line 43
    .line 44
    invoke-static {}, Landroid/view/ViewConfiguration;->getSendRecurringAccessibilityEventsInterval()J

    .line 45
    .line 46
    .line 47
    move-result-wide p1

    .line 48
    iput-wide p1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mRecurringAccessibilityEventsIntervalMillis:J

    .line 49
    .line 50
    iput-object p4, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mA11yWindowsPopulator:Lcom/android/server/wm/AccessibilityWindowsPopulator;

    .line 51
    .line 52
    const/4 p1, 0x1

    .line 53
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->computeChangedWindows(Z)V

    .line 54
    .line 55
    .line 56
    return-void
.end method


# virtual methods
.method public final computeChangedWindows(Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    .line 2
    .line 3
    const-wide/16 v1, 0x400

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    .line 12
    .line 13
    const-string v3, "WindowManager.computeChangedWindows"

    .line 14
    .line 15
    new-instance v4, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v5, "forceSend="

    .line 18
    .line 19
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    new-instance v1, Landroid/graphics/Point;

    .line 38
    .line 39
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 40
    .line 41
    .line 42
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 43
    .line 44
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 45
    .line 46
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 47
    .line 48
    .line 49
    monitor-enter v2

    .line 50
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 51
    .line 52
    iget-object v4, v3, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    .line 53
    .line 54
    const/4 v5, 0x1

    .line 55
    if-eqz v4, :cond_2

    .line 56
    .line 57
    iget-object v3, v4, Lcom/android/server/wm/RecentsAnimationController;->mTargetActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 58
    .line 59
    if-nez v3, :cond_1

    .line 60
    .line 61
    const/4 v3, 0x0

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {v3, v5}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    goto :goto_0

    .line 68
    :cond_2
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 69
    .line 70
    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 75
    .line 76
    :goto_0
    if-nez v3, :cond_3

    .line 77
    .line 78
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :catchall_0
    move-exception p0

    .line 84
    goto/16 :goto_6

    .line 85
    .line 86
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 87
    .line 88
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 89
    .line 90
    iget v6, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mDisplayId:I

    .line 91
    .line 92
    invoke-virtual {v4, v6}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    if-nez v4, :cond_4

    .line 97
    .line 98
    const-string p0, "WindowManager"

    .line 99
    .line 100
    const-string p1, "display content is null, should be created later"

    .line 101
    .line 102
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :cond_4
    :try_start_2
    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    .line 111
    .line 112
    invoke-virtual {v4, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 113
    .line 114
    .line 115
    iget-object v4, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mA11yWindowsPopulator:Lcom/android/server/wm/AccessibilityWindowsPopulator;

    .line 116
    .line 117
    iget v6, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mDisplayId:I

    .line 118
    .line 119
    invoke-virtual {v4, v6, v0}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->populateVisibleWindowsOnScreenLocked(ILjava/util/List;)V

    .line 120
    .line 121
    .line 122
    invoke-static {}, Lcom/android/server/accessibility/Flags;->computeWindowChangesOnA11yV2()Z

    .line 123
    .line 124
    .line 125
    iget-object v4, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 126
    .line 127
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 128
    .line 129
    invoke-virtual {v4}, Lcom/android/server/wm/RootWindowContainer;->getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    iget v4, v4, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 134
    .line 135
    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 136
    .line 137
    invoke-interface {v3}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 142
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 143
    .line 144
    .line 145
    invoke-static {}, Lcom/android/server/accessibility/Flags;->computeWindowChangesOnA11yV2()Z

    .line 146
    .line 147
    .line 148
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mCallback:Lcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;

    .line 149
    .line 150
    check-cast v2, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    .line 151
    .line 152
    iget-object v6, v2, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 153
    .line 154
    iget-object v6, v6, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    .line 155
    .line 156
    monitor-enter v6

    .line 157
    :try_start_3
    invoke-virtual {v2, v1, v0}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->createWindowInfoListLocked(Landroid/graphics/Point;Ljava/util/List;)Ljava/util/List;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    iget-object v7, v2, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 162
    .line 163
    iget-object v7, v7, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    .line 164
    .line 165
    monitor-enter v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 166
    :try_start_4
    invoke-static {}, Lcom/android/server/accessibility/Flags;->computeWindowChangesOnA11yV2()Z

    .line 167
    .line 168
    .line 169
    invoke-virtual {v2, v1, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->shouldUpdateWindowsLocked(Ljava/util/List;Z)Z

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    if-eqz p1, :cond_6

    .line 174
    .line 175
    iget-object p1, v2, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 176
    .line 177
    iput v4, p1, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTopFocusedDisplayId:I

    .line 178
    .line 179
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    .line 180
    .line 181
    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    check-cast p1, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    .line 186
    .line 187
    if-eqz p1, :cond_5

    .line 188
    .line 189
    iget-boolean p1, p1, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mIsProxy:Z

    .line 190
    .line 191
    if-eqz p1, :cond_5

    .line 192
    .line 193
    goto :goto_1

    .line 194
    :cond_5
    iget-object p1, v2, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 195
    .line 196
    iput v4, p1, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLastNonProxyTopFocusedDisplayId:I

    .line 197
    .line 198
    :goto_1
    iget-object p1, v2, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 199
    .line 200
    iput-object v3, p1, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTopFocusedWindowToken:Landroid/os/IBinder;

    .line 201
    .line 202
    invoke-virtual {v2, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->cacheWindows(Ljava/util/List;)V

    .line 203
    .line 204
    .line 205
    iget-object p1, v2, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 206
    .line 207
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityUserManager:Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;

    .line 208
    .line 209
    check-cast p1, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 210
    .line 211
    iget p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 212
    .line 213
    invoke-virtual {v2, p1, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->updateWindowsLocked(ILjava/util/List;)V

    .line 214
    .line 215
    .line 216
    iget-object p1, v2, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 217
    .line 218
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    .line 219
    .line 220
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 221
    .line 222
    .line 223
    goto :goto_2

    .line 224
    :catchall_1
    move-exception p0

    .line 225
    goto :goto_4

    .line 226
    :cond_6
    :goto_2
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 227
    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 228
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 233
    .line 234
    .line 235
    move-result v0

    .line 236
    if-eqz v0, :cond_7

    .line 237
    .line 238
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    check-cast v0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;

    .line 243
    .line 244
    iget-object v0, v0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mWindowInfo:Landroid/view/WindowInfo;

    .line 245
    .line 246
    invoke-virtual {v0}, Landroid/view/WindowInfo;->recycle()V

    .line 247
    .line 248
    .line 249
    goto :goto_3

    .line 250
    :cond_7
    iput-boolean v5, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mInitialized:Z

    .line 251
    .line 252
    return-void

    .line 253
    :catchall_2
    move-exception p0

    .line 254
    goto :goto_5

    .line 255
    :goto_4
    :try_start_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 256
    :try_start_7
    throw p0

    .line 257
    :goto_5
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 258
    throw p0

    .line 259
    :goto_6
    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 260
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 261
    .line 262
    .line 263
    throw p0
.end method

.method public final performComputeChangedWindows(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    .line 2
    .line 3
    const-wide/16 v1, 0x400

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v4, "forceSend="

    .line 14
    .line 15
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const-string v4, "WindowManager.performComputeChangedWindows"

    .line 26
    .line 27
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mHandler:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;

    .line 31
    .line 32
    const/4 v1, 0x1

    .line 33
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->computeChangedWindows(Z)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final scheduleComputeChangedWindows()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    .line 2
    .line 3
    const-wide/16 v1, 0x400

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    const-string v3, "WindowManager.scheduleComputeChangedWindows"

    .line 12
    .line 13
    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace(Ljava/lang/String;J)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mHandler:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_1

    .line 24
    .line 25
    iget-wide v2, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mRecurringAccessibilityEventsIntervalMillis:J

    .line 26
    .line 27
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "WindowsForAccessibilityObserver{mDisplayId="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mDisplayId:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", mInitialized="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-boolean p0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mInitialized:Z

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const/16 p0, 0x7d

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method
