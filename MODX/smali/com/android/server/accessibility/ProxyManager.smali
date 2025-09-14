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

    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 10
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 12
    if-eqz v0, :cond_0

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

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/android/server/accessibility/AccessibilityWindowManager;Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;Lcom/android/server/accessibility/UiAutomationManager;Lcom/android/server/accessibility/ProxyManager$SystemSupport;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/util/SparseIntArray;

    .line 6
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mLastStates:Landroid/util/SparseIntArray;

    .line 11
    new-instance v0, Landroid/util/SparseArray;

    .line 13
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 18
    iput-object p1, p0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    .line 20
    iput-object p2, p0, Lcom/android/server/accessibility/ProxyManager;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 22
    iput-object p3, p0, Lcom/android/server/accessibility/ProxyManager;->mContext:Landroid/content/Context;

    .line 24
    iput-object p4, p0, Lcom/android/server/accessibility/ProxyManager;->mMainHandler:Landroid/os/Handler;

    .line 26
    iput-object p5, p0, Lcom/android/server/accessibility/ProxyManager;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    .line 28
    iput-object p6, p0, Lcom/android/server/accessibility/ProxyManager;->mSystemSupport:Lcom/android/server/accessibility/ProxyManager$SystemSupport;

    .line 30
    const-class p1, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 32
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 38
    iput-object p1, p0, Lcom/android/server/accessibility/ProxyManager;->mLocalVdm:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 40
    return-void
.end method

.method public static printClientsForDeviceId(Ljava/io/PrintWriter;Landroid/os/RemoteCallbackList;I)V
    .locals 4

    .line 1
    if-eqz p1, :cond_1

    .line 3
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_1

    .line 10
    invoke-virtual {p1, v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCookie(I)Ljava/lang/Object;

    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;

    .line 16
    iget v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mDeviceId:I

    .line 18
    if-ne v2, p2, :cond_0

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 22
    const-string v3, "            "

    .line 24
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mPackageNames:[Ljava/lang/String;

    .line 29
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    const-string v3, "\n"

    .line 35
    invoke-static {p0, v1, v3, v2}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 38
    :cond_0
    add-int/lit8 v0, v0, 0x1

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

    .line 3
    move-object v0, p0

    .line 4
    check-cast v0, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 6
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserState()Lcom/android/server/accessibility/AccessibilityUserState;

    .line 9
    move-result-object v0

    .line 10
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserClients:Landroid/os/RemoteCallbackList;

    .line 12
    check-cast p0, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 14
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    .line 16
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->broadcastForEachCookie(Ljava/util/function/Consumer;)V

    .line 19
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->broadcastForEachCookie(Ljava/util/function/Consumer;)V

    .line 22
    return-void
.end method

.method public final clearConnectionAndUpdateState(I)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x1

    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v1, :cond_2

    .line 14
    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 16
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    .line 22
    iget v1, v1, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mDeviceId:I

    .line 24
    iget-object v4, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 26
    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 29
    iget-object v4, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 31
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 34
    move-result v4

    .line 35
    if-nez v4, :cond_1

    .line 37
    iget-object v4, p0, Lcom/android/server/accessibility/ProxyManager;->mContext:Landroid/content/Context;

    .line 39
    const-class v5, Landroid/companion/virtual/VirtualDeviceManager;

    .line 41
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 44
    move-result-object v4

    .line 45
    check-cast v4, Landroid/companion/virtual/VirtualDeviceManager;

    .line 47
    if-eqz v4, :cond_1

    .line 49
    invoke-static {}, Landroid/companion/virtual/flags/Flags;->vdmPublicApis()Z

    .line 52
    move-result v5

    .line 53
    if-nez v5, :cond_0

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    iget-object v5, p0, Lcom/android/server/accessibility/ProxyManager;->mVirtualDeviceListener:Lcom/android/server/accessibility/ProxyManager$2;

    .line 58
    invoke-virtual {v4, v5}, Landroid/companion/virtual/VirtualDeviceManager;->unregisterVirtualDeviceListener(Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;)V

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

    .line 71
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 73
    iget-object v5, v0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    .line 75
    monitor-enter v5

    .line 76
    :try_start_1
    iget-object v6, v0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    .line 78
    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 81
    move-result-object v6

    .line 82
    check-cast v6, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    .line 84
    if-eqz v6, :cond_3

    .line 86
    iput-boolean v3, v6, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mIsProxy:Z

    .line 88
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->resetHasProxyIfNeededLocked()V

    .line 91
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 92
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mMainHandler:Landroid/os/Handler;

    .line 94
    new-instance v5, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda5;

    .line 96
    const/4 v6, 0x3

    .line 97
    invoke-direct {v5, p0, p1, v6}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/accessibility/ProxyManager;II)V

    .line 100
    invoke-virtual {v0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 103
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/ProxyManager;->isProxyedDeviceId(I)Z

    .line 106
    move-result v0

    .line 107
    if-nez v0, :cond_5

    .line 109
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    .line 111
    monitor-enter v0

    .line 112
    :try_start_2
    invoke-static {}, Lcom/android/server/accessibility/Flags;->proxyUseAppsOnVirtualDeviceListener()Z

    .line 115
    iget-object v3, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 117
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 120
    move-result v3

    .line 121
    if-nez v3, :cond_4

    .line 123
    invoke-virtual {p0}, Lcom/android/server/accessibility/ProxyManager;->getLocalVdm()Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 126
    move-result-object v3

    .line 127
    if-eqz v3, :cond_4

    .line 129
    iget-object v5, p0, Lcom/android/server/accessibility/ProxyManager;->mAppsOnVirtualDeviceListener:Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda4;

    .line 131
    if-eqz v5, :cond_4

    .line 133
    check-cast v3, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;

    .line 135
    iget-object v6, v3, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    .line 137
    iget-object v6, v6, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDeviceManagerLock:Ljava/lang/Object;

    .line 139
    monitor-enter v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 140
    :try_start_3
    iget-object v3, v3, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->mAppsOnVirtualDeviceListeners:Ljava/util/ArrayList;

    .line 142
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

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

    .line 157
    check-cast v3, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 159
    iget v5, v3, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 161
    invoke-virtual {v3, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    .line 164
    move-result-object v5

    .line 165
    iget-object v5, v5, Lcom/android/server/accessibility/AccessibilityUserState;->mUserClients:Landroid/os/RemoteCallbackList;

    .line 167
    invoke-virtual {v3, v1, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->resetClientsLocked(ILandroid/os/RemoteCallbackList;)V

    .line 170
    iget-object v5, v3, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    .line 172
    invoke-virtual {v3, v1, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->resetClientsLocked(ILandroid/os/RemoteCallbackList;)V

    .line 175
    invoke-virtual {v3, v2, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->onClientChangeLocked(ZZ)V

    .line 178
    iget-object p0, p0, Lcom/android/server/accessibility/ProxyManager;->mLastStates:Landroid/util/SparseIntArray;

    .line 180
    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->delete(I)V

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

    .line 196
    if-eqz p0, :cond_7

    .line 198
    const-string p0, "ProxyManager"

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    .line 202
    const-string v1, "Unregistered proxy for display id "

    .line 204
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 210
    const-string p1, ": "

    .line 212
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    move-result-object p1

    .line 222
    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

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

    .line 3
    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

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

    .line 13
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 16
    move-result v4

    .line 17
    if-ge v3, v4, :cond_1

    .line 19
    iget-object v4, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 21
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 24
    move-result-object v4

    .line 25
    check-cast v4, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    .line 27
    if-eqz v4, :cond_0

    .line 29
    iget v5, v4, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mDeviceId:I

    .line 31
    if-ne v5, p1, :cond_0

    .line 33
    iget v4, v4, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mDisplayId:I

    .line 35
    invoke-virtual {v0, v4}, Landroid/util/IntArray;->add(I)V

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

    .line 48
    move-result p1

    .line 49
    if-ge v2, p1, :cond_2

    .line 51
    invoke-virtual {v0, v2}, Landroid/util/IntArray;->get(I)I

    .line 54
    move-result p1

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->clearConnectionAndUpdateState(I)Z

    .line 58
    add-int/lit8 v2, v2, 0x1

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

    .line 6
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 9
    move-result v3

    .line 10
    if-ge v1, v3, :cond_6

    .line 12
    iget-object v3, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 14
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    .line 20
    if-eqz v3, :cond_5

    .line 22
    iget v4, v3, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mDeviceId:I

    .line 24
    iget v5, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mDeviceId:I

    .line 26
    if-ne v4, v5, :cond_5

    .line 28
    iget-boolean v4, v3, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mUsesAccessibilityCache:Z

    .line 30
    const/16 v5, 0x20

    .line 32
    const v6, 0x41b83d

    .line 35
    if-eqz v4, :cond_0

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

    .line 42
    or-int/2addr v3, v4

    .line 43
    or-int/2addr v2, v3

    .line 44
    iget-object v3, p0, Lcom/android/server/accessibility/ProxyManager;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    .line 46
    iget-object v4, v3, Lcom/android/server/accessibility/UiAutomationManager;->mLock:Ljava/lang/Object;

    .line 48
    monitor-enter v4

    .line 49
    :try_start_0
    iget-object v7, v3, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    .line 51
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 52
    if-nez v7, :cond_1

    .line 54
    const/4 v4, 0x0

    .line 55
    goto :goto_2

    .line 56
    :cond_1
    invoke-virtual {v7}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 59
    move-result-object v4

    .line 60
    :goto_2
    invoke-static {v4, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->isClientInPackageAllowlist(Landroid/accessibilityservice/AccessibilityServiceInfo;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)Z

    .line 63
    move-result v4

    .line 64
    if-eqz v4, :cond_4

    .line 66
    iget-object v4, v3, Lcom/android/server/accessibility/UiAutomationManager;->mLock:Ljava/lang/Object;

    .line 68
    monitor-enter v4

    .line 69
    :try_start_1
    iget-object v3, v3, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    .line 71
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    if-nez v3, :cond_2

    .line 74
    goto :goto_3

    .line 75
    :cond_2
    iget-boolean v4, v3, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mUsesAccessibilityCache:Z

    .line 77
    if-eqz v4, :cond_3

    .line 79
    move v5, v6

    .line 80
    :cond_3
    iget v3, v3, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventTypes:I

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

    .line 95
    goto :goto_0

    .line 96
    :cond_6
    sget-boolean p0, Lcom/android/server/accessibility/ProxyManager;->DEBUG:Z

    .line 98
    if-eqz p0, :cond_7

    .line 100
    new-instance p0, Ljava/lang/StringBuilder;

    .line 102
    const-string v0, "Relevant event types for device id "

    .line 104
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    iget p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mDeviceId:I

    .line 109
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    const-string p1, ": "

    .line 114
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->eventTypeToString(I)Ljava/lang/String;

    .line 120
    move-result-object p1

    .line 121
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    move-result-object p0

    .line 128
    const-string p1, "ProxyManager"

    .line 130
    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_7
    return v2
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    .line 1
    const-string v0, "    Number of proxy connections: "

    .line 3
    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 9
    const-string v2, "Proxy manager state:"

    .line 11
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 21
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 24
    move-result v0

    .line 25
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 35
    const-string v0, "    Registered proxy connections:"

    .line 37
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mSystemSupport:Lcom/android/server/accessibility/ProxyManager$SystemSupport;

    .line 42
    check-cast v0, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 44
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserState()Lcom/android/server/accessibility/AccessibilityUserState;

    .line 47
    move-result-object v0

    .line 48
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserClients:Landroid/os/RemoteCallbackList;

    .line 50
    iget-object v2, p0, Lcom/android/server/accessibility/ProxyManager;->mSystemSupport:Lcom/android/server/accessibility/ProxyManager$SystemSupport;

    .line 52
    check-cast v2, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 54
    iget-object v2, v2, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    .line 56
    const/4 v3, 0x0

    .line 57
    :goto_0
    iget-object v4, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 59
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 62
    move-result v4

    .line 63
    if-ge v3, v4, :cond_1

    .line 65
    iget-object v4, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 67
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 70
    move-result-object v4

    .line 71
    check-cast v4, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    .line 73
    if-eqz v4, :cond_0

    .line 75
    invoke-virtual {v4, p1, p2, p3}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

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

    .line 84
    const-string v5, "        User clients for proxy\'s virtual device id"

    .line 86
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 89
    iget v5, v4, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mDeviceId:I

    .line 91
    invoke-static {p2, v0, v5}, Lcom/android/server/accessibility/ProxyManager;->printClientsForDeviceId(Ljava/io/PrintWriter;Landroid/os/RemoteCallbackList;I)V

    .line 94
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 97
    const-string v5, "        Global clients for proxy\'s virtual device id"

    .line 99
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 102
    iget v4, v4, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mDeviceId:I

    .line 104
    invoke-static {p2, v2, v4}, Lcom/android/server/accessibility/ProxyManager;->printClientsForDeviceId(Ljava/io/PrintWriter;Landroid/os/RemoteCallbackList;I)V

    .line 107
    add-int/lit8 v3, v3, 0x1

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

    .line 4
    move-result-object p0

    .line 5
    const/4 v0, -0x1

    .line 6
    if-nez p0, :cond_0

    .line 8
    return v0

    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getDeviceIdsForUid(I)Landroid/util/ArraySet;

    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object p0

    .line 17
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_2

    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Ljava/lang/Integer;

    .line 29
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 35
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 38
    move-result v1

    .line 39
    if-eq v1, v0, :cond_1

    .line 41
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

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

    .line 4
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_1

    .line 10
    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 12
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    .line 18
    if-eqz v1, :cond_0

    .line 20
    iget v2, v1, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mDeviceId:I

    .line 22
    if-ne v2, p1, :cond_0

    .line 24
    return-object v1

    .line 25
    :cond_0
    add-int/lit8 v0, v0, 0x1

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

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    iget-object v2, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 9
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 12
    move-result v2

    .line 13
    if-ge v1, v2, :cond_3

    .line 15
    iget-object v2, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 17
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    .line 23
    if-eqz v2, :cond_2

    .line 25
    iget v3, v2, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mDeviceId:I

    .line 27
    if-ne v3, p2, :cond_2

    .line 29
    const/4 v3, -0x1

    .line 30
    if-ne p1, v3, :cond_0

    .line 32
    invoke-virtual {v2}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->getInstalledAndEnabledServices()Ljava/util/List;

    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 39
    goto :goto_2

    .line 40
    :cond_0
    iget v3, v2, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFeedbackType:I

    .line 42
    and-int/2addr v3, p1

    .line 43
    if-eqz v3, :cond_2

    .line 45
    invoke-virtual {v2}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->getInstalledAndEnabledServices()Ljava/util/List;

    .line 48
    move-result-object v2

    .line 49
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 52
    move-result-object v2

    .line 53
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_2

    .line 59
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    move-result-object v3

    .line 63
    check-cast v3, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 65
    iget v4, v3, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    .line 67
    and-int/2addr v4, p1

    .line 68
    if-eqz v4, :cond_1

    .line 70
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    goto :goto_1

    .line 74
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

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

    .line 3
    if-nez v0, :cond_0

    .line 5
    const-class v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 7
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 13
    iput-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mLocalVdm:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 15
    :cond_0
    iget-object p0, p0, Lcom/android/server/accessibility/ProxyManager;->mLocalVdm:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

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

    .line 6
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 9
    move-result v3

    .line 10
    if-ge v0, v3, :cond_1

    .line 12
    iget-object v3, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 14
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    .line 20
    if-eqz v3, :cond_0

    .line 22
    iget v4, v3, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mDeviceId:I

    .line 24
    if-ne v4, p1, :cond_0

    .line 26
    iget v4, v3, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mInteractiveTimeout:I

    .line 28
    iget v3, v3, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mNonInteractiveTimeout:I

    .line 30
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    .line 33
    move-result v1

    .line 34
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 37
    move-result v2

    .line 38
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-static {v1, v2}, Lcom/android/internal/util/IntPair;->of(II)J

    .line 44
    move-result-wide p0

    .line 45
    return-wide p0
.end method

.method public final getStateLocked(I)I
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    .line 3
    iget-object v0, v0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_0

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

    .line 15
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 18
    move-result v4

    .line 19
    sget-boolean v5, Lcom/android/server/accessibility/ProxyManager;->DEBUG:Z

    .line 21
    const-string v6, "ProxyManager"

    .line 23
    if-ge v3, v4, :cond_5

    .line 25
    iget-object v4, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 27
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 30
    move-result-object v4

    .line 31
    check-cast v4, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    .line 33
    if-eqz v4, :cond_4

    .line 35
    iget v7, v4, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mDeviceId:I

    .line 37
    if-ne v7, p1, :cond_4

    .line 39
    iget-boolean v4, v4, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestTouchExplorationMode:Z

    .line 41
    if-eqz v4, :cond_1

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

    .line 48
    new-instance v5, Ljava/lang/StringBuilder;

    .line 50
    const-string v7, "Accessibility is enabled for all proxies: "

    .line 52
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object v5

    .line 62
    invoke-static {v6, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    new-instance v5, Ljava/lang/StringBuilder;

    .line 67
    const-string v7, "Touch exploration is enabled for all proxies: "

    .line 69
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    and-int/lit8 v7, v4, 0x2

    .line 74
    if-eqz v7, :cond_2

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

    .line 82
    :cond_3
    or-int/2addr v0, v4

    .line 83
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 85
    goto :goto_1

    .line 86
    :cond_5
    if-eqz v5, :cond_8

    .line 88
    const-string p0, "For device id "

    .line 90
    const-string v3, " a11y is enabled: "

    .line 92
    invoke-static {p1, p0, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    move-result-object v3

    .line 96
    and-int/lit8 v4, v0, 0x1

    .line 98
    if-eqz v4, :cond_6

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

    .line 106
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    move-result-object v3

    .line 110
    invoke-static {v6, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    new-instance v3, Ljava/lang/StringBuilder;

    .line 115
    invoke-direct {v3, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    const-string p0, " touch exploration is enabled: "

    .line 123
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    and-int/lit8 p0, v0, 0x2

    .line 128
    if-eqz p0, :cond_7

    .line 130
    move v1, v2

    .line 131
    :cond_7
    invoke-static {v6, v3, v1}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

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

    .line 4
    const/4 v1, -0x1

    .line 5
    if-ne p1, v1, :cond_0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    .line 10
    monitor-enter v1

    .line 11
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->getFirstProxyForDeviceIdLocked(I)Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    .line 14
    move-result-object p0

    .line 15
    if-eqz p0, :cond_1

    .line 17
    const/4 v0, 0x1

    .line 18
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    sget-boolean p0, Lcom/android/server/accessibility/ProxyManager;->DEBUG:Z

    .line 21
    if-eqz p0, :cond_2

    .line 23
    const-string p0, "ProxyManager"

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    const-string v2, "Tracking device "

    .line 29
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    const-string p1, " : "

    .line 37
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object p1

    .line 47
    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

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

    .line 3
    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 8
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->contains(I)Z

    .line 11
    move-result p0

    .line 12
    sget-boolean v2, Lcom/android/server/accessibility/ProxyManager;->DEBUG:Z

    .line 14
    if-eqz v2, :cond_0

    .line 16
    const-string v2, "ProxyManager"

    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    .line 20
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    const-string p1, " : "

    .line 28
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    invoke-static {v2, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

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

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const-string v0, "ProxyManager"

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    const-string/jumbo v2, "notifyProxyOfRunningAppsChange: "

    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    .line 27
    monitor-enter v0

    .line 28
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 30
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_1

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

    .line 43
    move-result-object v1

    .line 44
    if-nez v1, :cond_2

    .line 46
    monitor-exit v0

    .line 47
    return-void

    .line 48
    :cond_2
    new-instance v2, Landroid/util/ArraySet;

    .line 50
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 53
    const/4 v3, 0x0

    .line 54
    :goto_0
    iget-object v4, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 56
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 59
    move-result v4

    .line 60
    if-ge v3, v4, :cond_5

    .line 62
    iget-object v4, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 64
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 67
    move-result-object v4

    .line 68
    check-cast v4, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    .line 70
    if-eqz v4, :cond_4

    .line 72
    iget v4, v4, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mDeviceId:I

    .line 74
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 77
    move-result-object v5

    .line 78
    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    move-result v6

    .line 82
    if-eqz v6, :cond_4

    .line 84
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    move-result-object v6

    .line 88
    check-cast v6, Ljava/lang/Integer;

    .line 90
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 93
    move-result v6

    .line 94
    invoke-virtual {v1, v6}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getDeviceIdsForUid(I)Landroid/util/ArraySet;

    .line 97
    move-result-object v6

    .line 98
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    move-result-object v7

    .line 102
    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 105
    move-result v6

    .line 106
    if-eqz v6, :cond_3

    .line 108
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    move-result-object v6

    .line 112
    invoke-virtual {v2, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 115
    goto :goto_1

    .line 116
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 118
    goto :goto_0

    .line 119
    :cond_5
    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 122
    move-result-object p1

    .line 123
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 126
    move-result v1

    .line 127
    if-eqz v1, :cond_6

    .line 129
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 132
    move-result-object v1

    .line 133
    check-cast v1, Ljava/lang/Integer;

    .line 135
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 138
    move-result v1

    .line 139
    const/4 v2, 0x1

    .line 140
    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/ProxyManager;->onProxyChanged(IZ)V

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

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const-string v1, "ProxyManager"

    .line 7
    const-string/jumbo v2, "onProxyChanged called for deviceId: "

    .line 10
    invoke-static {p1, v2, v1}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    .line 15
    monitor-enter v1

    .line 16
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/ProxyManager;->mSystemSupport:Lcom/android/server/accessibility/ProxyManager$SystemSupport;

    .line 18
    move-object v3, v2

    .line 19
    check-cast v3, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 21
    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserState()Lcom/android/server/accessibility/AccessibilityUserState;

    .line 24
    move-result-object v3

    .line 25
    iget-object v3, v3, Lcom/android/server/accessibility/AccessibilityUserState;->mUserClients:Landroid/os/RemoteCallbackList;

    .line 27
    check-cast v2, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 29
    iget-object v2, v2, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    .line 31
    invoke-virtual {p0, p1, v3}, Lcom/android/server/accessibility/ProxyManager;->updateDeviceIdsIfNeededLocked(ILandroid/os/RemoteCallbackList;)V

    .line 34
    invoke-virtual {p0, p1, v2}, Lcom/android/server/accessibility/ProxyManager;->updateDeviceIdsIfNeededLocked(ILandroid/os/RemoteCallbackList;)V

    .line 37
    iget-object v2, p0, Lcom/android/server/accessibility/ProxyManager;->mSystemSupport:Lcom/android/server/accessibility/ProxyManager$SystemSupport;

    .line 39
    check-cast v2, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 41
    iget v3, v2, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 43
    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateWindowsForAccessibilityCallbackLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 50
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->isProxyedDeviceId(I)Z

    .line 53
    move-result v2

    .line 54
    if-nez v2, :cond_1

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    new-instance v2, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda5;

    .line 59
    const/4 v3, 0x2

    .line 60
    invoke-direct {v2, p0, p1, v3}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/accessibility/ProxyManager;II)V

    .line 63
    iget-object v3, p0, Lcom/android/server/accessibility/ProxyManager;->mMainHandler:Landroid/os/Handler;

    .line 65
    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 68
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/ProxyManager;->scheduleUpdateProxyClientsIfNeededLocked(IZ)V

    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->scheduleNotifyProxyClientsOfServicesStateChangeLocked(I)V

    .line 74
    if-eqz v0, :cond_2

    .line 76
    new-instance p2, Ljava/lang/StringBuilder;

    .line 78
    const-string v0, "Update proxy focus appearance at device id "

    .line 80
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object p2

    .line 90
    const-string v0, "ProxyManager"

    .line 92
    invoke-static {v0, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->getFirstProxyForDeviceIdLocked(I)Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    .line 98
    move-result-object p1

    .line 99
    if-eqz p1, :cond_3

    .line 101
    new-instance p2, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda9;

    .line 103
    invoke-direct {p2, p0, p1}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/accessibility/ProxyManager;Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;)V

    .line 106
    iget-object p1, p0, Lcom/android/server/accessibility/ProxyManager;->mMainHandler:Landroid/os/Handler;

    .line 108
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 111
    :cond_3
    iget-object p0, p0, Lcom/android/server/accessibility/ProxyManager;->mSystemSupport:Lcom/android/server/accessibility/ProxyManager$SystemSupport;

    .line 113
    check-cast p0, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 115
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyClearAccessibilityCacheLocked()V

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

    .line 3
    move-object/from16 v1, p1

    .line 5
    move/from16 v2, p2

    .line 7
    sget-boolean v3, Lcom/android/server/accessibility/ProxyManager;->DEBUG:Z

    .line 9
    if-eqz v3, :cond_0

    .line 11
    const-string v3, "ProxyManager"

    .line 13
    const-string v4, "Register proxy for display id: "

    .line 15
    invoke-static {v2, v4, v3}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 18
    :cond_0
    iget-object v3, v0, Lcom/android/server/accessibility/ProxyManager;->mContext:Landroid/content/Context;

    .line 20
    const-class v4, Landroid/companion/virtual/VirtualDeviceManager;

    .line 22
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Landroid/companion/virtual/VirtualDeviceManager;

    .line 28
    if-nez v3, :cond_1

    .line 30
    return-void

    .line 31
    :cond_1
    invoke-virtual {v3, v2}, Landroid/companion/virtual/VirtualDeviceManager;->getDeviceIdForDisplayId(I)I

    .line 34
    move-result v3

    .line 35
    new-instance v8, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 37
    invoke-direct {v8}, Landroid/accessibilityservice/AccessibilityServiceInfo;-><init>()V

    .line 40
    const/4 v4, 0x3

    .line 41
    invoke-virtual {v8, v4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->setCapabilities(I)V

    .line 44
    const-string v4, "ProxyClass"

    .line 46
    invoke-static {v2, v4}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 49
    move-result-object v4

    .line 50
    new-instance v5, Landroid/content/ComponentName;

    .line 52
    const-string v6, "ProxyPackage"

    .line 54
    invoke-direct {v5, v6, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {v8, v5}, Landroid/accessibilityservice/AccessibilityServiceInfo;->setComponentName(Landroid/content/ComponentName;)V

    .line 60
    new-instance v15, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    .line 62
    iget-object v6, v0, Lcom/android/server/accessibility/ProxyManager;->mContext:Landroid/content/Context;

    .line 64
    invoke-virtual {v8}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getComponentName()Landroid/content/ComponentName;

    .line 67
    move-result-object v7

    .line 68
    iget-object v10, v0, Lcom/android/server/accessibility/ProxyManager;->mMainHandler:Landroid/os/Handler;

    .line 70
    iget-object v11, v0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    .line 72
    iget-object v14, v0, Lcom/android/server/accessibility/ProxyManager;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 74
    const/4 v5, 0x0

    .line 75
    const/16 v16, 0x0

    .line 77
    const/16 v18, 0x0

    .line 79
    move-object v4, v15

    .line 80
    move/from16 v9, p3

    .line 82
    move-object/from16 v12, p4

    .line 84
    move-object/from16 v13, p5

    .line 86
    move-object/from16 v17, v14

    .line 88
    move-object/from16 v14, p6

    .line 90
    move-object/from16 v19, v15

    .line 92
    move-object/from16 v15, p7

    .line 94
    invoke-direct/range {v4 .. v18}, Lcom/android/server/accessibility/AccessibilityServiceConnection;-><init>(Lcom/android/server/accessibility/AccessibilityUserState;Landroid/content/Context;Landroid/content/ComponentName;Landroid/accessibilityservice/AccessibilityServiceInfo;ILandroid/os/Handler;Ljava/lang/Object;Lcom/android/server/accessibility/AccessibilitySecurityPolicy;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;Landroid/accessibilityservice/AccessibilityTrace;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/SystemActionPerformer;Lcom/android/server/accessibility/AccessibilityWindowManager;Lcom/android/server/wm/ActivityTaskManagerInternal;)V

    .line 97
    move-object/from16 v4, v19

    .line 99
    iput v2, v4, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mDisplayId:I

    .line 101
    const/4 v5, 0x2

    .line 102
    iput v5, v4, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mDisplayTypes:I

    .line 104
    iget-object v5, v4, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mContext:Landroid/content/Context;

    .line 106
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 109
    move-result-object v5

    .line 110
    const v6, 0x105000c

    .line 113
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 116
    move-result v5

    .line 117
    iput v5, v4, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mFocusStrokeWidth:I

    .line 119
    iget-object v5, v4, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mContext:Landroid/content/Context;

    .line 121
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 124
    move-result-object v5

    .line 125
    const v6, 0x10600f3

    .line 128
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    .line 131
    move-result v5

    .line 132
    iput v5, v4, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mFocusColor:I

    .line 134
    iput v3, v4, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mDeviceId:I

    .line 136
    iget-object v3, v0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    .line 138
    monitor-enter v3

    .line 139
    :try_start_0
    iget-object v5, v0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 141
    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 144
    invoke-static {}, Lcom/android/server/accessibility/Flags;->proxyUseAppsOnVirtualDeviceListener()Z

    .line 147
    iget-object v5, v0, Lcom/android/server/accessibility/ProxyManager;->mAppsOnVirtualDeviceListener:Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda4;

    .line 149
    if-nez v5, :cond_2

    .line 151
    new-instance v5, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda4;

    .line 153
    invoke-direct {v5, v0}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/accessibility/ProxyManager;)V

    .line 156
    iput-object v5, v0, Lcom/android/server/accessibility/ProxyManager;->mAppsOnVirtualDeviceListener:Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda4;

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/ProxyManager;->getLocalVdm()Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 161
    move-result-object v5

    .line 162
    if-eqz v5, :cond_2

    .line 164
    iget-object v6, v0, Lcom/android/server/accessibility/ProxyManager;->mAppsOnVirtualDeviceListener:Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda4;

    .line 166
    check-cast v5, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;

    .line 168
    iget-object v7, v5, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    .line 170
    iget-object v7, v7, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDeviceManagerLock:Ljava/lang/Object;

    .line 172
    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 173
    :try_start_1
    iget-object v5, v5, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->mAppsOnVirtualDeviceListeners:Ljava/util/ArrayList;

    .line 175
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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

    .line 187
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 190
    move-result v5

    .line 191
    const/4 v6, 0x1

    .line 192
    if-ne v5, v6, :cond_5

    .line 194
    iget-object v5, v0, Lcom/android/server/accessibility/ProxyManager;->mContext:Landroid/content/Context;

    .line 196
    const-class v6, Landroid/companion/virtual/VirtualDeviceManager;

    .line 198
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 201
    move-result-object v5

    .line 202
    check-cast v5, Landroid/companion/virtual/VirtualDeviceManager;

    .line 204
    if-eqz v5, :cond_5

    .line 206
    invoke-static {}, Landroid/companion/virtual/flags/Flags;->vdmPublicApis()Z

    .line 209
    move-result v6

    .line 210
    if-nez v6, :cond_3

    .line 212
    goto :goto_1

    .line 213
    :cond_3
    iget-object v6, v0, Lcom/android/server/accessibility/ProxyManager;->mVirtualDeviceListener:Lcom/android/server/accessibility/ProxyManager$2;

    .line 215
    if-nez v6, :cond_4

    .line 217
    new-instance v6, Lcom/android/server/accessibility/ProxyManager$2;

    .line 219
    invoke-direct {v6, v0}, Lcom/android/server/accessibility/ProxyManager$2;-><init>(Lcom/android/server/accessibility/ProxyManager;)V

    .line 222
    iput-object v6, v0, Lcom/android/server/accessibility/ProxyManager;->mVirtualDeviceListener:Lcom/android/server/accessibility/ProxyManager$2;

    .line 224
    :cond_4
    iget-object v6, v0, Lcom/android/server/accessibility/ProxyManager;->mContext:Landroid/content/Context;

    .line 226
    invoke-virtual {v6}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 229
    move-result-object v6

    .line 230
    iget-object v7, v0, Lcom/android/server/accessibility/ProxyManager;->mVirtualDeviceListener:Lcom/android/server/accessibility/ProxyManager$2;

    .line 232
    invoke-virtual {v5, v6, v7}, Landroid/companion/virtual/VirtualDeviceManager;->registerVirtualDeviceListener(Ljava/util/concurrent/Executor;Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;)V

    .line 235
    :cond_5
    :goto_1
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 236
    new-instance v3, Lcom/android/server/accessibility/ProxyManager$1;

    .line 238
    invoke-direct {v3, v0, v1, v2}, Lcom/android/server/accessibility/ProxyManager$1;-><init>(Lcom/android/server/accessibility/ProxyManager;Landroid/accessibilityservice/IAccessibilityServiceClient;I)V

    .line 241
    invoke-interface/range {p1 .. p1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->asBinder()Landroid/os/IBinder;

    .line 244
    move-result-object v5

    .line 245
    const/4 v6, 0x0

    .line 246
    invoke-interface {v5, v3, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 249
    iget-object v3, v0, Lcom/android/server/accessibility/ProxyManager;->mMainHandler:Landroid/os/Handler;

    .line 251
    new-instance v5, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda5;

    .line 253
    invoke-direct {v5, v0, v2, v6}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/accessibility/ProxyManager;II)V

    .line 256
    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 259
    iput-object v1, v4, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 261
    invoke-interface/range {p1 .. p1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->asBinder()Landroid/os/IBinder;

    .line 264
    move-result-object v0

    .line 265
    iput-object v0, v4, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    .line 267
    iget-object v0, v4, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 269
    iget v1, v4, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    .line 271
    iget-object v3, v4, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mOverlayWindowTokens:Landroid/util/SparseArray;

    .line 273
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 276
    move-result-object v2

    .line 277
    check-cast v2, Landroid/os/IBinder;

    .line 279
    invoke-interface {v0, v4, v1, v2}, Landroid/accessibilityservice/IAccessibilityServiceClient;->init(Landroid/accessibilityservice/IAccessibilityServiceConnection;ILandroid/os/IBinder;)V

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

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const-string v0, "Notify services state change at device id "

    .line 7
    const-string v1, "ProxyManager"

    .line 9
    invoke-static {p1, v0, v1}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_0
    new-instance v0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda5;

    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/accessibility/ProxyManager;II)V

    .line 18
    iget-object p0, p0, Lcom/android/server/accessibility/ProxyManager;->mMainHandler:Landroid/os/Handler;

    .line 20
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23
    return-void
.end method

.method public final scheduleUpdateProxyClientsIfNeededLocked(IZ)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->getStateLocked(I)I

    .line 4
    move-result v0

    .line 5
    sget-boolean v1, Lcom/android/server/accessibility/ProxyManager;->DEBUG:Z

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    const-string v3, "State for device id "

    .line 14
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    const-string v3, " is "

    .line 22
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    const-string v4, "ProxyManager"

    .line 34
    invoke-static {v4, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    const-string v1, "Last state for device id "

    .line 39
    invoke-static {p1, v1, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    move-result-object v1

    .line 43
    iget-object v3, p0, Lcom/android/server/accessibility/ProxyManager;->mLastStates:Landroid/util/SparseIntArray;

    .line 45
    invoke-virtual {v3, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    .line 48
    move-result v3

    .line 49
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v1

    .line 56
    invoke-static {v4, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    .line 61
    const-string/jumbo v3, "force update: "

    .line 64
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object v1

    .line 74
    invoke-static {v4, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mLastStates:Landroid/util/SparseIntArray;

    .line 79
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    .line 82
    move-result v1

    .line 83
    if-ne v1, v0, :cond_1

    .line 85
    invoke-static {}, Lcom/android/server/accessibility/Flags;->proxyUseAppsOnVirtualDeviceListener()Z

    .line 88
    if-eqz p2, :cond_2

    .line 90
    :cond_1
    iget-object p2, p0, Lcom/android/server/accessibility/ProxyManager;->mLastStates:Landroid/util/SparseIntArray;

    .line 92
    invoke-virtual {p2, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 95
    new-instance p2, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda3;

    .line 97
    invoke-direct {p2, p0, p1, v0}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/accessibility/ProxyManager;II)V

    .line 100
    iget-object p0, p0, Lcom/android/server/accessibility/ProxyManager;->mMainHandler:Landroid/os/Handler;

    .line 102
    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 105
    :cond_2
    return-void
.end method

.method public setLocalVirtualDeviceManager(Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/accessibility/ProxyManager;->mLocalVdm:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 3
    return-void
.end method

.method public final updateDeviceIdsIfNeededLocked(ILandroid/os/RemoteCallbackList;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/android/server/accessibility/ProxyManager;->getLocalVdm()Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

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

    .line 13
    move-result v2

    .line 14
    if-ge v1, v2, :cond_5

    .line 16
    invoke-virtual {p2, v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCookie(I)Ljava/lang/Object;

    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;

    .line 22
    invoke-static {}, Lcom/android/server/accessibility/Flags;->proxyUseAppsOnVirtualDeviceListener()Z

    .line 25
    if-eqz p1, :cond_4

    .line 27
    const/4 v3, -0x1

    .line 28
    if-ne p1, v3, :cond_1

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    iget v3, v2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mUid:I

    .line 33
    invoke-virtual {p0, v3}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getDeviceIdsForUid(I)Landroid/util/ArraySet;

    .line 36
    move-result-object v3

    .line 37
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 44
    move-result v3

    .line 45
    iget v4, v2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mDeviceId:I

    .line 47
    const-string v5, " are "

    .line 49
    const-string v6, "ProxyManager"

    .line 51
    sget-boolean v7, Lcom/android/server/accessibility/ProxyManager;->DEBUG:Z

    .line 53
    iget-object v8, v2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mPackageNames:[Ljava/lang/String;

    .line 55
    if-eq v4, p1, :cond_3

    .line 57
    if-eqz v3, :cond_3

    .line 59
    if-eqz v7, :cond_2

    .line 61
    const-string v3, "Packages moved to device id "

    .line 63
    invoke-static {p1, v3, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    move-result-object v3

    .line 67
    invoke-static {v8}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    move-result-object v3

    .line 78
    invoke-static {v6, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_2
    iput p1, v2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mDeviceId:I

    .line 83
    goto :goto_1

    .line 84
    :cond_3
    if-ne v4, p1, :cond_4

    .line 86
    if-nez v3, :cond_4

    .line 88
    iput v0, v2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mDeviceId:I

    .line 90
    if-eqz v7, :cond_4

    .line 92
    const-string v2, "Packages moved to the default device from device id "

    .line 94
    invoke-static {p1, v2, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    move-result-object v2

    .line 98
    invoke-static {v8}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 101
    move-result-object v3

    .line 102
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    move-result-object v2

    .line 109
    invoke-static {v6, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 114
    goto :goto_0

    .line 115
    :cond_5
    return-void
.end method
