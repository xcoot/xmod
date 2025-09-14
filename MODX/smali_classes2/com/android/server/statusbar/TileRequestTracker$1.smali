.class public final Lcom/android/server/statusbar/TileRequestTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/statusbar/TileRequestTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/statusbar/TileRequestTracker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/statusbar/TileRequestTracker$1;->this$0:Lcom/android/server/statusbar/TileRequestTracker;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 1
    const-string p1, "android.intent.extra.REPLACING"

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v1, "android.intent.extra.UID"

    .line 20
    .line 21
    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    const-string v1, "android.intent.extra.UID"

    .line 29
    .line 30
    const/4 v2, -0x1

    .line 31
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    iget-object v1, p0, Lcom/android/server/statusbar/TileRequestTracker$1;->this$0:Lcom/android/server/statusbar/TileRequestTracker;

    .line 40
    .line 41
    iget-object v1, v1, Lcom/android/server/statusbar/TileRequestTracker;->mLock:Ljava/lang/Object;

    .line 42
    .line 43
    monitor-enter v1

    .line 44
    :try_start_0
    iget-object v2, p0, Lcom/android/server/statusbar/TileRequestTracker$1;->this$0:Lcom/android/server/statusbar/TileRequestTracker;

    .line 45
    .line 46
    iget-object v2, v2, Lcom/android/server/statusbar/TileRequestTracker;->mComponentsToRemove:Landroid/util/ArraySet;

    .line 47
    .line 48
    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 49
    .line 50
    .line 51
    iget-object v2, p0, Lcom/android/server/statusbar/TileRequestTracker$1;->this$0:Lcom/android/server/statusbar/TileRequestTracker;

    .line 52
    .line 53
    iget-object v2, v2, Lcom/android/server/statusbar/TileRequestTracker;->mTrackingMap:Landroid/util/SparseArrayMap;

    .line 54
    .line 55
    invoke-virtual {v2, p2}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    iget-object v3, p0, Lcom/android/server/statusbar/TileRequestTracker$1;->this$0:Lcom/android/server/statusbar/TileRequestTracker;

    .line 60
    .line 61
    iget-object v3, v3, Lcom/android/server/statusbar/TileRequestTracker;->mTrackingMap:Landroid/util/SparseArrayMap;

    .line 62
    .line 63
    invoke-virtual {v3, p2}, Landroid/util/SparseArrayMap;->indexOfKey(I)I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    move v4, v0

    .line 68
    :goto_0
    if-ge v4, v2, :cond_3

    .line 69
    .line 70
    iget-object v5, p0, Lcom/android/server/statusbar/TileRequestTracker$1;->this$0:Lcom/android/server/statusbar/TileRequestTracker;

    .line 71
    .line 72
    iget-object v5, v5, Lcom/android/server/statusbar/TileRequestTracker;->mTrackingMap:Landroid/util/SparseArrayMap;

    .line 73
    .line 74
    invoke-virtual {v5, v3, v4}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    check-cast v5, Landroid/content/ComponentName;

    .line 79
    .line 80
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    if-eqz v6, :cond_2

    .line 89
    .line 90
    iget-object v6, p0, Lcom/android/server/statusbar/TileRequestTracker$1;->this$0:Lcom/android/server/statusbar/TileRequestTracker;

    .line 91
    .line 92
    iget-object v6, v6, Lcom/android/server/statusbar/TileRequestTracker;->mComponentsToRemove:Landroid/util/ArraySet;

    .line 93
    .line 94
    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :catchall_0
    move-exception p0

    .line 99
    goto :goto_3

    .line 100
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_3
    iget-object p1, p0, Lcom/android/server/statusbar/TileRequestTracker$1;->this$0:Lcom/android/server/statusbar/TileRequestTracker;

    .line 104
    .line 105
    iget-object p1, p1, Lcom/android/server/statusbar/TileRequestTracker;->mComponentsToRemove:Landroid/util/ArraySet;

    .line 106
    .line 107
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    :goto_2
    if-ge v0, p1, :cond_4

    .line 112
    .line 113
    iget-object v2, p0, Lcom/android/server/statusbar/TileRequestTracker$1;->this$0:Lcom/android/server/statusbar/TileRequestTracker;

    .line 114
    .line 115
    iget-object v2, v2, Lcom/android/server/statusbar/TileRequestTracker;->mComponentsToRemove:Landroid/util/ArraySet;

    .line 116
    .line 117
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    check-cast v2, Landroid/content/ComponentName;

    .line 122
    .line 123
    iget-object v3, p0, Lcom/android/server/statusbar/TileRequestTracker$1;->this$0:Lcom/android/server/statusbar/TileRequestTracker;

    .line 124
    .line 125
    iget-object v3, v3, Lcom/android/server/statusbar/TileRequestTracker;->mTrackingMap:Landroid/util/SparseArrayMap;

    .line 126
    .line 127
    invoke-virtual {v3, p2, v2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    add-int/lit8 v0, v0, 0x1

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_4
    monitor-exit v1

    .line 134
    return-void

    .line 135
    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    throw p0
.end method
