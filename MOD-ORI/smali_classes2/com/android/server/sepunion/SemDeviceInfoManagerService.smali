.class public final Lcom/android/server/sepunion/SemDeviceInfoManagerService;
.super Lcom/samsung/android/sepunion/IDeviceInfoManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/sepunion/AbsSemSystemService;
.implements Lcom/android/server/sepunion/AbsSemSystemServiceForS;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mCallbackLock:Ljava/lang/Object;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

.field public mIsWatchingPackageRemoved:Z

.field public final mListenerContainers:Landroid/util/SparseArray;

.field public final mLock:Ljava/lang/Object;

.field public final mSystemCallbacks:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/sepunion/IDeviceInfoManager$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mCallbackLock:Ljava/lang/Object;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mIsWatchingPackageRemoved:Z

    .line 20
    .line 21
    new-instance v0, Landroid/util/SparseArray;

    .line 22
    .line 23
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mListenerContainers:Landroid/util/SparseArray;

    .line 27
    .line 28
    new-instance v0, Landroid/util/SparseArray;

    .line 29
    .line 30
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mSystemCallbacks:Landroid/util/SparseArray;

    .line 34
    .line 35
    const-string v0, "SemDeviceInfoManagerService"

    .line 36
    .line 37
    invoke-static {v0, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mContext:Landroid/content/Context;

    .line 41
    .line 42
    const-string v0, "SemEventDelegationHandler"

    .line 43
    .line 44
    invoke-static {v0}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HandlerThread;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    new-instance v1, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    .line 49
    .line 50
    invoke-direct {v1, p1, p0, v0}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;-><init>(Landroid/content/Context;Lcom/android/server/sepunion/SemDeviceInfoManagerService;Landroid/os/HandlerThread;)V

    .line 51
    .line 52
    .line 53
    iput-object v1, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mHandler:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    .line 54
    .line 55
    return-void
.end method

.method public static getCustomEventKeys(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_2

    .line 11
    .line 12
    const-string/jumbo v1, "monitor_call_state"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    goto/16 :goto_2

    .line 25
    .line 26
    :cond_0
    const-string/jumbo v1, "monitor_activity_state"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    const-string p1, "component_list"

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    if-eqz p0, :cond_2

    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Landroid/content/ComponentName;

    .line 58
    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string/jumbo v2, "monitor_activity_state;"

    .line 62
    .line 63
    .line 64
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v2, ";"

    .line 75
    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_1
    const-string/jumbo v1, "monitor_package_state"

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-eqz p1, :cond_2

    .line 102
    .line 103
    const-string/jumbo p1, "package_list"

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    if-eqz p0, :cond_2

    .line 111
    .line 112
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    if-eqz p1, :cond_2

    .line 121
    .line 122
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    check-cast p1, Ljava/lang/String;

    .line 127
    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    const-string/jumbo v2, "monitor_package_state;"

    .line 131
    .line 132
    .line 133
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_2
    :goto_2
    return-object v0
.end method

.method public static getCustomEventMessageId(Ljava/lang/String;Z)I
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_4

    .line 6
    .line 7
    const-string/jumbo v0, "monitor_call_state"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    const/4 p0, 0x1

    .line 19
    return p0

    .line 20
    :cond_0
    const/4 p0, 0x2

    .line 21
    return p0

    .line 22
    :cond_1
    const-string/jumbo v0, "monitor_package_state"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    const/4 p0, 0x3

    .line 34
    return p0

    .line 35
    :cond_2
    const/4 p0, 0x4

    .line 36
    return p0

    .line 37
    :cond_3
    const-string/jumbo p1, "monitor_activity_state"

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    :cond_4
    const/4 p0, -0x1

    .line 44
    return p0
.end method


# virtual methods
.method public clearEventListenersAsUser(I)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Clear event listeners for User "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "SemDeviceInfoManagerService"

    .line 16
    .line 17
    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    const-string v1, "SemDeviceInfoManagerService"

    .line 21
    .line 22
    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    .line 26
    .line 27
    monitor-enter v0

    .line 28
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer(I)Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    new-instance v2, Ljava/util/ArrayList;

    .line 33
    .line 34
    iget-object v3, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_0

    .line 52
    .line 53
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    check-cast v3, Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {p0, p1, v3}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->unregisterReceiver(ILjava/lang/String;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    goto :goto_2

    .line 65
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    .line 66
    .line 67
    iget-object v1, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_1

    .line 85
    .line 86
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    check-cast v2, Landroid/net/Uri;

    .line 91
    .line 92
    invoke-virtual {p0, p1, v2}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->unregisterContentObserver(ILandroid/net/Uri;)V

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_1
    iget-object v1, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    .line 97
    .line 98
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :try_start_1
    iget-object v2, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mListenerContainers:Landroid/util/SparseArray;

    .line 100
    .line 101
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 102
    .line 103
    .line 104
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 105
    :try_start_2
    iget-object v1, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mCallbackLock:Ljava/lang/Object;

    .line 106
    .line 107
    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    :try_start_3
    iget-object p0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mSystemCallbacks:Landroid/util/SparseArray;

    .line 109
    .line 110
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 111
    .line 112
    .line 113
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 114
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 115
    return-void

    .line 116
    :catchall_1
    move-exception p0

    .line 117
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 118
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 119
    :catchall_2
    move-exception p0

    .line 120
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 121
    :try_start_8
    throw p0

    .line 122
    :goto_2
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 123
    throw p0
.end method

.method public final clearPendingIntentAsUser(Ljava/lang/String;I)V
    .locals 2

    .line 1
    const-string v0, "clearPendingIntentAsUser"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v1, "Clear pending intents for package = "

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", userId = "

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "SemDeviceInfoManagerService"

    .line 29
    .line 30
    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p2, p1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->clearPendingIntentAsUserInternal(ILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final clearPendingIntentAsUserInternal(ILjava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer(I)Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    new-instance v2, Ljava/util/ArrayList;

    .line 9
    .line 10
    iget-object v3, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 17
    .line 18
    .line 19
    new-instance v3, Ljava/util/ArrayList;

    .line 20
    .line 21
    iget-object v4, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 28
    .line 29
    .line 30
    new-instance v4, Ljava/util/ArrayList;

    .line 31
    .line 32
    iget-object v5, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-eqz v5, :cond_1

    .line 50
    .line 51
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    check-cast v5, Landroid/net/Uri;

    .line 56
    .line 57
    iget-object v6, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    .line 58
    .line 59
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    check-cast v6, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    .line 64
    .line 65
    iget-object v7, v6, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    .line 66
    .line 67
    invoke-virtual {v7, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    check-cast v7, Ljava/util/ArrayList;

    .line 72
    .line 73
    if-eqz v7, :cond_0

    .line 74
    .line 75
    iget-object v6, v6, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    .line 76
    .line 77
    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    if-eqz v6, :cond_0

    .line 82
    .line 83
    iget-object v6, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    .line 84
    .line 85
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, p1, v5}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->unregisterContentObserver(ILandroid/net/Uri;)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :catchall_0
    move-exception p0

    .line 93
    goto :goto_3

    .line 94
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    if-eqz v3, :cond_3

    .line 103
    .line 104
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    check-cast v3, Ljava/lang/String;

    .line 109
    .line 110
    iget-object v5, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    .line 111
    .line 112
    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    check-cast v5, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    .line 117
    .line 118
    iget-object v6, v5, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    .line 119
    .line 120
    invoke-virtual {v6, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    check-cast v6, Ljava/util/ArrayList;

    .line 125
    .line 126
    if-eqz v6, :cond_2

    .line 127
    .line 128
    iget-object v5, v5, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    .line 129
    .line 130
    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    .line 131
    .line 132
    .line 133
    move-result v5

    .line 134
    if-eqz v5, :cond_2

    .line 135
    .line 136
    iget-object v5, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    .line 137
    .line 138
    invoke-virtual {v5, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0, p1, v3}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->unregisterReceiver(ILjava/lang/String;)V

    .line 142
    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    :cond_4
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    if-eqz p1, :cond_5

    .line 154
    .line 155
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    check-cast p1, Ljava/lang/String;

    .line 160
    .line 161
    iget-object v2, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    .line 162
    .line 163
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    check-cast v2, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    .line 168
    .line 169
    iget-object v3, v2, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    .line 170
    .line 171
    invoke-virtual {v3, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    check-cast v3, Ljava/util/ArrayList;

    .line 176
    .line 177
    if-eqz v3, :cond_4

    .line 178
    .line 179
    iget-object v2, v2, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    .line 180
    .line 181
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    if-eqz v2, :cond_4

    .line 186
    .line 187
    iget-object v2, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    .line 188
    .line 189
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    goto :goto_2

    .line 193
    :cond_5
    monitor-exit v0

    .line 194
    return-void

    .line 195
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    throw p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8

    .line 1
    const-string v0, "Listener containers(Users: "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    const-string v2, "\n##### SEM DEVICE INFO MANAGER SERVICE #####\n##### (dumpsys sepunion semeventdelegator) #####\n"

    .line 7
    .line 8
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mListenerContainers:Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v0, "):"

    .line 26
    .line 27
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    :goto_0
    if-ge v0, v2, :cond_9

    .line 39
    .line 40
    iget-object v3, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mListenerContainers:Landroid/util/SparseArray;

    .line 41
    .line 42
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    new-instance v4, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v5, "  Listener container for User "

    .line 52
    .line 53
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v5, ":"

    .line 60
    .line 61
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object v4, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mListenerContainers:Landroid/util/SparseArray;

    .line 72
    .line 73
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    check-cast v3, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    .line 78
    .line 79
    if-eqz v3, :cond_8

    .line 80
    .line 81
    iget-object v4, v3, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    .line 82
    .line 83
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    if-eqz v4, :cond_2

    .line 88
    .line 89
    invoke-interface {v4}, Ljava/util/Set;->size()I

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    if-lez v5, :cond_2

    .line 94
    .line 95
    new-instance v5, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    const-string v6, "    Custom Event Map(registered event: "

    .line 101
    .line 102
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-interface {v4}, Ljava/util/Set;->size()I

    .line 106
    .line 107
    .line 108
    move-result v6

    .line 109
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v6, "):"

    .line 113
    .line 114
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    if-eqz v5, :cond_1

    .line 133
    .line 134
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    check-cast v5, Ljava/lang/String;

    .line 139
    .line 140
    new-instance v6, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .line 144
    .line 145
    const-string v7, "      Event: "

    .line 146
    .line 147
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v7, ":"

    .line 154
    .line 155
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    iget-object v6, v3, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    .line 166
    .line 167
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    check-cast v5, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    .line 172
    .line 173
    if-eqz v5, :cond_0

    .line 174
    .line 175
    invoke-virtual {v5}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->toStringForDump()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v5

    .line 179
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    goto :goto_1

    .line 183
    :catchall_0
    move-exception p0

    .line 184
    goto/16 :goto_4

    .line 185
    .line 186
    :cond_1
    const-string v4, ""

    .line 187
    .line 188
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    :cond_2
    iget-object v4, v3, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    .line 192
    .line 193
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 194
    .line 195
    .line 196
    move-result-object v4

    .line 197
    if-eqz v4, :cond_5

    .line 198
    .line 199
    invoke-interface {v4}, Ljava/util/Set;->size()I

    .line 200
    .line 201
    .line 202
    move-result v5

    .line 203
    if-lez v5, :cond_5

    .line 204
    .line 205
    new-instance v5, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    .line 209
    .line 210
    const-string v6, "    Intent Action Map(registered action: "

    .line 211
    .line 212
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-interface {v4}, Ljava/util/Set;->size()I

    .line 216
    .line 217
    .line 218
    move-result v6

    .line 219
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    const-string v6, "):"

    .line 223
    .line 224
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v5

    .line 231
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 235
    .line 236
    .line 237
    move-result-object v4

    .line 238
    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 239
    .line 240
    .line 241
    move-result v5

    .line 242
    if-eqz v5, :cond_4

    .line 243
    .line 244
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v5

    .line 248
    check-cast v5, Ljava/lang/String;

    .line 249
    .line 250
    new-instance v6, Ljava/lang/StringBuilder;

    .line 251
    .line 252
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    .line 254
    .line 255
    const-string v7, "      Action: "

    .line 256
    .line 257
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    const-string v7, ":"

    .line 264
    .line 265
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v6

    .line 272
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    iget-object v6, v3, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    .line 276
    .line 277
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v5

    .line 281
    check-cast v5, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    .line 282
    .line 283
    if-eqz v5, :cond_3

    .line 284
    .line 285
    invoke-virtual {v5}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->toStringForDump()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v5

    .line 289
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    goto :goto_2

    .line 293
    :cond_4
    const-string v4, ""

    .line 294
    .line 295
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    :cond_5
    iget-object v4, v3, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    .line 299
    .line 300
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 301
    .line 302
    .line 303
    move-result-object v4

    .line 304
    if-eqz v4, :cond_7

    .line 305
    .line 306
    invoke-interface {v4}, Ljava/util/Set;->size()I

    .line 307
    .line 308
    .line 309
    move-result v5

    .line 310
    if-lez v5, :cond_7

    .line 311
    .line 312
    new-instance v5, Ljava/lang/StringBuilder;

    .line 313
    .line 314
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 315
    .line 316
    .line 317
    const-string v6, "    URI Event Map(registered uri: "

    .line 318
    .line 319
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-interface {v4}, Ljava/util/Set;->size()I

    .line 323
    .line 324
    .line 325
    move-result v6

    .line 326
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    const-string v6, "):"

    .line 330
    .line 331
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v5

    .line 338
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 342
    .line 343
    .line 344
    move-result-object v4

    .line 345
    :cond_6
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 346
    .line 347
    .line 348
    move-result v5

    .line 349
    if-eqz v5, :cond_7

    .line 350
    .line 351
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object v5

    .line 355
    check-cast v5, Landroid/net/Uri;

    .line 356
    .line 357
    new-instance v6, Ljava/lang/StringBuilder;

    .line 358
    .line 359
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 360
    .line 361
    .line 362
    const-string v7, "      Uri: "

    .line 363
    .line 364
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    const-string v7, ":"

    .line 371
    .line 372
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v6

    .line 379
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    iget-object v6, v3, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    .line 383
    .line 384
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v5

    .line 388
    check-cast v5, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    .line 389
    .line 390
    if-eqz v5, :cond_6

    .line 391
    .line 392
    invoke-virtual {v5}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->toStringForDump()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v5

    .line 396
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    goto :goto_3

    .line 400
    :cond_7
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 401
    .line 402
    .line 403
    :cond_8
    add-int/lit8 v0, v0, 0x1

    .line 404
    .line 405
    goto/16 :goto_0

    .line 406
    .line 407
    :cond_9
    const-string p0, "SemDeviceInfoManagerService"

    .line 408
    .line 409
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/sepunion/Log;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    monitor-exit v1

    .line 413
    return-void

    .line 414
    :goto_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    throw p0
.end method

.method public final enforceCallingPermission(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object p0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const/16 v1, 0x3e8

    .line 12
    .line 13
    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-nez p0, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    const-string p0, "Permission denied: "

    .line 21
    .line 22
    const-string v1, " callingUid="

    .line 23
    .line 24
    const-string v2, ", you need system uid of to be signed with the system certificate."

    .line 25
    .line 26
    invoke-static {v0, p0, p1, v1, v2}, Lcom/android/server/AppStateTrackerImpl$MyHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const-string p1, "SemDeviceInfoManagerService"

    .line 31
    .line 32
    invoke-static {p1, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    new-instance p1, Ljava/lang/SecurityException;

    .line 36
    .line 37
    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p1
.end method

.method public getEventProcessHandler()Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mHandler:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getListenerContainer(I)Lcom/android/server/sepunion/eventdelegator/ListenerContainer;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mListenerContainers:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    .line 15
    .line 16
    invoke-direct {v1, p1}, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;-><init>(I)V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mListenerContainers:Landroid/util/SparseArray;

    .line 20
    .line 21
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    :goto_0
    monitor-exit v0

    .line 28
    return-object v1

    .line 29
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0
.end method

.method public final getNumPendingIntentAsUser(ILjava/lang/String;I)I
    .locals 6

    .line 1
    const-string v0, "getNumPendingIntentAsUser"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer(I)Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    iget-object p3, p0, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 16
    .line 17
    .line 18
    move-result-object p3

    .line 19
    const/4 v1, 0x0

    .line 20
    if-eqz p3, :cond_1

    .line 21
    .line 22
    invoke-interface {p3}, Ljava/util/Set;->size()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-lez v2, :cond_1

    .line 27
    .line 28
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    move v2, v1

    .line 33
    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Ljava/lang/String;

    .line 44
    .line 45
    iget-object v4, p0, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    .line 46
    .line 47
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    check-cast v3, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    .line 52
    .line 53
    if-eqz v3, :cond_0

    .line 54
    .line 55
    iget-object v3, v3, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    .line 56
    .line 57
    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    check-cast v3, Ljava/util/ArrayList;

    .line 62
    .line 63
    if-eqz v3, :cond_0

    .line 64
    .line 65
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    add-int/2addr v2, v3

    .line 70
    goto :goto_0

    .line 71
    :catchall_0
    move-exception p0

    .line 72
    goto/16 :goto_3

    .line 73
    .line 74
    :cond_1
    move v2, v1

    .line 75
    :cond_2
    iget-object p3, p0, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    .line 76
    .line 77
    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 78
    .line 79
    .line 80
    move-result-object p3

    .line 81
    if-eqz p3, :cond_4

    .line 82
    .line 83
    invoke-interface {p3}, Ljava/util/Set;->size()I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-lez v3, :cond_4

    .line 88
    .line 89
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 90
    .line 91
    .line 92
    move-result-object p3

    .line 93
    move v3, v1

    .line 94
    :cond_3
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    if-eqz v4, :cond_5

    .line 99
    .line 100
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    check-cast v4, Ljava/lang/String;

    .line 105
    .line 106
    iget-object v5, p0, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    .line 107
    .line 108
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    check-cast v4, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    .line 113
    .line 114
    if-eqz v4, :cond_3

    .line 115
    .line 116
    iget-object v4, v4, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    .line 117
    .line 118
    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    check-cast v4, Ljava/util/ArrayList;

    .line 123
    .line 124
    if-eqz v4, :cond_3

    .line 125
    .line 126
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    add-int/2addr v3, v4

    .line 131
    goto :goto_1

    .line 132
    :cond_4
    move v3, v1

    .line 133
    :cond_5
    iget-object p3, p0, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    .line 134
    .line 135
    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 136
    .line 137
    .line 138
    move-result-object p3

    .line 139
    if-eqz p3, :cond_7

    .line 140
    .line 141
    invoke-interface {p3}, Ljava/util/Set;->size()I

    .line 142
    .line 143
    .line 144
    move-result v4

    .line 145
    if-lez v4, :cond_7

    .line 146
    .line 147
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 148
    .line 149
    .line 150
    move-result-object p3

    .line 151
    :cond_6
    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    if-eqz v4, :cond_7

    .line 156
    .line 157
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    check-cast v4, Landroid/net/Uri;

    .line 162
    .line 163
    iget-object v5, p0, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    .line 164
    .line 165
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    check-cast v4, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    .line 170
    .line 171
    if-eqz v4, :cond_6

    .line 172
    .line 173
    iget-object v4, v4, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    .line 174
    .line 175
    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    check-cast v4, Ljava/util/ArrayList;

    .line 180
    .line 181
    if-eqz v4, :cond_6

    .line 182
    .line 183
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 184
    .line 185
    .line 186
    move-result v4

    .line 187
    add-int/2addr v1, v4

    .line 188
    goto :goto_2

    .line 189
    :cond_7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    if-eqz p1, :cond_b

    .line 191
    .line 192
    const/4 p0, 0x1

    .line 193
    if-eq p1, p0, :cond_a

    .line 194
    .line 195
    const/4 p0, 0x2

    .line 196
    if-eq p1, p0, :cond_9

    .line 197
    .line 198
    const/4 p0, 0x3

    .line 199
    if-eq p1, p0, :cond_8

    .line 200
    .line 201
    const-string p0, "SemDeviceInfoManagerService"

    .line 202
    .line 203
    new-instance p2, Ljava/lang/StringBuilder;

    .line 204
    .line 205
    const-string p3, "getNumPendingIntent(): Invalid type request. Requested type = "

    .line 206
    .line 207
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    .line 219
    .line 220
    const/4 p0, -0x1

    .line 221
    return p0

    .line 222
    :cond_8
    return v2

    .line 223
    :cond_9
    return v3

    .line 224
    :cond_a
    return v1

    .line 225
    :cond_b
    add-int/2addr v1, v3

    .line 226
    add-int/2addr v1, v2

    .line 227
    return v1

    .line 228
    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    throw p0
.end method

.method public final getSemSystemService(Ljava/lang/String;)Lcom/android/server/sepunion/AbsSemSystemService;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final getSystemCallbacks(I)Lcom/android/server/sepunion/SemDeviceInfoManagerService$SystemCallbacks;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mCallbackLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mSystemCallbacks:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService$SystemCallbacks;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService$SystemCallbacks;

    .line 15
    .line 16
    invoke-direct {v1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService$SystemCallbacks;-><init>()V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mSystemCallbacks:Landroid/util/SparseArray;

    .line 20
    .line 21
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    :goto_0
    monitor-exit v0

    .line 28
    return-object v1

    .line 29
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0
.end method

.method public final getSystemListenerContainer()Lcom/android/server/sepunion/eventdelegator/ListenerContainer;
    .locals 1

    .line 1
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer(I)Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final onBootPhase(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onCleanupUser(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    throw p1
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onDestroy()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onStart()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onStartUser(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onStopUser(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onSwitchUser(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onUnlockUser(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onUserStarting(I)V
    .locals 7

    .line 1
    iget-boolean p1, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mIsWatchingPackageRemoved:Z

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    new-instance v3, Landroid/content/IntentFilter;

    .line 6
    .line 7
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string p1, "android.intent.action.PACKAGE_REMOVED_INTERNAL"

    .line 11
    .line 12
    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string/jumbo p1, "package"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    new-instance v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService$1;

    .line 24
    .line 25
    invoke-direct {v1, p0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService$1;-><init>(Lcom/android/server/sepunion/SemDeviceInfoManagerService;)V

    .line 26
    .line 27
    .line 28
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 29
    .line 30
    iget-object v5, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mHandler:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    .line 31
    .line 32
    const/4 v6, 0x2

    .line 33
    const/4 v4, 0x0

    .line 34
    invoke-virtual/range {v0 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    const/4 p1, 0x1

    .line 38
    iput-boolean p1, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mIsWatchingPackageRemoved:Z

    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method public final onUserStopped(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onUserStopping(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->clearEventListenersAsUser(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onUserSwitching(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onUserUnlocked(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onUserUnlocking(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final registerContentObserver(ZLandroid/net/Uri;I)V
    .locals 10

    .line 1
    const-string v0, "Creating new UnionContentObserver for the uri:"

    .line 2
    .line 3
    if-ltz p3, :cond_2

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mCallbackLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v1

    .line 11
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getSystemCallbacks(I)Lcom/android/server/sepunion/SemDeviceInfoManagerService$SystemCallbacks;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget-object v3, v2, Lcom/android/server/sepunion/SemDeviceInfoManagerService$SystemCallbacks;->mContentObservers:Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    if-nez v3, :cond_1

    .line 22
    .line 23
    const-string v3, "SemDeviceInfoManagerService"

    .line 24
    .line 25
    new-instance v4, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v3, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    new-instance v8, Lcom/android/server/sepunion/eventdelegator/UnionContentObserver;

    .line 41
    .line 42
    iget-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mHandler:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    .line 43
    .line 44
    invoke-direct {v8, v0, p0}, Lcom/android/server/sepunion/eventdelegator/UnionContentObserver;-><init>(Landroid/os/Handler;Lcom/android/server/sepunion/SemDeviceInfoManagerService;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, v2, Lcom/android/server/sepunion/SemDeviceInfoManagerService$SystemCallbacks;->mContentObservers:Ljava/util/HashMap;

    .line 48
    .line 49
    invoke-virtual {v0, p2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mHandler:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    .line 53
    .line 54
    new-instance v2, Lcom/android/server/sepunion/SemDeviceInfoManagerService$$ExternalSyntheticLambda2;

    .line 55
    .line 56
    move-object v4, v2

    .line 57
    move-object v5, p0

    .line 58
    move-object v6, p2

    .line 59
    move v7, p1

    .line 60
    move v9, p3

    .line 61
    invoke-direct/range {v4 .. v9}, Lcom/android/server/sepunion/SemDeviceInfoManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/sepunion/SemDeviceInfoManagerService;Landroid/net/Uri;ZLcom/android/server/sepunion/eventdelegator/UnionContentObserver;I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catchall_0
    move-exception p0

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    :goto_0
    monitor-exit v1

    .line 71
    return-void

    .line 72
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    throw p0

    .line 74
    :cond_2
    :goto_2
    return-void
.end method

.method public final registerPendingIntent(Landroid/content/IntentFilter;Landroid/app/PendingIntent;ILjava/util/List;Ljava/lang/String;I)V
    .locals 1

    .line 1
    const-string/jumbo v0, "registerPendingIntent"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->registerPendingIntentInternal(Landroid/content/IntentFilter;Landroid/app/PendingIntent;ILjava/util/List;Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final registerPendingIntentForCustomEventAsUser(Ljava/lang/String;Landroid/app/PendingIntent;Landroid/os/Bundle;Ljava/lang/String;I)V
    .locals 7

    .line 1
    if-eqz p1, :cond_8

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    goto/16 :goto_3

    .line 6
    .line 7
    :cond_0
    if-nez p3, :cond_2

    .line 8
    .line 9
    const-string/jumbo v0, "monitor_activity_state"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    const-string/jumbo v0, "monitor_package_state"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    :cond_1
    return-void

    .line 28
    :cond_2
    const-string/jumbo v0, "registerPendingIntentForCustomEventAsUser"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v1, "Register custom event = "

    .line 37
    .line 38
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v1, ", package = "

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v1, ", userId = "

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const-string v1, "SemDeviceInfoManagerService"

    .line 65
    .line 66
    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    const-string v1, "SemDeviceInfoManagerService"

    .line 70
    .line 71
    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-static {p3, p1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getCustomEventKeys(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    .line 79
    .line 80
    monitor-enter v1

    .line 81
    :try_start_0
    invoke-virtual {p0, p5}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer(I)Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    .line 82
    .line 83
    .line 84
    move-result-object p5

    .line 85
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-eqz v2, :cond_7

    .line 94
    .line 95
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    check-cast v2, Ljava/lang/String;

    .line 100
    .line 101
    iget-object v3, p5, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    .line 102
    .line 103
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    const/4 v4, 0x0

    .line 108
    const/4 v5, 0x0

    .line 109
    if-eqz v3, :cond_4

    .line 110
    .line 111
    iget-object v2, p5, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    .line 112
    .line 113
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    check-cast v2, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    .line 118
    .line 119
    if-eqz v2, :cond_3

    .line 120
    .line 121
    new-instance v3, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;

    .line 122
    .line 123
    invoke-direct {v3, p2, v5, v4}, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;-><init>(Landroid/app/PendingIntent;ILjava/util/ArrayList;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2, p4, v3}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->add(Ljava/lang/String;Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;)Z

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :catchall_0
    move-exception p0

    .line 131
    goto :goto_2

    .line 132
    :cond_4
    iget-object v3, p5, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    .line 133
    .line 134
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 143
    .line 144
    .line 145
    move-result v6

    .line 146
    if-eqz v6, :cond_6

    .line 147
    .line 148
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    check-cast v6, Ljava/lang/String;

    .line 153
    .line 154
    invoke-virtual {v6, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 155
    .line 156
    .line 157
    move-result v6

    .line 158
    if-eqz v6, :cond_5

    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_6
    const/4 v3, 0x1

    .line 162
    invoke-static {p1, v3}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getCustomEventMessageId(Ljava/lang/String;Z)I

    .line 163
    .line 164
    .line 165
    move-result v3

    .line 166
    iget-object v6, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mHandler:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    .line 167
    .line 168
    invoke-virtual {v6, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    invoke-virtual {v3, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 176
    .line 177
    .line 178
    :goto_1
    new-instance v3, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    .line 179
    .line 180
    invoke-direct {v3}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;-><init>()V

    .line 181
    .line 182
    .line 183
    new-instance v6, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;

    .line 184
    .line 185
    invoke-direct {v6, p2, v5, v4}, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;-><init>(Landroid/app/PendingIntent;ILjava/util/ArrayList;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v3, p4, v6}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->add(Ljava/lang/String;Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;)Z

    .line 189
    .line 190
    .line 191
    iget-object v4, p5, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    .line 192
    .line 193
    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    goto :goto_0

    .line 197
    :cond_7
    monitor-exit v1

    .line 198
    return-void

    .line 199
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    throw p0

    .line 201
    :cond_8
    :goto_3
    return-void
.end method

.method public final registerPendingIntentForIntentAsUser(Landroid/content/IntentFilter;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    .locals 8

    .line 1
    const-string/jumbo v0, "registerPendingIntentForIntentAsUser"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    const/4 v5, 0x0

    .line 9
    move-object v1, p0

    .line 10
    move-object v2, p1

    .line 11
    move-object v3, p2

    .line 12
    move-object v6, p3

    .line 13
    move v7, p4

    .line 14
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->registerPendingIntentInternal(Landroid/content/IntentFilter;Landroid/app/PendingIntent;ILjava/util/List;Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final registerPendingIntentForIntentForAllUsers(Landroid/content/IntentFilter;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    .locals 0

    .line 1
    const-string/jumbo p1, "registerPendingIntentForIntentForAllUsers"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string p0, "SemDeviceInfoManagerService"

    .line 8
    .line 9
    const-string p1, "Do not support observing Intent for all users"

    .line 10
    .line 11
    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final registerPendingIntentForUriAsUser(Landroid/net/Uri;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    .locals 6

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    if-eqz p2, :cond_2

    .line 4
    .line 5
    if-nez p3, :cond_0

    .line 6
    .line 7
    goto/16 :goto_2

    .line 8
    .line 9
    :cond_0
    const-string/jumbo v0, "registerPendingIntentForUriAsUser"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, "Register uri = "

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v1, ", package = "

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, ", userId = "

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-string v1, "SemDeviceInfoManagerService"

    .line 50
    .line 51
    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    const-string v1, "SemDeviceInfoManagerService"

    .line 55
    .line 56
    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    .line 60
    .line 61
    monitor-enter v0

    .line 62
    :try_start_0
    invoke-virtual {p0, p4}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer(I)Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    iget-object v2, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    .line 67
    .line 68
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    const/4 v3, 0x0

    .line 73
    const/4 v4, 0x0

    .line 74
    if-eqz v2, :cond_1

    .line 75
    .line 76
    iget-object p0, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    .line 77
    .line 78
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    check-cast p0, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    .line 83
    .line 84
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    new-instance p1, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;

    .line 88
    .line 89
    invoke-direct {p1, p2, v4, v3}, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;-><init>(Landroid/app/PendingIntent;ILjava/util/ArrayList;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, p3, p1}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->add(Ljava/lang/String;Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;)Z

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :catchall_0
    move-exception p0

    .line 97
    goto :goto_1

    .line 98
    :cond_1
    new-instance v2, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    .line 99
    .line 100
    invoke-direct {v2}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;-><init>()V

    .line 101
    .line 102
    .line 103
    new-instance v5, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;

    .line 104
    .line 105
    invoke-direct {v5, p2, v4, v3}, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;-><init>(Landroid/app/PendingIntent;ILjava/util/ArrayList;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2, p3, v5}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->add(Ljava/lang/String;Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;)Z

    .line 109
    .line 110
    .line 111
    iget-object p3, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    .line 112
    .line 113
    invoke-virtual {p3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    const-string/jumbo p3, "notify_for_descendants"

    .line 121
    .line 122
    .line 123
    invoke-virtual {p2, p3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 124
    .line 125
    .line 126
    move-result p2

    .line 127
    invoke-virtual {p0, p2, p1, p4}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->registerContentObserver(ZLandroid/net/Uri;I)V

    .line 128
    .line 129
    .line 130
    :goto_0
    monitor-exit v0

    .line 131
    return-void

    .line 132
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    throw p0

    .line 134
    :cond_2
    :goto_2
    return-void
.end method

.method public final registerPendingIntentInternal(Landroid/content/IntentFilter;Landroid/app/PendingIntent;ILjava/util/List;Ljava/lang/String;I)V
    .locals 6

    .line 1
    if-eqz p1, :cond_5

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_5

    .line 8
    .line 9
    if-eqz p2, :cond_5

    .line 10
    .line 11
    if-nez p5, :cond_0

    .line 12
    .line 13
    goto/16 :goto_5

    .line 14
    .line 15
    :cond_0
    if-eqz p3, :cond_1

    .line 16
    .line 17
    and-int/lit8 v0, p3, 0x3

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    move v3, v2

    .line 33
    :goto_0
    if-ge v3, v0, :cond_2

    .line 34
    .line 35
    new-instance v4, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v3}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v5, ", "

    .line 48
    .line 49
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    add-int/lit8 v3, v3, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v4, "Register intent = "

    .line 65
    .line 66
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v1, " package = "

    .line 77
    .line 78
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v1, ", userId = "

    .line 85
    .line 86
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v1, ", flag = "

    .line 90
    .line 91
    const-string v4, ", conditions = "

    .line 92
    .line 93
    invoke-static {p6, p3, v1, v4, v3}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    const-string v3, "SemDeviceInfoManagerService"

    .line 104
    .line 105
    invoke-static {v3, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    const-string v3, "SemDeviceInfoManagerService"

    .line 109
    .line 110
    invoke-static {v3, v1}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    new-instance v1, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;

    .line 114
    .line 115
    if-nez p3, :cond_3

    .line 116
    .line 117
    const/4 p4, 0x0

    .line 118
    goto :goto_1

    .line 119
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-direct {v3, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 122
    .line 123
    .line 124
    move-object p4, v3

    .line 125
    :goto_1
    invoke-direct {v1, p2, p3, p4}, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;-><init>(Landroid/app/PendingIntent;ILjava/util/ArrayList;)V

    .line 126
    .line 127
    .line 128
    :goto_2
    if-ge v2, v0, :cond_5

    .line 129
    .line 130
    iget-object p2, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    .line 131
    .line 132
    monitor-enter p2

    .line 133
    :try_start_0
    invoke-virtual {p0, p6}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer(I)Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    .line 134
    .line 135
    .line 136
    move-result-object p3

    .line 137
    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p4

    .line 141
    iget-object v3, p3, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    .line 142
    .line 143
    invoke-virtual {v3, p4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    xor-int/lit8 v3, v3, 0x1

    .line 148
    .line 149
    if-eqz v3, :cond_4

    .line 150
    .line 151
    new-instance v3, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    .line 152
    .line 153
    invoke-direct {v3}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;-><init>()V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v3, p5, v1}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->add(Ljava/lang/String;Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;)Z

    .line 157
    .line 158
    .line 159
    iget-object p3, p3, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    .line 160
    .line 161
    invoke-virtual {p3, p4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0, p6, p4}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->registerReceiver(ILjava/lang/String;)V

    .line 165
    .line 166
    .line 167
    goto :goto_3

    .line 168
    :catchall_0
    move-exception p0

    .line 169
    goto :goto_4

    .line 170
    :cond_4
    iget-object p3, p3, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    .line 171
    .line 172
    invoke-virtual {p3, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object p3

    .line 176
    check-cast p3, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    .line 177
    .line 178
    invoke-virtual {p3, p5, v1}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->add(Ljava/lang/String;Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;)Z

    .line 179
    .line 180
    .line 181
    :goto_3
    monitor-exit p2

    .line 182
    add-int/lit8 v2, v2, 0x1

    .line 183
    .line 184
    goto :goto_2

    .line 185
    :goto_4
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    throw p0

    .line 187
    :cond_5
    :goto_5
    return-void
.end method

.method public final registerReceiver(ILjava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "Adding new UnionBroadcastReceiver for the action: "

    .line 2
    .line 3
    if-ltz p1, :cond_2

    .line 4
    .line 5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto :goto_2

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mCallbackLock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v1

    .line 15
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getSystemCallbacks(I)Lcom/android/server/sepunion/SemDeviceInfoManagerService$SystemCallbacks;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-object v3, v2, Lcom/android/server/sepunion/SemDeviceInfoManagerService$SystemCallbacks;->mBroadcastReceivers:Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    if-nez v3, :cond_1

    .line 26
    .line 27
    const-string v3, "SemDeviceInfoManagerService"

    .line 28
    .line 29
    new-instance v4, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v0, " in User "

    .line 38
    .line 39
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-static {v3, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    new-instance v0, Lcom/android/server/sepunion/eventdelegator/UnionContentBroadcastReceiver;

    .line 53
    .line 54
    invoke-direct {v0, p0}, Lcom/android/server/sepunion/eventdelegator/UnionContentBroadcastReceiver;-><init>(Lcom/android/server/sepunion/SemDeviceInfoManagerService;)V

    .line 55
    .line 56
    .line 57
    iget-object v2, v2, Lcom/android/server/sepunion/SemDeviceInfoManagerService$SystemCallbacks;->mBroadcastReceivers:Ljava/util/HashMap;

    .line 58
    .line 59
    invoke-virtual {v2, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    iget-object v2, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mHandler:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    .line 63
    .line 64
    new-instance v3, Lcom/android/server/sepunion/SemDeviceInfoManagerService$$ExternalSyntheticLambda0;

    .line 65
    .line 66
    invoke-direct {v3, p0, p2, v0, p1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/sepunion/SemDeviceInfoManagerService;Ljava/lang/String;Lcom/android/server/sepunion/eventdelegator/UnionContentBroadcastReceiver;I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catchall_0
    move-exception p0

    .line 74
    goto :goto_1

    .line 75
    :cond_1
    :goto_0
    monitor-exit v1

    .line 76
    return-void

    .line 77
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    throw p0

    .line 79
    :cond_2
    :goto_2
    return-void
.end method

.method public final reportCallStateChanged(Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;ILjava/lang/String;)V
    .locals 10

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p1, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Ljava/lang/String;

    .line 28
    .line 29
    iget-object v3, p1, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    .line 30
    .line 31
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_1

    .line 46
    .line 47
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    check-cast v3, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;

    .line 52
    .line 53
    iget-object v4, v3, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;->mPendingIntent:Landroid/app/PendingIntent;

    .line 54
    .line 55
    invoke-virtual {v4}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    const-string v3, "call_state"

    .line 60
    .line 61
    invoke-virtual {v7, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 62
    .line 63
    .line 64
    const-string/jumbo v3, "phone_number"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v7, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .line 69
    .line 70
    :try_start_1
    iget-object v5, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mContext:Landroid/content/Context;

    .line 71
    .line 72
    const/4 v8, 0x0

    .line 73
    const/4 v9, 0x0

    .line 74
    const/4 v6, 0x0

    .line 75
    invoke-virtual/range {v4 .. v9}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    .line 76
    .line 77
    .line 78
    new-instance v3, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    const-string v4, "Report call state changed, state = "

    .line 84
    .line 85
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    const-string v4, "SemDeviceInfoManagerService"

    .line 96
    .line 97
    invoke-static {v4, v3}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    const-string v4, "SemDeviceInfoManagerService"

    .line 101
    .line 102
    invoke-static {v4, v3}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :catchall_0
    move-exception p0

    .line 107
    goto :goto_1

    .line 108
    :catch_0
    move-exception v3

    .line 109
    :try_start_2
    invoke-virtual {v3}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_2
    monitor-exit v0

    .line 114
    return-void

    .line 115
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    throw p0
.end method

.method public final reportComponentStateChanged(Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;Landroid/content/ComponentName;Z)V
    .locals 10

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p1, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Ljava/lang/String;

    .line 28
    .line 29
    iget-object v3, p1, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    .line 30
    .line 31
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_1

    .line 46
    .line 47
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    check-cast v3, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;

    .line 52
    .line 53
    iget-object v4, v3, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;->mPendingIntent:Landroid/app/PendingIntent;

    .line 54
    .line 55
    invoke-virtual {v4}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    const-string v3, "component"

    .line 60
    .line 61
    invoke-virtual {v7, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 62
    .line 63
    .line 64
    const-string v3, "is_resumed"

    .line 65
    .line 66
    invoke-virtual {v7, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .line 68
    .line 69
    :try_start_1
    iget-object v5, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mContext:Landroid/content/Context;

    .line 70
    .line 71
    const/4 v8, 0x0

    .line 72
    const/4 v9, 0x0

    .line 73
    const/4 v6, 0x0

    .line 74
    invoke-virtual/range {v4 .. v9}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    .line 75
    .line 76
    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    const-string v4, "Report component state changed, componentName = "

    .line 83
    .line 84
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    const-string v4, "SemDeviceInfoManagerService"

    .line 95
    .line 96
    invoke-static {v4, v3}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    const-string v4, "SemDeviceInfoManagerService"

    .line 100
    .line 101
    invoke-static {v4, v3}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :catchall_0
    move-exception p0

    .line 106
    goto :goto_1

    .line 107
    :catch_0
    move-exception v3

    .line 108
    :try_start_2
    invoke-virtual {v3}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_2
    monitor-exit v0

    .line 113
    return-void

    .line 114
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    throw p0
.end method

.method public final reportPackageStateChanged(Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p1, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Ljava/lang/String;

    .line 28
    .line 29
    iget-object v3, p1, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    .line 30
    .line 31
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_1

    .line 46
    .line 47
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    check-cast v3, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;

    .line 52
    .line 53
    iget-object v4, v3, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;->mPendingIntent:Landroid/app/PendingIntent;

    .line 54
    .line 55
    invoke-virtual {v4}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    const-string/jumbo v3, "package_name"

    .line 60
    .line 61
    .line 62
    invoke-virtual {v7, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    .line 64
    .line 65
    const-string/jumbo v3, "package_state"

    .line 66
    .line 67
    .line 68
    invoke-virtual {v7, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .line 70
    .line 71
    :try_start_1
    iget-object v5, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mContext:Landroid/content/Context;

    .line 72
    .line 73
    const/4 v8, 0x0

    .line 74
    const/4 v9, 0x0

    .line 75
    const/4 v6, 0x0

    .line 76
    invoke-virtual/range {v4 .. v9}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    .line 77
    .line 78
    .line 79
    new-instance v3, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v4, "Report package changed for "

    .line 85
    .line 86
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    const-string v4, "SemDeviceInfoManagerService"

    .line 97
    .line 98
    invoke-static {v4, v3}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    const-string v4, "SemDeviceInfoManagerService"

    .line 102
    .line 103
    invoke-static {v4, v3}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :catchall_0
    move-exception p0

    .line 108
    goto :goto_1

    .line 109
    :catch_0
    move-exception v3

    .line 110
    :try_start_2
    invoke-virtual {v3}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_2
    monitor-exit v0

    .line 115
    return-void

    .line 116
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 117
    throw p0
.end method

.method public final reportUriChanged(Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;ZLandroid/net/Uri;IZ)V
    .locals 9

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter p2

    .line 7
    :try_start_0
    iget-object v0, p1, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_6

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ljava/lang/String;

    .line 28
    .line 29
    iget-object v2, p1, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    .line 30
    .line 31
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;

    .line 52
    .line 53
    iget-object v3, v2, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;->mPendingIntent:Landroid/app/PendingIntent;

    .line 54
    .line 55
    invoke-virtual {v3}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    const-string/jumbo v4, "uri"

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 63
    .line 64
    .line 65
    const/4 v4, 0x0

    .line 66
    if-eqz p5, :cond_3

    .line 67
    .line 68
    const-string/jumbo v5, "notify_for_descendants"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 72
    .line 73
    .line 74
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    goto :goto_1

    .line 76
    :catchall_0
    move-exception p0

    .line 77
    goto :goto_4

    .line 78
    :cond_3
    :goto_1
    if-nez v4, :cond_4

    .line 79
    .line 80
    if-nez p5, :cond_2

    .line 81
    .line 82
    :cond_4
    if-eqz v4, :cond_5

    .line 83
    .line 84
    :try_start_1
    const-string v4, "SemDeviceInfoManagerService"

    .line 85
    .line 86
    const-string v5, "Notifying descendants changes."

    .line 87
    .line 88
    invoke-static {v4, v5}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    goto :goto_2

    .line 92
    :catch_0
    move-exception v2

    .line 93
    goto :goto_3

    .line 94
    :cond_5
    :goto_2
    iget-object v4, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mContext:Landroid/content/Context;

    .line 95
    .line 96
    const/4 v7, 0x0

    .line 97
    const/4 v8, 0x0

    .line 98
    const/4 v5, 0x0

    .line 99
    move-object v6, v2

    .line 100
    invoke-virtual/range {v3 .. v8}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    .line 101
    .line 102
    .line 103
    new-instance v3, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    const-string v4, "Send intent: "

    .line 109
    .line 110
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v2, ", userId: "

    .line 121
    .line 122
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string v2, " by uri change"

    .line 129
    .line 130
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    const-string v3, "SemDeviceInfoManagerService"

    .line 138
    .line 139
    invoke-static {v3, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    const-string v3, "SemDeviceInfoManagerService"

    .line 143
    .line 144
    invoke-static {v3, v2}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    .line 146
    .line 147
    goto :goto_0

    .line 148
    :goto_3
    :try_start_2
    invoke-virtual {v2}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    .line 149
    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_6
    monitor-exit p2

    .line 153
    return-void

    .line 154
    :goto_4
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 155
    throw p0
.end method

.method public final sendIntentAction(Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;Landroid/content/Intent;I)V
    .locals 12

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p1, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_b

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    const-string v4, "android.intent.action.PACKAGE_DATA_CLEARED"

    .line 34
    .line 35
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_2

    .line 40
    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-nez v4, :cond_2

    .line 54
    .line 55
    const-string v4, "SemDeviceInfoManagerService"

    .line 56
    .line 57
    new-instance v5, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v6, "Data cleared package = "

    .line 63
    .line 64
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v3, ", key = "

    .line 71
    .line 72
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-static {v4, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :catchall_0
    move-exception p0

    .line 87
    goto/16 :goto_6

    .line 88
    .line 89
    :cond_2
    iget-object v3, p1, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    .line 90
    .line 91
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    check-cast v2, Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    if-eqz v3, :cond_1

    .line 106
    .line 107
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    check-cast v3, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;

    .line 112
    .line 113
    iget v4, v3, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;->mFlag:I

    .line 114
    .line 115
    const/4 v5, 0x1

    .line 116
    if-nez v4, :cond_3

    .line 117
    .line 118
    goto/16 :goto_5

    .line 119
    .line 120
    :cond_3
    const/4 v6, 0x0

    .line 121
    if-ne v4, v5, :cond_6

    .line 122
    .line 123
    iget-object v4, v3, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;->mConditions:Ljava/util/ArrayList;

    .line 124
    .line 125
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    if-eqz v4, :cond_5

    .line 134
    .line 135
    if-nez v5, :cond_4

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_4
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v4

    .line 142
    move v5, v4

    .line 143
    goto :goto_5

    .line 144
    :cond_5
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    const-string v8, "containsPackageName() packageNameList = "

    .line 147
    .line 148
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    const-string v4, ", packageName = "

    .line 155
    .line 156
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    const-string v5, "SemDeviceInfoManagerService"

    .line 167
    .line 168
    invoke-static {v5, v4}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .line 170
    .line 171
    goto :goto_4

    .line 172
    :cond_6
    const/4 v7, 0x2

    .line 173
    if-ne v4, v7, :cond_9

    .line 174
    .line 175
    iget-object v4, v3, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;->mConditions:Ljava/util/ArrayList;

    .line 176
    .line 177
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 178
    .line 179
    .line 180
    move-result-object v7

    .line 181
    invoke-virtual {v7}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v7

    .line 185
    if-eqz v4, :cond_9

    .line 186
    .line 187
    if-nez v7, :cond_7

    .line 188
    .line 189
    goto :goto_4

    .line 190
    :cond_7
    iget-object v8, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mContext:Landroid/content/Context;

    .line 191
    .line 192
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 193
    .line 194
    .line 195
    move-result-object v8

    .line 196
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 197
    .line 198
    .line 199
    move-result v9

    .line 200
    move v10, v6

    .line 201
    :goto_3
    if-ge v10, v9, :cond_9

    .line 202
    .line 203
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v11

    .line 207
    check-cast v11, Ljava/lang/String;

    .line 208
    .line 209
    if-eqz v11, :cond_8

    .line 210
    .line 211
    invoke-virtual {v8, v11, v7}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    .line 213
    .line 214
    move-result v11

    .line 215
    if-nez v11, :cond_8

    .line 216
    .line 217
    goto :goto_5

    .line 218
    :cond_8
    add-int/lit8 v10, v10, 0x1

    .line 219
    .line 220
    goto :goto_3

    .line 221
    :cond_9
    :goto_4
    move v5, v6

    .line 222
    :goto_5
    if-nez v5, :cond_a

    .line 223
    .line 224
    goto :goto_1

    .line 225
    :cond_a
    iget-object v6, v3, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;->mPendingIntent:Landroid/app/PendingIntent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    .line 227
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    .line 228
    .line 229
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v6}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    .line 233
    .line 234
    .line 235
    move-result-object v4

    .line 236
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v4

    .line 240
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    .line 242
    .line 243
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 244
    .line 245
    .line 246
    move-result-object v4

    .line 247
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v3, p2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 251
    .line 252
    .line 253
    const-string v4, "action_origin"

    .line 254
    .line 255
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v5

    .line 259
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    .line 261
    .line 262
    iget-object v7, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mContext:Landroid/content/Context;

    .line 263
    .line 264
    const/4 v10, 0x0

    .line 265
    const/4 v11, 0x0

    .line 266
    const/4 v8, 0x0

    .line 267
    move-object v9, v3

    .line 268
    invoke-virtual/range {v6 .. v11}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    .line 269
    .line 270
    .line 271
    new-instance v4, Ljava/lang/StringBuilder;

    .line 272
    .line 273
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 274
    .line 275
    .line 276
    const-string v5, "Send intent "

    .line 277
    .line 278
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v3

    .line 285
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    const-string v3, ", userId: "

    .line 289
    .line 290
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    const-string v3, " by broadcast"

    .line 297
    .line 298
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v3

    .line 305
    const-string v4, "SemDeviceInfoManagerService"

    .line 306
    .line 307
    invoke-static {v4, v3}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    .line 309
    .line 310
    const-string v4, "SemDeviceInfoManagerService"

    .line 311
    .line 312
    invoke-static {v4, v3}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 313
    .line 314
    .line 315
    goto/16 :goto_1

    .line 316
    .line 317
    :catch_0
    move-exception v3

    .line 318
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 319
    .line 320
    .line 321
    goto/16 :goto_1

    .line 322
    .line 323
    :cond_b
    monitor-exit v0

    .line 324
    return-void

    .line 325
    :goto_6
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 326
    throw p0
.end method

.method public final unregisterContentObserver(ILandroid/net/Uri;)V
    .locals 3

    .line 1
    if-ltz p1, :cond_2

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    goto :goto_2

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mCallbackLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getSystemCallbacks(I)Lcom/android/server/sepunion/SemDeviceInfoManagerService$SystemCallbacks;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object p1, p1, Lcom/android/server/sepunion/SemDeviceInfoManagerService$SystemCallbacks;->mContentObservers:Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Landroid/database/ContentObserver;

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    iget-object p2, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mHandler:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    .line 24
    .line 25
    new-instance v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService$$ExternalSyntheticLambda1;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/sepunion/SemDeviceInfoManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/sepunion/SemDeviceInfoManagerService;Ljava/lang/Object;I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    :goto_0
    monitor-exit v0

    .line 38
    return-void

    .line 39
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw p0

    .line 41
    :cond_2
    :goto_2
    return-void
.end method

.method public final unregisterPendingIntent(Landroid/content/IntentFilter;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    .locals 1

    .line 1
    const-string/jumbo v0, "unregisterPendingIntent"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->unregisterPendingIntentInternal(Landroid/content/IntentFilter;Landroid/app/PendingIntent;Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final unregisterPendingIntentForCustomEventAsUser(Ljava/lang/String;Landroid/app/PendingIntent;Landroid/os/Bundle;Ljava/lang/String;I)V
    .locals 5

    .line 1
    if-eqz p1, :cond_6

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    goto/16 :goto_2

    .line 6
    .line 7
    :cond_0
    if-nez p3, :cond_2

    .line 8
    .line 9
    const-string/jumbo v0, "monitor_activity_state"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    const-string/jumbo v0, "monitor_package_state"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    :cond_1
    return-void

    .line 28
    :cond_2
    const-string/jumbo v0, "unregisterPendingIntentForCustomEventAsUser"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v1, "Unregister custom event = "

    .line 37
    .line 38
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v1, ", package = "

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v1, ", userId = "

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const-string v1, "SemDeviceInfoManagerService"

    .line 65
    .line 66
    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    const-string v1, "SemDeviceInfoManagerService"

    .line 70
    .line 71
    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-static {p3, p1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getCustomEventKeys(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    .line 79
    .line 80
    monitor-enter v1

    .line 81
    :try_start_0
    invoke-virtual {p0, p5}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer(I)Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    .line 82
    .line 83
    .line 84
    move-result-object p5

    .line 85
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-eqz v2, :cond_5

    .line 94
    .line 95
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    check-cast v2, Ljava/lang/String;

    .line 100
    .line 101
    iget-object v3, p5, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    .line 102
    .line 103
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    check-cast v3, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    .line 108
    .line 109
    if-eqz v3, :cond_3

    .line 110
    .line 111
    invoke-virtual {v3, p4, p2}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->remove(Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 112
    .line 113
    .line 114
    iget-object v4, v3, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    .line 115
    .line 116
    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    if-eqz v4, :cond_4

    .line 121
    .line 122
    iget-object v3, p5, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    .line 123
    .line 124
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    const/4 v2, 0x0

    .line 128
    invoke-static {p1, v2}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getCustomEventMessageId(Ljava/lang/String;Z)I

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    iget-object v3, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mHandler:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    .line 133
    .line 134
    invoke-virtual {v3, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    invoke-virtual {v2, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 142
    .line 143
    .line 144
    goto :goto_0

    .line 145
    :catchall_0
    move-exception p0

    .line 146
    goto :goto_1

    .line 147
    :cond_4
    iget-object v4, p5, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    .line 148
    .line 149
    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_5
    monitor-exit v1

    .line 154
    return-void

    .line 155
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    throw p0

    .line 157
    :cond_6
    :goto_2
    return-void
.end method

.method public final unregisterPendingIntentForIntentAsUser(Landroid/content/IntentFilter;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    .locals 1

    .line 1
    const-string/jumbo v0, "unregisterPendingIntentForIntentAsUser"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->unregisterPendingIntentInternal(Landroid/content/IntentFilter;Landroid/app/PendingIntent;Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final unregisterPendingIntentForUriAsUser(Landroid/net/Uri;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    .locals 3

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    if-eqz p2, :cond_2

    .line 4
    .line 5
    if-nez p3, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    const-string/jumbo v0, "unregisterPendingIntentForUriAsUser"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v1, "Unregister uri = "

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, ", package = "

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v1, ", userId = "

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v1, "SemDeviceInfoManagerService"

    .line 45
    .line 46
    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    const-string v1, "SemDeviceInfoManagerService"

    .line 50
    .line 51
    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    .line 55
    .line 56
    monitor-enter v0

    .line 57
    :try_start_0
    invoke-virtual {p0, p4}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer(I)Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iget-object v2, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    .line 62
    .line 63
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    check-cast v2, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    .line 68
    .line 69
    if-eqz v2, :cond_1

    .line 70
    .line 71
    invoke-virtual {v2, p3, p2}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->remove(Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 72
    .line 73
    .line 74
    iget-object p2, v2, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    .line 75
    .line 76
    invoke-virtual {p2}, Ljava/util/HashMap;->isEmpty()Z

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    if-eqz p2, :cond_1

    .line 81
    .line 82
    iget-object p2, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    .line 83
    .line 84
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, p4, p1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->unregisterContentObserver(ILandroid/net/Uri;)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :catchall_0
    move-exception p0

    .line 92
    goto :goto_1

    .line 93
    :cond_1
    :goto_0
    monitor-exit v0

    .line 94
    return-void

    .line 95
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    throw p0

    .line 97
    :cond_2
    :goto_2
    return-void
.end method

.method public final unregisterPendingIntentInternal(Landroid/content/IntentFilter;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    .locals 5

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-lez v0, :cond_4

    .line 14
    .line 15
    if-eqz p2, :cond_4

    .line 16
    .line 17
    if-nez p3, :cond_0

    .line 18
    .line 19
    goto/16 :goto_4

    .line 20
    .line 21
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    move v2, v1

    .line 28
    :goto_0
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-ge v2, v3, :cond_1

    .line 33
    .line 34
    new-instance v3, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v4, ", "

    .line 47
    .line 48
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    add-int/lit8 v2, v2, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v3, "Unregister intent = "

    .line 64
    .line 65
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v0, ", package = "

    .line 76
    .line 77
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v0, ", userId = "

    .line 84
    .line 85
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    const-string v2, "SemDeviceInfoManagerService"

    .line 96
    .line 97
    invoke-static {v2, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    const-string v2, "SemDeviceInfoManagerService"

    .line 101
    .line 102
    invoke-static {v2, v0}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    :goto_1
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-ge v1, v0, :cond_4

    .line 110
    .line 111
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    iget-object v2, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    .line 116
    .line 117
    monitor-enter v2

    .line 118
    :try_start_0
    invoke-virtual {p0, p4}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer(I)Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    iget-object v4, v3, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    .line 123
    .line 124
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    check-cast v4, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    .line 129
    .line 130
    if-nez v4, :cond_2

    .line 131
    .line 132
    monitor-exit v2

    .line 133
    goto :goto_2

    .line 134
    :catchall_0
    move-exception p0

    .line 135
    goto :goto_3

    .line 136
    :cond_2
    invoke-virtual {v4, p3, p2}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->remove(Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 137
    .line 138
    .line 139
    iget-object v4, v4, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    .line 140
    .line 141
    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    .line 142
    .line 143
    .line 144
    move-result v4

    .line 145
    if-eqz v4, :cond_3

    .line 146
    .line 147
    iget-object v3, v3, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    .line 148
    .line 149
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0, p4, v0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->unregisterReceiver(ILjava/lang/String;)V

    .line 153
    .line 154
    .line 155
    :cond_3
    monitor-exit v2

    .line 156
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 157
    .line 158
    goto :goto_1

    .line 159
    :goto_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    throw p0

    .line 161
    :cond_4
    :goto_4
    return-void
.end method

.method public final unregisterReceiver(ILjava/lang/String;)V
    .locals 3

    .line 1
    if-ltz p1, :cond_2

    .line 2
    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_2

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mCallbackLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getSystemCallbacks(I)Lcom/android/server/sepunion/SemDeviceInfoManagerService$SystemCallbacks;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object p1, p1, Lcom/android/server/sepunion/SemDeviceInfoManagerService$SystemCallbacks;->mBroadcastReceivers:Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Landroid/content/BroadcastReceiver;

    .line 24
    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    iget-object p2, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mHandler:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    .line 28
    .line 29
    new-instance v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService$$ExternalSyntheticLambda1;

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/sepunion/SemDeviceInfoManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/sepunion/SemDeviceInfoManagerService;Ljava/lang/Object;I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    :goto_0
    monitor-exit v0

    .line 42
    return-void

    .line 43
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    throw p0

    .line 45
    :cond_2
    :goto_2
    return-void
.end method
