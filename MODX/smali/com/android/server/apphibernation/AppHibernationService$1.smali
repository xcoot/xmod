.class public final Lcom/android/server/apphibernation/AppHibernationService$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/apphibernation/AppHibernationService;


# direct methods
.method public constructor <init>(Lcom/android/server/apphibernation/AppHibernationService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/apphibernation/AppHibernationService$1;->this$0:Lcom/android/server/apphibernation/AppHibernationService;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 1
    const-string p1, "android.intent.extra.user_handle"

    .line 3
    const/16 v0, -0x2710

    .line 5
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 8
    move-result p1

    .line 9
    if-ne p1, v0, :cond_0

    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_1

    .line 24
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_7

    .line 32
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 40
    const-string v2, "android.intent.extra.REPLACING"

    .line 42
    const/4 v3, 0x0

    .line 43
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_2

    .line 49
    return-void

    .line 50
    :cond_2
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    .line 52
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_5

    .line 58
    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService$1;->this$0:Lcom/android/server/apphibernation/AppHibernationService;

    .line 60
    iget-object v2, p0, Lcom/android/server/apphibernation/AppHibernationService;->mLock:Ljava/lang/Object;

    .line 62
    monitor-enter v2

    .line 63
    :try_start_0
    iget-object p2, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserStates:Landroid/util/SparseArray;

    .line 65
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->contains(I)Z

    .line 68
    move-result p2

    .line 69
    if-nez p2, :cond_3

    .line 71
    monitor-exit v2

    .line 72
    goto/16 :goto_3

    .line 74
    :catchall_0
    move-exception p0

    .line 75
    goto :goto_0

    .line 76
    :cond_3
    new-instance p2, Lcom/android/server/apphibernation/UserLevelState;

    .line 78
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object v1, p2, Lcom/android/server/apphibernation/UserLevelState;->packageName:Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserStates:Landroid/util/SparseArray;

    .line 85
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 88
    move-result-object p1

    .line 89
    check-cast p1, Ljava/util/Map;

    .line 91
    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object p1, p0, Lcom/android/server/apphibernation/AppHibernationService;->mGlobalHibernationStates:Ljava/util/Map;

    .line 96
    check-cast p1, Landroid/util/ArrayMap;

    .line 98
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 101
    move-result p1

    .line 102
    if-nez p1, :cond_4

    .line 104
    new-instance p1, Lcom/android/server/apphibernation/GlobalLevelState;

    .line 106
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object v1, p1, Lcom/android/server/apphibernation/GlobalLevelState;->packageName:Ljava/lang/String;

    .line 111
    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mGlobalHibernationStates:Ljava/util/Map;

    .line 113
    check-cast p0, Landroid/util/ArrayMap;

    .line 115
    invoke-virtual {p0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :cond_4
    monitor-exit v2

    .line 119
    goto :goto_3

    .line 120
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    throw p0

    .line 122
    :cond_5
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    .line 124
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    move-result v0

    .line 128
    if-eqz v0, :cond_7

    .line 130
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService$1;->this$0:Lcom/android/server/apphibernation/AppHibernationService;

    .line 132
    iget-object v2, v0, Lcom/android/server/apphibernation/AppHibernationService;->mLock:Ljava/lang/Object;

    .line 134
    monitor-enter v2

    .line 135
    :try_start_1
    iget-object v4, v0, Lcom/android/server/apphibernation/AppHibernationService;->mUserStates:Landroid/util/SparseArray;

    .line 137
    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->contains(I)Z

    .line 140
    move-result v4

    .line 141
    if-nez v4, :cond_6

    .line 143
    monitor-exit v2

    .line 144
    goto :goto_1

    .line 145
    :catchall_1
    move-exception p0

    .line 146
    goto :goto_2

    .line 147
    :cond_6
    iget-object v0, v0, Lcom/android/server/apphibernation/AppHibernationService;->mUserStates:Landroid/util/SparseArray;

    .line 149
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 152
    move-result-object p1

    .line 153
    check-cast p1, Ljava/util/Map;

    .line 155
    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 159
    :goto_1
    const-string p1, "android.intent.extra.REMOVED_FOR_ALL_USERS"

    .line 161
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 164
    move-result p1

    .line 165
    if-eqz p1, :cond_7

    .line 167
    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService$1;->this$0:Lcom/android/server/apphibernation/AppHibernationService;

    .line 169
    iget-object p1, p0, Lcom/android/server/apphibernation/AppHibernationService;->mLock:Ljava/lang/Object;

    .line 171
    monitor-enter p1

    .line 172
    :try_start_2
    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mGlobalHibernationStates:Ljava/util/Map;

    .line 174
    check-cast p0, Landroid/util/ArrayMap;

    .line 176
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    monitor-exit p1

    .line 180
    goto :goto_3

    .line 181
    :catchall_2
    move-exception p0

    .line 182
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 183
    throw p0

    .line 184
    :goto_2
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 185
    throw p0

    .line 186
    :cond_7
    :goto_3
    return-void
.end method
