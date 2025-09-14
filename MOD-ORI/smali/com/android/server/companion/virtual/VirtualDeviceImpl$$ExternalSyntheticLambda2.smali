.class public final synthetic Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/virtual/VirtualDeviceImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/virtual/VirtualDeviceImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public shouldInterceptIntent(Landroid/content/Intent;)Z
    .locals 11

    .line 1
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mIntentInterceptors:Ljava/util/Map;

    .line 7
    .line 8
    check-cast p0, Landroid/util/ArrayMap;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const/4 v1, 0x0

    .line 19
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Ljava/util/Map$Entry;

    .line 30
    .line 31
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    move-object v4, v3

    .line 36
    check-cast v4, Landroid/content/IntentFilter;

    .line 37
    .line 38
    invoke-static {}, Landroid/companion/virtualdevice/flags/Flags;->intentInterceptionActionMatchingFix()Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_1

    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    if-nez v3, :cond_1

    .line 49
    .line 50
    invoke-virtual {v4}, Landroid/content/IntentFilter;->countActions()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-nez v3, :cond_0

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    goto :goto_2

    .line 59
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 72
    .line 73
    .line 74
    move-result-object v8

    .line 75
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    .line 76
    .line 77
    .line 78
    move-result-object v9

    .line 79
    const-string v10, "VirtualDeviceImpl"

    .line 80
    .line 81
    invoke-virtual/range {v4 .. v10}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    if-ltz v3, :cond_0

    .line 86
    .line 87
    :try_start_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    check-cast v2, Landroid/os/IBinder;

    .line 92
    .line 93
    invoke-static {v2}, Landroid/companion/virtual/IVirtualDeviceIntentInterceptor$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/virtual/IVirtualDeviceIntentInterceptor;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    new-instance v3, Landroid/content/Intent;

    .line 98
    .line 99
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 108
    .line 109
    .line 110
    invoke-interface {v2, v3}, Landroid/companion/virtual/IVirtualDeviceIntentInterceptor;->onIntentIntercepted(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    .line 112
    .line 113
    const/4 v1, 0x1

    .line 114
    goto :goto_0

    .line 115
    :catch_0
    move-exception v2

    .line 116
    :try_start_2
    const-string v3, "VirtualDeviceImpl"

    .line 117
    .line 118
    const-string v4, "Unable to call mVirtualDeviceIntentInterceptor"

    .line 119
    .line 120
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_2
    monitor-exit v0

    .line 125
    return v1

    .line 126
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 127
    throw p0
.end method
