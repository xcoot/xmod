.class public final Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$2;
.super Lcom/android/internal/content/PackageMonitor;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$2;->this$0:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPackageAdded(Ljava/lang/String;I)V
    .locals 3

    .line 1
    const-string/jumbo p2, "monitor_package_state;"

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->TAG:Ljava/lang/String;

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string/jumbo v2, "onPackageAdded(): "

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$2;->this$0:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    .line 29
    .line 30
    monitor-enter v0

    .line 31
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    iget-object v1, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$2;->this$0:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    .line 44
    .line 45
    iget-object v1, v1, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getSystemListenerContainer()Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iget-object v2, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    .line 52
    .line 53
    invoke-virtual {v2, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_0

    .line 58
    .line 59
    iget-object v1, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    .line 60
    .line 61
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    check-cast p2, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    .line 66
    .line 67
    if-eqz p2, :cond_0

    .line 68
    .line 69
    iget-object p0, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$2;->this$0:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    .line 70
    .line 71
    iget-object p0, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    .line 72
    .line 73
    const-string/jumbo v1, "package_added"

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, p2, p1, v1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->reportPackageStateChanged(Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :catchall_0
    move-exception p0

    .line 81
    goto :goto_1

    .line 82
    :cond_0
    :goto_0
    monitor-exit v0

    .line 83
    return-void

    .line 84
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    throw p0
.end method

.method public final onPackageModified(Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string/jumbo v0, "monitor_package_state;"

    .line 2
    .line 3
    .line 4
    sget-object v1, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->TAG:Ljava/lang/String;

    .line 5
    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string/jumbo v3, "onPackageModified(): "

    .line 9
    .line 10
    .line 11
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$2;->this$0:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    .line 25
    .line 26
    iget-object v1, v1, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    .line 27
    .line 28
    iget-object v1, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    .line 29
    .line 30
    monitor-enter v1

    .line 31
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget-object v2, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$2;->this$0:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    .line 44
    .line 45
    iget-object v2, v2, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    .line 46
    .line 47
    invoke-virtual {v2}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getSystemListenerContainer()Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    iget-object v3, v2, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    .line 52
    .line 53
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_0

    .line 58
    .line 59
    iget-object v2, v2, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    .line 60
    .line 61
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    .line 66
    .line 67
    if-eqz v0, :cond_0

    .line 68
    .line 69
    iget-object p0, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$2;->this$0:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    .line 70
    .line 71
    iget-object p0, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    .line 72
    .line 73
    const-string/jumbo v2, "package_modified"

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v0, p1, v2}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->reportPackageStateChanged(Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :catchall_0
    move-exception p0

    .line 81
    goto :goto_1

    .line 82
    :cond_0
    :goto_0
    monitor-exit v1

    .line 83
    return-void

    .line 84
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    throw p0
.end method

.method public final onPackageRemoved(Ljava/lang/String;I)V
    .locals 3

    .line 1
    const-string/jumbo p2, "monitor_package_state;"

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->TAG:Ljava/lang/String;

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string/jumbo v2, "onPackageRemoved() :"

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$2;->this$0:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    .line 29
    .line 30
    monitor-enter v0

    .line 31
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    iget-object v1, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$2;->this$0:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    .line 44
    .line 45
    iget-object v1, v1, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getSystemListenerContainer()Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iget-object v2, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    .line 52
    .line 53
    invoke-virtual {v2, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_0

    .line 58
    .line 59
    iget-object v1, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    .line 60
    .line 61
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    check-cast p2, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    .line 66
    .line 67
    if-eqz p2, :cond_0

    .line 68
    .line 69
    iget-object p0, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$2;->this$0:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    .line 70
    .line 71
    iget-object p0, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    .line 72
    .line 73
    const-string/jumbo v1, "package_removed"

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, p2, p1, v1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->reportPackageStateChanged(Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :catchall_0
    move-exception p0

    .line 81
    goto :goto_1

    .line 82
    :cond_0
    :goto_0
    monitor-exit v0

    .line 83
    return-void

    .line 84
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    throw p0
.end method
