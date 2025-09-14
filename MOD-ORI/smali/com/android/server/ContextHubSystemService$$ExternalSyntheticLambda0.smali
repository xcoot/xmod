.class public final synthetic Lcom/android/server/ContextHubSystemService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/ContextHubSystemService;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/ContextHubSystemService;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/ContextHubSystemService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/ContextHubSystemService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/ContextHubSystemService$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/ContextHubSystemService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/ContextHubSystemService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/ContextHubSystemService$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v1, Lcom/android/server/location/contexthub/ContextHubService;

    .line 9
    .line 10
    invoke-static {}, Lcom/android/server/location/contexthub/IContextHubWrapper;->maybeConnectToAidlGetProxy()Landroid/hardware/contexthub/IContextHub;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const/4 v3, 0x0

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    move-object v4, v3

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance v4, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;

    .line 20
    .line 21
    invoke-direct {v4, v2}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;-><init>(Landroid/hardware/contexthub/IContextHub;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    const-string v2, "RemoteException while attaching to Context Hub HAL proxy"

    .line 25
    .line 26
    const-string v5, "Context Hub HAL service not found"

    .line 27
    .line 28
    const/4 v6, 0x1

    .line 29
    const-string v7, "IContextHubWrapper"

    .line 30
    .line 31
    if-nez v4, :cond_2

    .line 32
    .line 33
    :try_start_0
    invoke-static {v6}, Landroid/hardware/contexthub/V1_2/IContexthub;->getService(Z)Landroid/hardware/contexthub/V1_2/IContexthub;

    .line 34
    .line 35
    .line 36
    move-result-object v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    goto :goto_2

    .line 38
    :catch_0
    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :catch_1
    move-exception v4

    .line 43
    invoke-static {v7, v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    .line 45
    .line 46
    :goto_1
    move-object v4, v3

    .line 47
    :goto_2
    if-nez v4, :cond_1

    .line 48
    .line 49
    move-object v4, v3

    .line 50
    goto :goto_3

    .line 51
    :cond_1
    new-instance v8, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_2;

    .line 52
    .line 53
    invoke-direct {v8, v4}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_2;-><init>(Landroid/hardware/contexthub/V1_2/IContexthub;)V

    .line 54
    .line 55
    .line 56
    move-object v4, v8

    .line 57
    :cond_2
    :goto_3
    if-nez v4, :cond_4

    .line 58
    .line 59
    :try_start_1
    invoke-static {v6}, Landroid/hardware/contexthub/V1_1/IContexthub;->getService(Z)Landroid/hardware/contexthub/V1_1/IContexthub;

    .line 60
    .line 61
    .line 62
    move-result-object v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_2

    .line 63
    goto :goto_5

    .line 64
    :catch_2
    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    goto :goto_4

    .line 68
    :catch_3
    move-exception v4

    .line 69
    invoke-static {v7, v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    .line 71
    .line 72
    :goto_4
    move-object v4, v3

    .line 73
    :goto_5
    if-nez v4, :cond_3

    .line 74
    .line 75
    move-object v4, v3

    .line 76
    goto :goto_6

    .line 77
    :cond_3
    new-instance v8, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_0;

    .line 78
    .line 79
    const/4 v9, 0x1

    .line 80
    invoke-direct {v8, v4, v9}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_0;-><init>(Landroid/hardware/contexthub/V1_0/IContexthub;I)V

    .line 81
    .line 82
    .line 83
    iput-object v4, v8, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_0;->mHub:Ljava/lang/Object;

    .line 84
    .line 85
    move-object v4, v8

    .line 86
    :cond_4
    :goto_6
    if-nez v4, :cond_6

    .line 87
    .line 88
    :try_start_2
    invoke-static {v6}, Landroid/hardware/contexthub/V1_0/IContexthub;->getService(Z)Landroid/hardware/contexthub/V1_0/IContexthub;

    .line 89
    .line 90
    .line 91
    move-result-object v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_4

    .line 92
    goto :goto_8

    .line 93
    :catch_4
    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    goto :goto_7

    .line 97
    :catch_5
    move-exception v4

    .line 98
    invoke-static {v7, v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    .line 100
    .line 101
    :goto_7
    move-object v2, v3

    .line 102
    :goto_8
    if-nez v2, :cond_5

    .line 103
    .line 104
    goto :goto_9

    .line 105
    :cond_5
    new-instance v3, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_0;

    .line 106
    .line 107
    const/4 v4, 0x0

    .line 108
    invoke-direct {v3, v2, v4}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_0;-><init>(Landroid/hardware/contexthub/V1_0/IContexthub;I)V

    .line 109
    .line 110
    .line 111
    iput-object v2, v3, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_0;->mHub:Ljava/lang/Object;

    .line 112
    .line 113
    :goto_9
    move-object v4, v3

    .line 114
    :cond_6
    invoke-direct {v1, p0, v4}, Lcom/android/server/location/contexthub/ContextHubService;-><init>(Landroid/content/Context;Lcom/android/server/location/contexthub/IContextHubWrapper;)V

    .line 115
    .line 116
    .line 117
    iput-object v1, v0, Lcom/android/server/ContextHubSystemService;->mContextHubService:Lcom/android/server/location/contexthub/ContextHubService;

    .line 118
    .line 119
    return-void
.end method
