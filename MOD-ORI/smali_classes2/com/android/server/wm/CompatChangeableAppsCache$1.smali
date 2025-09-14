.class public final Lcom/android/server/wm/CompatChangeableAppsCache$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/CompatChangeableAppsCache;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/wm/CompatChangeableAppsCache$LazyHolder;->sCache:Lcom/android/server/wm/CompatChangeableAppsCache;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/android/server/wm/CompatChangeableAppsCache$1;->this$0:Lcom/android/server/wm/CompatChangeableAppsCache;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    const/4 p1, 0x1

    .line 2
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const-string p0, "CompatChangeableApps"

    .line 10
    .line 11
    const-string p1, "Failed to get package name in package receiver"

    .line 12
    .line 13
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    if-nez p2, :cond_1

    .line 26
    .line 27
    const-string p0, "CompatChangeableApps"

    .line 28
    .line 29
    const-string p1, "Failed to get action in package receiver"

    .line 30
    .line 31
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    const/4 v2, -0x1

    .line 36
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    sparse-switch v3, :sswitch_data_0

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :sswitch_0
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    .line 45
    .line 46
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-nez v3, :cond_2

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    const/4 v2, 0x2

    .line 54
    goto :goto_0

    .line 55
    :sswitch_1
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    .line 56
    .line 57
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-nez v3, :cond_3

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    move v2, p1

    .line 65
    goto :goto_0

    .line 66
    :sswitch_2
    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    .line 67
    .line 68
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-nez v3, :cond_4

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_4
    move v2, v0

    .line 76
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 77
    .line 78
    .line 79
    const-string p0, "CompatChangeableApps"

    .line 80
    .line 81
    const-string p1, "Unsupported action in package receiver: "

    .line 82
    .line 83
    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    goto :goto_2

    .line 91
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/wm/CompatChangeableAppsCache$1;->this$0:Lcom/android/server/wm/CompatChangeableAppsCache;

    .line 92
    .line 93
    monitor-enter p0

    .line 94
    :try_start_0
    iget-object p2, p0, Lcom/android/server/wm/CompatChangeableAppsCache;->mAppsArray:Landroid/util/SparseArray;

    .line 95
    .line 96
    if-nez p2, :cond_5

    .line 97
    .line 98
    monitor-exit p0

    .line 99
    goto :goto_2

    .line 100
    :catchall_0
    move-exception p1

    .line 101
    goto :goto_3

    .line 102
    :cond_5
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 103
    .line 104
    .line 105
    move-result p2

    .line 106
    :goto_1
    if-ge v0, p2, :cond_6

    .line 107
    .line 108
    iget-object v2, p0, Lcom/android/server/wm/CompatChangeableAppsCache;->mAppsArray:Landroid/util/SparseArray;

    .line 109
    .line 110
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    check-cast v2, Lcom/samsung/android/core/CompatChangeableApps;

    .line 115
    .line 116
    invoke-virtual {v2, v1}, Lcom/samsung/android/core/CompatChangeableApps;->removeCache(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    add-int/2addr v0, p1

    .line 120
    goto :goto_1

    .line 121
    :cond_6
    monitor-exit p0

    .line 122
    :goto_2
    return-void

    .line 123
    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    throw p1

    .line 125
    :sswitch_data_0
    .sparse-switch
        0xa480416 -> :sswitch_2
        0x1f50b9c2 -> :sswitch_1
        0x5c1076e2 -> :sswitch_0
    .end sparse-switch

    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
