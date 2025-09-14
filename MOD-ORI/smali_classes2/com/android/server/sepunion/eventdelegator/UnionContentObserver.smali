.class public final Lcom/android/server/sepunion/eventdelegator/UnionContentObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->$r8$clinit:I

    .line 2
    .line 3
    const-string v0, "SemDeviceInfoManagerService"

    .line 4
    .line 5
    sput-object v0, Lcom/android/server/sepunion/eventdelegator/UnionContentObserver;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/android/server/sepunion/SemDeviceInfoManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/server/sepunion/eventdelegator/UnionContentObserver;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/server/sepunion/eventdelegator/UnionContentObserver;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "UnionContentObserver onChange u"

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v2, ": "

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/server/sepunion/eventdelegator/UnionContentObserver;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    .line 31
    .line 32
    monitor-enter v0

    .line 33
    const/4 v1, -0x1

    .line 34
    if-ne p3, v1, :cond_0

    .line 35
    .line 36
    const/4 p3, 0x0

    .line 37
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sepunion/eventdelegator/UnionContentObserver;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    .line 38
    .line 39
    iget-object v1, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mListenerContainers:Landroid/util/SparseArray;

    .line 40
    .line 41
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-ge p3, v1, :cond_1

    .line 46
    .line 47
    iget-object v1, p0, Lcom/android/server/sepunion/eventdelegator/UnionContentObserver;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    .line 48
    .line 49
    iget-object v1, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mListenerContainers:Landroid/util/SparseArray;

    .line 50
    .line 51
    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->keyAt(I)I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/sepunion/eventdelegator/UnionContentObserver;->reportUriChanged(ZLandroid/net/Uri;I)V

    .line 56
    .line 57
    .line 58
    add-int/lit8 p3, p3, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    goto :goto_1

    .line 63
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/sepunion/eventdelegator/UnionContentObserver;->reportUriChanged(ZLandroid/net/Uri;I)V

    .line 64
    .line 65
    .line 66
    :cond_1
    monitor-exit v0

    .line 67
    return-void

    .line 68
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    throw p0
.end method

.method public final reportUriChanged(ZLandroid/net/Uri;I)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/eventdelegator/UnionContentObserver;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    .line 2
    .line 3
    invoke-virtual {v0, p3}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer(I)Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

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
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_3

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ljava/util/Map$Entry;

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Landroid/net/Uri;

    .line 34
    .line 35
    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    sget-object v2, Lcom/android/server/sepunion/eventdelegator/UnionContentObserver;->TAG:Ljava/lang/String;

    .line 42
    .line 43
    const-string v3, "Uri matches exactly. Reporting changes..."

    .line 44
    .line 45
    invoke-static {v2, v3}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    iget-object v4, p0, Lcom/android/server/sepunion/eventdelegator/UnionContentObserver;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    .line 49
    .line 50
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    move-object v5, v1

    .line 55
    check-cast v5, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    .line 56
    .line 57
    const/4 v9, 0x0

    .line 58
    move v6, p1

    .line 59
    move-object v7, p2

    .line 60
    move v8, p3

    .line 61
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->reportUriChanged(Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;ZLandroid/net/Uri;IZ)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-eqz v4, :cond_2

    .line 78
    .line 79
    iget-object v5, p0, Lcom/android/server/sepunion/eventdelegator/UnionContentObserver;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    .line 80
    .line 81
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    move-object v6, v1

    .line 86
    check-cast v6, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    .line 87
    .line 88
    const/4 v10, 0x0

    .line 89
    move v7, p1

    .line 90
    move-object v8, p2

    .line 91
    move v9, p3

    .line 92
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->reportUriChanged(Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;ZLandroid/net/Uri;IZ)V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_2
    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-eqz v2, :cond_0

    .line 101
    .line 102
    iget-object v3, p0, Lcom/android/server/sepunion/eventdelegator/UnionContentObserver;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    .line 103
    .line 104
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    move-object v4, v1

    .line 109
    check-cast v4, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    .line 110
    .line 111
    const/4 v8, 0x1

    .line 112
    move v5, p1

    .line 113
    move-object v6, p2

    .line 114
    move v7, p3

    .line 115
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->reportUriChanged(Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;ZLandroid/net/Uri;IZ)V

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_3
    return-void
.end method
