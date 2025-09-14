.class public final Lcom/android/server/accessibility/ProxyManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public mA11yInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

.field public final mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

.field public mAppsOnVirtualDeviceListener:Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda4;

.field public final mContext:Landroid/content/Context;

.field public final mLastStates:Landroid/util/SparseIntArray;

.field public mLocalVdm:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

.field public final mLock:Ljava/lang/Object;

.field public final mMainHandler:Landroid/os/Handler;

.field public final mProxyA11yServiceConnections:Landroid/util/SparseArray;

.field public final mSystemSupport:Lcom/android/server/accessibility/ProxyManager$SystemSupport;

.field public final mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

.field public mVirtualDeviceListener:Lcom/android/server/accessibility/ProxyManager$2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "ProxyManager"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    sput-boolean v0, Lcom/android/server/accessibility/ProxyManager;->DEBUG:Z

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/android/server/accessibility/AccessibilityWindowManager;Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;Lcom/android/server/accessibility/UiAutomationManager;Lcom/android/server/accessibility/ProxyManager$SystemSupport;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseIntArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mLastStates:Landroid/util/SparseIntArray;

    .line 10
    .line 11
    new-instance v0, Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    .line 19
    .line 20
    iput-object p2, p0, Lcom/android/server/accessibility/ProxyManager;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 21
    .line 22
    iput-object p3, p0, Lcom/android/server/accessibility/ProxyManager;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    iput-object p4, p0, Lcom/android/server/accessibility/ProxyManager;->mMainHandler:Landroid/os/Handler;

    .line 25
    .line 26
    iput-object p5, p0, Lcom/android/server/accessibility/ProxyManager;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    .line 27
    .line 28
    iput-object p6, p0, Lcom/android/server/accessibility/ProxyManager;->mSystemSupport:Lcom/android/server/accessibility/ProxyManager$SystemSupport;

    .line 29
    .line 30
    const-class p1, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 31
    .line 32
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 37
    .line 38
    iput-object p1, p0, Lcom/android/server/accessibility/ProxyManager;->mLocalVdm:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 39
    .line 40
    return-void
.end method

.method public static printClientsForDeviceId(Ljava/io/PrintWriter;Landroid/os/RemoteCallbackList;I)V
    .locals 4

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCookie(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;

    .line 15
    .line 16
    iget v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mDeviceId:I

    .line 17
    .line 18
    if-ne v2, p2, :cond_0

    .line 19
    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v3, "            "

    .line 23
    .line 24
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mPackageNames:[Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-string v3, "\n"

    .line 34
    .line 35
    invoke-static {p0, v1, v3, v2}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    return-void
.end method


# virtual methods
.method public final broadcastToClientsLocked(Ljava/util/function/Consumer;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/accessibility/ProxyManager;->mSystemSupport:Lcom/android/server/accessibility/ProxyManager$SystemSupport;

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    check-cast v0, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserState()Lcom/android/server/accessibility/AccessibilityUserState;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserClients:Landroid/os/RemoteCallbackList;

    .line 11
    .line 12
    check-cast p0, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->broadcastForEachCookie(Ljava/util/function/Consumer;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->broadcastForEachCookie(Ljava/util/function/Consumer;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final clearConnectionAndUpdateState(I)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x1

    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 15
    .line 16
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    .line 21
    .line 22
    iget v1, v1, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mDeviceId:I

    .line 23
    .line 24
    iget-object v4, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 25
    .line 26
    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 27
    .line 28
    .line 29
    iget-object v4, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 30
    .line 31
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-nez v4, :cond_1

    .line 36
    .line 37
    iget-object v4, p0, Lcom/android/server/accessibility/ProxyManager;->mContext:Landroid/content/Context;

    .line 38
    .line 39
    const-class v5, Landroid/companion/virtual/VirtualDeviceManager;

    .line 40
    .line 41
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    check-cast v4, Landroid/companion/virtual/VirtualDeviceManager;

    .line 46
    .line 47
    if-eqz v4, :cond_1

    .line 48
    .line 49
    invoke-static {}, Landroid/companion/virtual/flags/Flags;->vdmPublicApis()Z

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    if-nez v5, :cond_0

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    iget-object v5, p0, Lcom/android/server/accessibility/ProxyManager;->mVirtualDeviceListener:Lcom/android/server/accessibility/ProxyManager$2;

    .line 57
    .line 58
    invoke-virtual {v4, v5}, Landroid/companion/virtual/VirtualDeviceManager;->unregisterVirtualDeviceListener(Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    :goto_0
    move v4, v2

    .line 62
    goto :goto_1

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    goto/16 :goto_5

    .line 65
    .line 66
    :cond_2
    const/4 v1, -0x1

    .line 67
    move v4, v3

    .line 68
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    if-eqz v4, :cond_6

    .line 70
    .line 71
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 72
    .line 73
    iget-object v5, v0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    .line 74
    .line 75
    monitor-enter v5

    .line 76
    :try_start_1
    iget-object v6, v0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    .line 77
    .line 78
    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    check-cast v6, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    .line 83
    .line 84
    if-eqz v6, :cond_3

    .line 85
    .line 86
    iput-boolean v3, v6, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mIsProxy:Z

    .line 87
    .line 88
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->resetHasProxyIfNeededLocked()V

    .line 89
    .line 90
    .line 91
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 92
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mMainHandler:Landroid/os/Handler;

    .line 93
    .line 94
    new-instance v5, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda5;

    .line 95
    .line 96
    const/4 v6, 0x3

    .line 97
    invoke-direct {v5, p0, p1, v6}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/accessibility/ProxyManager;II)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/ProxyManager;->isProxyedDeviceId(I)Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-nez v0, :cond_5

    .line 108
    .line 109
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    .line 110
    .line 111
    monitor-enter v0

    .line 112
    :try_start_2
    invoke-static {}, Lcom/android/server/accessibility/Flags;->proxyUseAppsOnVirtualDeviceListener()Z

    .line 113
    .line 114
    .line 115
    iget-object v3, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 116
    .line 117
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    if-nez v3, :cond_4

    .line 122
    .line 123
    invoke-virtual {p0}, Lcom/android/server/accessibility/ProxyManager;->getLocalVdm()Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    if-eqz v3, :cond_4

    .line 128
    .line 129
    iget-object v5, p0, Lcom/android/server/accessibility/ProxyManager;->mAppsOnVirtualDeviceListener:Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda4;

    .line 130
    .line 131
    if-eqz v5, :cond_4

    .line 132
    .line 133
    check-cast v3, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;

    .line 134
    .line 135
    iget-object v6, v3, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    .line 136
    .line 137
    iget-object v6, v6, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDeviceManagerLock:Ljava/lang/Object;

    .line 138
    .line 139
    monitor-enter v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 140
    :try_start_3
    iget-object v3, v3, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->mAppsOnVirtualDeviceListeners:Ljava/util/ArrayList;

    .line 141
    .line 142
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 146
    const/4 v3, 0x0

    .line 147
    :try_start_4
    iput-object v3, p0, Lcom/android/server/accessibility/ProxyManager;->mAppsOnVirtualDeviceListener:Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda4;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 148
    .line 149
    goto :goto_2

    .line 150
    :catchall_1
    move-exception p0

    .line 151
    goto :goto_3

    .line 152
    :catchall_2
    move-exception p0

    .line 153
    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 154
    :try_start_6
    throw p0

    .line 155
    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/android/server/accessibility/ProxyManager;->mSystemSupport:Lcom/android/server/accessibility/ProxyManager$SystemSupport;

    .line 156
    .line 157
    check-cast v3, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 158
    .line 159
    iget v5, v3, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 160
    .line 161
    invoke-virtual {v3, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    .line 162
    .line 163
    .line 164
    move-result-object v5

    .line 165
    iget-object v5, v5, Lcom/android/server/accessibility/AccessibilityUserState;->mUserClients:Landroid/os/RemoteCallbackList;

    .line 166
    .line 167
    invoke-virtual {v3, v1, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->resetClientsLocked(ILandroid/os/RemoteCallbackList;)V

    .line 168
    .line 169
    .line 170
    iget-object v5, v3, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    .line 171
    .line 172
    invoke-virtual {v3, v1, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->resetClientsLocked(ILandroid/os/RemoteCallbackList;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v3, v2, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->onClientChangeLocked(ZZ)V

    .line 176
    .line 177
    .line 178
    iget-object p0, p0, Lcom/android/server/accessibility/ProxyManager;->mLastStates:Landroid/util/SparseIntArray;

    .line 179
    .line 180
    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 181
    .line 182
    .line 183
    monitor-exit v0

    .line 184
    goto :goto_4

    .line 185
    :goto_3
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 186
    throw p0

    .line 187
    :cond_5
    invoke-virtual {p0, v1, v3}, Lcom/android/server/accessibility/ProxyManager;->onProxyChanged(IZ)V

    .line 188
    .line 189
    .line 190
    goto :goto_4

    .line 191
    :catchall_3
    move-exception p0

    .line 192
    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 193
    throw p0

    .line 194
    :cond_6
    :goto_4
    sget-boolean p0, Lcom/android/server/accessibility/ProxyManager;->DEBUG:Z

    .line 195
    .line 196
    if-eqz p0, :cond_7

    .line 197
    .line 198
    const-string p0, "ProxyManager"

    .line 199
    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    .line 201
    .line 202
    const-string v1, "Unregistered proxy for display id "

    .line 203
    .line 204
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    const-string p1, ": "

    .line 211
    .line 212
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    .line 224
    .line 225
    :cond_7
    return v4

    .line 226
    :goto_5
    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 227
    throw p0
.end method

.method public final clearConnections(I)V
    .locals 6

    .line 1
    new-instance v0, Landroid/util/IntArray;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    const/4 v2, 0x0

    .line 10
    move v3, v2

    .line 11
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-ge v3, v4, :cond_1

    .line 18
    .line 19
    iget-object v4, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 20
    .line 21
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    check-cast v4, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    .line 26
    .line 27
    if-eqz v4, :cond_0

    .line 28
    .line 29
    iget v5, v4, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mDeviceId:I

    .line 30
    .line 31
    if-ne v5, p1, :cond_0

    .line 32
    .line 33
    iget v4, v4, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mDisplayId:I

    .line 34
    .line 35
    invoke-virtual {v0, v4}, Landroid/util/IntArray;->add(I)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_3

    .line 41
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :goto_2
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-ge v2, p1, :cond_2

    .line 50
    .line 51
    invoke-virtual {v0, v2}, Landroid/util/IntArray;->get(I)I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->clearConnectionAndUpdateState(I)Z

    .line 56
    .line 57
    .line 58
    add-int/lit8 v2, v2, 0x1

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_2
    return-void

    .line 62
    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    throw p0
.end method

.method public final computeRelevantEventTypesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Client;)I
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    iget-object v3, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 7
    .line 8
    .line 9
    move-result v3

    .line 10
    if-ge v1, v3, :cond_6

    .line 11
    .line 12
    iget-object v3, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    .line 19
    .line 20
    if-eqz v3, :cond_5

    .line 21
    .line 22
    iget v4, v3, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mDeviceId:I

    .line 23
    .line 24
    iget v5, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mDeviceId:I

    .line 25
    .line 26
    if-ne v4, v5, :cond_5

    .line 27
    .line 28
    iget-boolean v4, v3, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mUsesAccessibilityCache:Z

    .line 29
    .line 30
    const/16 v5, 0x20

    .line 31
    .line 32
    const v6, 0x41b83d

    .line 33
    .line 34
    .line 35
    if-eqz v4, :cond_0

    .line 36
    .line 37
    move v4, v6

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    move v4, v5

    .line 40
    :goto_1
    iget v3, v3, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventTypes:I

    .line 41
    .line 42
    or-int/2addr v3, v4

    .line 43
    or-int/2addr v2, v3

    .line 44
    iget-object v3, p0, Lcom/android/server/accessibility/ProxyManager;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    .line 45
    .line 46
    iget-object v4, v3, Lcom/android/server/accessibility/UiAutomationManager;->mLock:Ljava/lang/Object;

    .line 47
    .line 48
    monitor-enter v4

    .line 49
    :try_start_0
    iget-object v7, v3, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    .line 50
    .line 51
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 52
    if-nez v7, :cond_1

    .line 53
    .line 54
    const/4 v4, 0x0

    .line 55
    goto :goto_2

    .line 56
    :cond_1
    invoke-virtual {v7}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    :goto_2
    invoke-static {v4, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->isClientInPackageAllowlist(Landroid/accessibilityservice/AccessibilityServiceInfo;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-eqz v4, :cond_4

    .line 65
    .line 66
    iget-object v4, v3, Lcom/android/server/accessibility/UiAutomationManager;->mLock:Ljava/lang/Object;

    .line 67
    .line 68
    monitor-enter v4

    .line 69
    :try_start_1
    iget-object v3, v3, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    .line 70
    .line 71
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    if-nez v3, :cond_2

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_2
    iget-boolean v4, v3, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mUsesAccessibilityCache:Z

    .line 76
    .line 77
    if-eqz v4, :cond_3

    .line 78
    .line 79
    move v5, v6

    .line 80
    :cond_3
    iget v3, v3, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventTypes:I

    .line 81
    .line 82
    or-int/2addr v3, v5

    .line 83
    goto :goto_4

    .line 84
    :catchall_0
    move-exception p0

    .line 85
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    throw p0

    .line 87
    :cond_4
    :goto_3
    move v3, v0

    .line 88
    :goto_4
    or-int/2addr v2, v3

    .line 89
    goto :goto_5

    .line 90
    :catchall_1
    move-exception p0

    .line 91
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 92
    throw p0

    .line 93
    :cond_5
    :goto_5
    add-int/lit8 v1, v1, 0x1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_6
    sget-boolean p0, Lcom/android/server/accessibility/ProxyManager;->DEBUG:Z

    .line 97
    .line 98
    if-eqz p0, :cond_7

    .line 99
    .line 100
    new-instance p0, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    const-string v0, "Relevant event types for device id "

    .line 103
    .line 104
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iget p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mDeviceId:I

    .line 108
    .line 109
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string p1, ": "

    .line 113
    .line 114
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->eventTypeToString(I)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    const-string p1, "ProxyManager"

    .line 129
    .line 130
    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    :cond_7
    return v2
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    .line 1
    const-string v0, "    Number of proxy connections: "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 7
    .line 8
    .line 9
    const-string v2, "Proxy manager state:"

    .line 10
    .line 11
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string v0, "    Registered proxy connections:"

    .line 36
    .line 37
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mSystemSupport:Lcom/android/server/accessibility/ProxyManager$SystemSupport;

    .line 41
    .line 42
    check-cast v0, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserState()Lcom/android/server/accessibility/AccessibilityUserState;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserClients:Landroid/os/RemoteCallbackList;

    .line 49
    .line 50
    iget-object v2, p0, Lcom/android/server/accessibility/ProxyManager;->mSystemSupport:Lcom/android/server/accessibility/ProxyManager$SystemSupport;

    .line 51
    .line 52
    check-cast v2, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 53
    .line 54
    iget-object v2, v2, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    .line 55
    .line 56
    const/4 v3, 0x0

    .line 57
    :goto_0
    iget-object v4, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 58
    .line 59
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-ge v3, v4, :cond_1

    .line 64
    .line 65
    iget-object v4, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 66
    .line 67
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    check-cast v4, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    .line 72
    .line 73
    if-eqz v4, :cond_0

    .line 74
    .line 75
    invoke-virtual {v4, p1, p2, p3}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :catchall_0
    move-exception p0

    .line 80
    goto :goto_2

    .line 81
    :cond_0
    :goto_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 82
    .line 83
    .line 84
    const-string v5, "        User clients for proxy\'s virtual device id"

    .line 85
    .line 86
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget v5, v4, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mDeviceId:I

    .line 90
    .line 91
    invoke-static {p2, v0, v5}, Lcom/android/server/accessibility/ProxyManager;->printClientsForDeviceId(Ljava/io/PrintWriter;Landroid/os/RemoteCallbackList;I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 95
    .line 96
    .line 97
    const-string v5, "        Global clients for proxy\'s virtual device id"

    .line 98
    .line 99
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iget v4, v4, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mDeviceId:I

    .line 103
    .line 104
    invoke-static {p2, v2, v4}, Lcom/android/server/accessibility/ProxyManager;->printClientsForDeviceId(Ljava/io/PrintWriter;Landroid/os/RemoteCallbackList;I)V

    .line 105
    .line 106
    .line 107
    add-int/lit8 v3, v3, 0x1

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_1
    monitor-exit v1

    .line 111
    return-void

    .line 112
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    throw p0
.end method

.method public final getFirstDeviceIdForUidLocked(I)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/accessibility/ProxyManager;->getLocalVdm()Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, -0x1

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getDeviceIdsForUid(I)Landroid/util/ArraySet;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Ljava/lang/Integer;

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eq v1, v0, :cond_1

    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    :cond_2
    return v0
.end method

.method public final getFirstProxyForDeviceIdLocked(I)Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 3
    .line 4
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    iget v2, v1, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mDeviceId:I

    .line 21
    .line 22
    if-ne v2, p1, :cond_0

    .line 23
    .line 24
    return-object v1

    .line 25
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 p0, 0x0

    .line 29
    return-object p0
.end method

.method public final getInstalledAndEnabledServiceInfosLocked(II)Ljava/util/List;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    iget-object v2, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 8
    .line 9
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-ge v1, v2, :cond_3

    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 16
    .line 17
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    .line 22
    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    iget v3, v2, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mDeviceId:I

    .line 26
    .line 27
    if-ne v3, p2, :cond_2

    .line 28
    .line 29
    const/4 v3, -0x1

    .line 30
    if-ne p1, v3, :cond_0

    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->getInstalledAndEnabledServices()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 37
    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_0
    iget v3, v2, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFeedbackType:I

    .line 41
    .line 42
    and-int/2addr v3, p1

    .line 43
    if-eqz v3, :cond_2

    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->getInstalledAndEnabledServices()Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_2

    .line 58
    .line 59
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    check-cast v3, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 64
    .line 65
    iget v4, v3, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    .line 66
    .line 67
    and-int/2addr v4, p1

    .line 68
    if-eqz v4, :cond_1

    .line 69
    .line 70
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    return-object v0
.end method

.method public final getLocalVdm()Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mLocalVdm:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-class v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mLocalVdm:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Lcom/android/server/accessibility/ProxyManager;->mLocalVdm:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 16
    .line 17
    return-object p0
.end method

.method public final getRecommendedTimeoutMillisLocked(I)J
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    iget-object v3, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 7
    .line 8
    .line 9
    move-result v3

    .line 10
    if-ge v0, v3, :cond_1

    .line 11
    .line 12
    iget-object v3, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    .line 19
    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    iget v4, v3, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mDeviceId:I

    .line 23
    .line 24
    if-ne v4, p1, :cond_0

    .line 25
    .line 26
    iget v4, v3, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mInteractiveTimeout:I

    .line 27
    .line 28
    iget v3, v3, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mNonInteractiveTimeout:I

    .line 29
    .line 30
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-static {v1, v2}, Lcom/android/internal/util/IntPair;->of(II)J

    .line 42
    .line 43
    .line 44
    move-result-wide p0

    .line 45
    return-wide p0
.end method

.method public final getStateLocked(I)I
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    move v0, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    :goto_0
    move v3, v1

    .line 13
    :goto_1
    iget-object v4, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 14
    .line 15
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    sget-boolean v5, Lcom/android/server/accessibility/ProxyManager;->DEBUG:Z

    .line 20
    .line 21
    const-string v6, "ProxyManager"

    .line 22
    .line 23
    if-ge v3, v4, :cond_5

    .line 24
    .line 25
    iget-object v4, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 26
    .line 27
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    check-cast v4, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    .line 32
    .line 33
    if-eqz v4, :cond_4

    .line 34
    .line 35
    iget v7, v4, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mDeviceId:I

    .line 36
    .line 37
    if-ne v7, p1, :cond_4

    .line 38
    .line 39
    iget-boolean v4, v4, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestTouchExplorationMode:Z

    .line 40
    .line 41
    if-eqz v4, :cond_1

    .line 42
    .line 43
    const/4 v4, 0x3

    .line 44
    goto :goto_2

    .line 45
    :cond_1
    move v4, v2

    .line 46
    :goto_2
    if-eqz v5, :cond_3

    .line 47
    .line 48
    new-instance v5, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v7, "Accessibility is enabled for all proxies: "

    .line 51
    .line 52
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    invoke-static {v6, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    new-instance v5, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v7, "Touch exploration is enabled for all proxies: "

    .line 68
    .line 69
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    and-int/lit8 v7, v4, 0x2

    .line 73
    .line 74
    if-eqz v7, :cond_2

    .line 75
    .line 76
    move v7, v2

    .line 77
    goto :goto_3

    .line 78
    :cond_2
    move v7, v1

    .line 79
    :goto_3
    invoke-static {v6, v5, v7}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 80
    .line 81
    .line 82
    :cond_3
    or-int/2addr v0, v4

    .line 83
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_5
    if-eqz v5, :cond_8

    .line 87
    .line 88
    const-string p0, "For device id "

    .line 89
    .line 90
    const-string v3, " a11y is enabled: "

    .line 91
    .line 92
    invoke-static {p1, p0, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    and-int/lit8 v4, v0, 0x1

    .line 97
    .line 98
    if-eqz v4, :cond_6

    .line 99
    .line 100
    move v4, v2

    .line 101
    goto :goto_4

    .line 102
    :cond_6
    move v4, v1

    .line 103
    :goto_4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-static {v6, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    new-instance v3, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {v3, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string p0, " touch exploration is enabled: "

    .line 122
    .line 123
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    and-int/lit8 p0, v0, 0x2

    .line 127
    .line 128
    if-eqz p0, :cond_7

    .line 129
    .line 130
    move v1, v2

    .line 131
    :cond_7
    invoke-static {v6, v3, v1}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 132
    .line 133
    .line 134
    :cond_8
    return v0
.end method

.method public final isProxyedDeviceId(I)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    const/4 v1, -0x1

    .line 5
    if-ne p1, v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v1

    .line 11
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->getFirstProxyForDeviceIdLocked(I)Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-eqz p0, :cond_1

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    sget-boolean p0, Lcom/android/server/accessibility/ProxyManager;->DEBUG:Z

    .line 20
    .line 21
    if-eqz p0, :cond_2

    .line 22
    .line 23
    const-string p0, "ProxyManager"

    .line 24
    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v2, "Tracking device "

    .line 28
    .line 29
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string p1, " : "

    .line 36
    .line 37
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    :cond_2
    return v0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    throw p0

    .line 54
    :cond_3
    :goto_0
    return v0
.end method

.method public final isProxyedDisplay(I)Z
    .locals 4

    .line 1
    const-string v0, "Tracking proxy display "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->contains(I)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    sget-boolean v2, Lcom/android/server/accessibility/ProxyManager;->DEBUG:Z

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    const-string v2, "ProxyManager"

    .line 17
    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p1, " : "

    .line 27
    .line 28
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {v2, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    :goto_0
    monitor-exit v1

    .line 45
    return p0

    .line 46
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    throw p0
.end method

.method public notifyProxyOfRunningAppsChange(Ljava/util/Set;)V
    .locals 8

    .line 1
    sget-boolean v0, Lcom/android/server/accessibility/ProxyManager;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "ProxyManager"

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v2, "notifyProxyOfRunningAppsChange: "

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    .line 26
    .line 27
    monitor-enter v0

    .line 28
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    monitor-exit v0

    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_3

    .line 40
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/accessibility/ProxyManager;->getLocalVdm()Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-nez v1, :cond_2

    .line 45
    .line 46
    monitor-exit v0

    .line 47
    return-void

    .line 48
    :cond_2
    new-instance v2, Landroid/util/ArraySet;

    .line 49
    .line 50
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 51
    .line 52
    .line 53
    const/4 v3, 0x0

    .line 54
    :goto_0
    iget-object v4, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 55
    .line 56
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-ge v3, v4, :cond_5

    .line 61
    .line 62
    iget-object v4, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 63
    .line 64
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    check-cast v4, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    .line 69
    .line 70
    if-eqz v4, :cond_4

    .line 71
    .line 72
    iget v4, v4, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mDeviceId:I

    .line 73
    .line 74
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    if-eqz v6, :cond_4

    .line 83
    .line 84
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    check-cast v6, Ljava/lang/Integer;

    .line 89
    .line 90
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    invoke-virtual {v1, v6}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getDeviceIdsForUid(I)Landroid/util/ArraySet;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v6

    .line 106
    if-eqz v6, :cond_3

    .line 107
    .line 108
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    invoke-virtual {v2, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_5
    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-eqz v1, :cond_6

    .line 128
    .line 129
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    check-cast v1, Ljava/lang/Integer;

    .line 134
    .line 135
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    const/4 v2, 0x1

    .line 140
    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/ProxyManager;->onProxyChanged(IZ)V

    .line 141
    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_6
    monitor-exit v0

    .line 145
    return-void

    .line 146
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    throw p0
.end method

.method public final onProxyChanged(IZ)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/server/accessibility/ProxyManager;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "ProxyManager"

    .line 6
    .line 7
    const-string/jumbo v2, "onProxyChanged called for deviceId: "

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v2, v1}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter v1

    .line 16
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/ProxyManager;->mSystemSupport:Lcom/android/server/accessibility/ProxyManager$SystemSupport;

    .line 17
    .line 18
    move-object v3, v2

    .line 19
    check-cast v3, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 20
    .line 21
    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserState()Lcom/android/server/accessibility/AccessibilityUserState;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iget-object v3, v3, Lcom/android/server/accessibility/AccessibilityUserState;->mUserClients:Landroid/os/RemoteCallbackList;

    .line 26
    .line 27
    check-cast v2, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 28
    .line 29
    iget-object v2, v2, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    .line 30
    .line 31
    invoke-virtual {p0, p1, v3}, Lcom/android/server/accessibility/ProxyManager;->updateDeviceIdsIfNeededLocked(ILandroid/os/RemoteCallbackList;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1, v2}, Lcom/android/server/accessibility/ProxyManager;->updateDeviceIdsIfNeededLocked(ILandroid/os/RemoteCallbackList;)V

    .line 35
    .line 36
    .line 37
    iget-object v2, p0, Lcom/android/server/accessibility/ProxyManager;->mSystemSupport:Lcom/android/server/accessibility/ProxyManager$SystemSupport;

    .line 38
    .line 39
    check-cast v2, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 40
    .line 41
    iget v3, v2, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 42
    .line 43
    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateWindowsForAccessibilityCallbackLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->isProxyedDeviceId(I)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-nez v2, :cond_1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    new-instance v2, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda5;

    .line 58
    .line 59
    const/4 v3, 0x2

    .line 60
    invoke-direct {v2, p0, p1, v3}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/accessibility/ProxyManager;II)V

    .line 61
    .line 62
    .line 63
    iget-object v3, p0, Lcom/android/server/accessibility/ProxyManager;->mMainHandler:Landroid/os/Handler;

    .line 64
    .line 65
    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 66
    .line 67
    .line 68
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/ProxyManager;->scheduleUpdateProxyClientsIfNeededLocked(IZ)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->scheduleNotifyProxyClientsOfServicesStateChangeLocked(I)V

    .line 72
    .line 73
    .line 74
    if-eqz v0, :cond_2

    .line 75
    .line 76
    new-instance p2, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string v0, "Update proxy focus appearance at device id "

    .line 79
    .line 80
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    const-string v0, "ProxyManager"

    .line 91
    .line 92
    invoke-static {v0, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->getFirstProxyForDeviceIdLocked(I)Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    if-eqz p1, :cond_3

    .line 100
    .line 101
    new-instance p2, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda9;

    .line 102
    .line 103
    invoke-direct {p2, p0, p1}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/accessibility/ProxyManager;Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;)V

    .line 104
    .line 105
    .line 106
    iget-object p1, p0, Lcom/android/server/accessibility/ProxyManager;->mMainHandler:Landroid/os/Handler;

    .line 107
    .line 108
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 109
    .line 110
    .line 111
    :cond_3
    iget-object p0, p0, Lcom/android/server/accessibility/ProxyManager;->mSystemSupport:Lcom/android/server/accessibility/ProxyManager$SystemSupport;

    .line 112
    .line 113
    check-cast p0, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 114
    .line 115
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyClearAccessibilityCacheLocked()V

    .line 116
    .line 117
    .line 118
    monitor-exit v1

    .line 119
    return-void

    .line 120
    :catchall_0
    move-exception p0

    .line 121
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    throw p0
.end method

.method public final registerProxy(Landroid/accessibilityservice/IAccessibilityServiceClient;IILcom/android/server/accessibility/AccessibilitySecurityPolicy;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;Landroid/accessibilityservice/AccessibilityTrace;Lcom/android/server/wm/WindowManagerInternal;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    sget-boolean v3, Lcom/android/server/accessibility/ProxyManager;->DEBUG:Z

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    const-string v3, "ProxyManager"

    .line 12
    .line 13
    const-string v4, "Register proxy for display id: "

    .line 14
    .line 15
    invoke-static {v2, v4, v3}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v3, v0, Lcom/android/server/accessibility/ProxyManager;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    const-class v4, Landroid/companion/virtual/VirtualDeviceManager;

    .line 21
    .line 22
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Landroid/companion/virtual/VirtualDeviceManager;

    .line 27
    .line 28
    if-nez v3, :cond_1

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    invoke-virtual {v3, v2}, Landroid/companion/virtual/VirtualDeviceManager;->getDeviceIdForDisplayId(I)I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    new-instance v8, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 36
    .line 37
    invoke-direct {v8}, Landroid/accessibilityservice/AccessibilityServiceInfo;-><init>()V

    .line 38
    .line 39
    .line 40
    const/4 v4, 0x3

    .line 41
    invoke-virtual {v8, v4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->setCapabilities(I)V

    .line 42
    .line 43
    .line 44
    const-string v4, "ProxyClass"

    .line 45
    .line 46
    invoke-static {v2, v4}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    new-instance v5, Landroid/content/ComponentName;

    .line 51
    .line 52
    const-string v6, "ProxyPackage"

    .line 53
    .line 54
    invoke-direct {v5, v6, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v8, v5}, Landroid/accessibilityservice/AccessibilityServiceInfo;->setComponentName(Landroid/content/ComponentName;)V

    .line 58
    .line 59
    .line 60
    new-instance v15, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    .line 61
    .line 62
    iget-object v6, v0, Lcom/android/server/accessibility/ProxyManager;->mContext:Landroid/content/Context;

    .line 63
    .line 64
    invoke-virtual {v8}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getComponentName()Landroid/content/ComponentName;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    iget-object v10, v0, Lcom/android/server/accessibility/ProxyManager;->mMainHandler:Landroid/os/Handler;

    .line 69
    .line 70
    iget-object v11, v0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    .line 71
    .line 72
    iget-object v14, v0, Lcom/android/server/accessibility/ProxyManager;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 73
    .line 74
    const/4 v5, 0x0

    .line 75
    const/16 v16, 0x0

    .line 76
    .line 77
    const/16 v18, 0x0

    .line 78
    .line 79
    move-object v4, v15

    .line 80
    move/from16 v9, p3

    .line 81
    .line 82
    move-object/from16 v12, p4

    .line 83
    .line 84
    move-object/from16 v13, p5

    .line 85
    .line 86
    move-object/from16 v17, v14

    .line 87
    .line 88
    move-object/from16 v14, p6

    .line 89
    .line 90
    move-object/from16 v19, v15

    .line 91
    .line 92
    move-object/from16 v15, p7

    .line 93
    .line 94
    invoke-direct/range {v4 .. v18}, Lcom/android/server/accessibility/AccessibilityServiceConnection;-><init>(Lcom/android/server/accessibility/AccessibilityUserState;Landroid/content/Context;Landroid/content/ComponentName;Landroid/accessibilityservice/AccessibilityServiceInfo;ILandroid/os/Handler;Ljava/lang/Object;Lcom/android/server/accessibility/AccessibilitySecurityPolicy;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;Landroid/accessibilityservice/AccessibilityTrace;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/SystemActionPerformer;Lcom/android/server/accessibility/AccessibilityWindowManager;Lcom/android/server/wm/ActivityTaskManagerInternal;)V

    .line 95
    .line 96
    .line 97
    move-object/from16 v4, v19

    .line 98
    .line 99
    iput v2, v4, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mDisplayId:I

    .line 100
    .line 101
    const/4 v5, 0x2

    .line 102
    iput v5, v4, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mDisplayTypes:I

    .line 103
    .line 104
    iget-object v5, v4, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mContext:Landroid/content/Context;

    .line 105
    .line 106
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    const v6, 0x105000c

    .line 111
    .line 112
    .line 113
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    iput v5, v4, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mFocusStrokeWidth:I

    .line 118
    .line 119
    iget-object v5, v4, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mContext:Landroid/content/Context;

    .line 120
    .line 121
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    const v6, 0x10600f3

    .line 126
    .line 127
    .line 128
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    iput v5, v4, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mFocusColor:I

    .line 133
    .line 134
    iput v3, v4, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mDeviceId:I

    .line 135
    .line 136
    iget-object v3, v0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    .line 137
    .line 138
    monitor-enter v3

    .line 139
    :try_start_0
    iget-object v5, v0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 140
    .line 141
    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    invoke-static {}, Lcom/android/server/accessibility/Flags;->proxyUseAppsOnVirtualDeviceListener()Z

    .line 145
    .line 146
    .line 147
    iget-object v5, v0, Lcom/android/server/accessibility/ProxyManager;->mAppsOnVirtualDeviceListener:Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda4;

    .line 148
    .line 149
    if-nez v5, :cond_2

    .line 150
    .line 151
    new-instance v5, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda4;

    .line 152
    .line 153
    invoke-direct {v5, v0}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/accessibility/ProxyManager;)V

    .line 154
    .line 155
    .line 156
    iput-object v5, v0, Lcom/android/server/accessibility/ProxyManager;->mAppsOnVirtualDeviceListener:Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda4;

    .line 157
    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/ProxyManager;->getLocalVdm()Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    if-eqz v5, :cond_2

    .line 163
    .line 164
    iget-object v6, v0, Lcom/android/server/accessibility/ProxyManager;->mAppsOnVirtualDeviceListener:Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda4;

    .line 165
    .line 166
    check-cast v5, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;

    .line 167
    .line 168
    iget-object v7, v5, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    .line 169
    .line 170
    iget-object v7, v7, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDeviceManagerLock:Ljava/lang/Object;

    .line 171
    .line 172
    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 173
    :try_start_1
    iget-object v5, v5, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->mAppsOnVirtualDeviceListeners:Ljava/util/ArrayList;

    .line 174
    .line 175
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    monitor-exit v7

    .line 179
    goto :goto_0

    .line 180
    :catchall_0
    move-exception v0

    .line 181
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    :try_start_2
    throw v0

    .line 183
    :catchall_1
    move-exception v0

    .line 184
    goto :goto_2

    .line 185
    :cond_2
    :goto_0
    iget-object v5, v0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 186
    .line 187
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 188
    .line 189
    .line 190
    move-result v5

    .line 191
    const/4 v6, 0x1

    .line 192
    if-ne v5, v6, :cond_5

    .line 193
    .line 194
    iget-object v5, v0, Lcom/android/server/accessibility/ProxyManager;->mContext:Landroid/content/Context;

    .line 195
    .line 196
    const-class v6, Landroid/companion/virtual/VirtualDeviceManager;

    .line 197
    .line 198
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v5

    .line 202
    check-cast v5, Landroid/companion/virtual/VirtualDeviceManager;

    .line 203
    .line 204
    if-eqz v5, :cond_5

    .line 205
    .line 206
    invoke-static {}, Landroid/companion/virtual/flags/Flags;->vdmPublicApis()Z

    .line 207
    .line 208
    .line 209
    move-result v6

    .line 210
    if-nez v6, :cond_3

    .line 211
    .line 212
    goto :goto_1

    .line 213
    :cond_3
    iget-object v6, v0, Lcom/android/server/accessibility/ProxyManager;->mVirtualDeviceListener:Lcom/android/server/accessibility/ProxyManager$2;

    .line 214
    .line 215
    if-nez v6, :cond_4

    .line 216
    .line 217
    new-instance v6, Lcom/android/server/accessibility/ProxyManager$2;

    .line 218
    .line 219
    invoke-direct {v6, v0}, Lcom/android/server/accessibility/ProxyManager$2;-><init>(Lcom/android/server/accessibility/ProxyManager;)V

    .line 220
    .line 221
    .line 222
    iput-object v6, v0, Lcom/android/server/accessibility/ProxyManager;->mVirtualDeviceListener:Lcom/android/server/accessibility/ProxyManager$2;

    .line 223
    .line 224
    :cond_4
    iget-object v6, v0, Lcom/android/server/accessibility/ProxyManager;->mContext:Landroid/content/Context;

    .line 225
    .line 226
    invoke-virtual {v6}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 227
    .line 228
    .line 229
    move-result-object v6

    .line 230
    iget-object v7, v0, Lcom/android/server/accessibility/ProxyManager;->mVirtualDeviceListener:Lcom/android/server/accessibility/ProxyManager$2;

    .line 231
    .line 232
    invoke-virtual {v5, v6, v7}, Landroid/companion/virtual/VirtualDeviceManager;->registerVirtualDeviceListener(Ljava/util/concurrent/Executor;Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;)V

    .line 233
    .line 234
    .line 235
    :cond_5
    :goto_1
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 236
    new-instance v3, Lcom/android/server/accessibility/ProxyManager$1;

    .line 237
    .line 238
    invoke-direct {v3, v0, v1, v2}, Lcom/android/server/accessibility/ProxyManager$1;-><init>(Lcom/android/server/accessibility/ProxyManager;Landroid/accessibilityservice/IAccessibilityServiceClient;I)V

    .line 239
    .line 240
    .line 241
    invoke-interface/range {p1 .. p1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->asBinder()Landroid/os/IBinder;

    .line 242
    .line 243
    .line 244
    move-result-object v5

    .line 245
    const/4 v6, 0x0

    .line 246
    invoke-interface {v5, v3, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 247
    .line 248
    .line 249
    iget-object v3, v0, Lcom/android/server/accessibility/ProxyManager;->mMainHandler:Landroid/os/Handler;

    .line 250
    .line 251
    new-instance v5, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda5;

    .line 252
    .line 253
    invoke-direct {v5, v0, v2, v6}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/accessibility/ProxyManager;II)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 257
    .line 258
    .line 259
    iput-object v1, v4, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 260
    .line 261
    invoke-interface/range {p1 .. p1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->asBinder()Landroid/os/IBinder;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    iput-object v0, v4, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    .line 266
    .line 267
    iget-object v0, v4, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 268
    .line 269
    iget v1, v4, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    .line 270
    .line 271
    iget-object v3, v4, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mOverlayWindowTokens:Landroid/util/SparseArray;

    .line 272
    .line 273
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v2

    .line 277
    check-cast v2, Landroid/os/IBinder;

    .line 278
    .line 279
    invoke-interface {v0, v4, v1, v2}, Landroid/accessibilityservice/IAccessibilityServiceClient;->init(Landroid/accessibilityservice/IAccessibilityServiceConnection;ILandroid/os/IBinder;)V

    .line 280
    .line 281
    .line 282
    return-void

    .line 283
    :goto_2
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 284
    throw v0
.end method

.method public final scheduleNotifyProxyClientsOfServicesStateChangeLocked(I)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/accessibility/ProxyManager;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "Notify services state change at device id "

    .line 6
    .line 7
    const-string v1, "ProxyManager"

    .line 8
    .line 9
    invoke-static {p1, v0, v1}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    new-instance v0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda5;

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/accessibility/ProxyManager;II)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/accessibility/ProxyManager;->mMainHandler:Landroid/os/Handler;

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final scheduleUpdateProxyClientsIfNeededLocked(IZ)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->getStateLocked(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-boolean v1, Lcom/android/server/accessibility/ProxyManager;->DEBUG:Z

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v3, "State for device id "

    .line 13
    .line 14
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v3, " is "

    .line 21
    .line 22
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string v4, "ProxyManager"

    .line 33
    .line 34
    invoke-static {v4, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    const-string v1, "Last state for device id "

    .line 38
    .line 39
    invoke-static {p1, v1, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iget-object v3, p0, Lcom/android/server/accessibility/ProxyManager;->mLastStates:Landroid/util/SparseIntArray;

    .line 44
    .line 45
    invoke-virtual {v3, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-static {v4, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string/jumbo v3, "force update: "

    .line 62
    .line 63
    .line 64
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-static {v4, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mLastStates:Landroid/util/SparseIntArray;

    .line 78
    .line 79
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-ne v1, v0, :cond_1

    .line 84
    .line 85
    invoke-static {}, Lcom/android/server/accessibility/Flags;->proxyUseAppsOnVirtualDeviceListener()Z

    .line 86
    .line 87
    .line 88
    if-eqz p2, :cond_2

    .line 89
    .line 90
    :cond_1
    iget-object p2, p0, Lcom/android/server/accessibility/ProxyManager;->mLastStates:Landroid/util/SparseIntArray;

    .line 91
    .line 92
    invoke-virtual {p2, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 93
    .line 94
    .line 95
    new-instance p2, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda3;

    .line 96
    .line 97
    invoke-direct {p2, p0, p1, v0}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/accessibility/ProxyManager;II)V

    .line 98
    .line 99
    .line 100
    iget-object p0, p0, Lcom/android/server/accessibility/ProxyManager;->mMainHandler:Landroid/os/Handler;

    .line 101
    .line 102
    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 103
    .line 104
    .line 105
    :cond_2
    return-void
.end method

.method public setLocalVirtualDeviceManager(Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/accessibility/ProxyManager;->mLocalVdm:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 2
    .line 3
    return-void
.end method

.method public final updateDeviceIdsIfNeededLocked(ILandroid/os/RemoteCallbackList;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/android/server/accessibility/ProxyManager;->getLocalVdm()Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    move v1, v0

    .line 10
    :goto_0
    invoke-virtual {p2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-ge v1, v2, :cond_5

    .line 15
    .line 16
    invoke-virtual {p2, v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCookie(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;

    .line 21
    .line 22
    invoke-static {}, Lcom/android/server/accessibility/Flags;->proxyUseAppsOnVirtualDeviceListener()Z

    .line 23
    .line 24
    .line 25
    if-eqz p1, :cond_4

    .line 26
    .line 27
    const/4 v3, -0x1

    .line 28
    if-ne p1, v3, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    iget v3, v2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mUid:I

    .line 32
    .line 33
    invoke-virtual {p0, v3}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getDeviceIdsForUid(I)Landroid/util/ArraySet;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    iget v4, v2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mDeviceId:I

    .line 46
    .line 47
    const-string v5, " are "

    .line 48
    .line 49
    const-string v6, "ProxyManager"

    .line 50
    .line 51
    sget-boolean v7, Lcom/android/server/accessibility/ProxyManager;->DEBUG:Z

    .line 52
    .line 53
    iget-object v8, v2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mPackageNames:[Ljava/lang/String;

    .line 54
    .line 55
    if-eq v4, p1, :cond_3

    .line 56
    .line 57
    if-eqz v3, :cond_3

    .line 58
    .line 59
    if-eqz v7, :cond_2

    .line 60
    .line 61
    const-string v3, "Packages moved to device id "

    .line 62
    .line 63
    invoke-static {p1, v3, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-static {v8}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-static {v6, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    :cond_2
    iput p1, v2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mDeviceId:I

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_3
    if-ne v4, p1, :cond_4

    .line 85
    .line 86
    if-nez v3, :cond_4

    .line 87
    .line 88
    iput v0, v2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mDeviceId:I

    .line 89
    .line 90
    if-eqz v7, :cond_4

    .line 91
    .line 92
    const-string v2, "Packages moved to the default device from device id "

    .line 93
    .line 94
    invoke-static {p1, v2, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-static {v8}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-static {v6, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_5
    return-void
.end method
