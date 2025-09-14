.class public final synthetic Lcom/android/server/flags/DynamicFlagBinderDelegate$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic f$0:Lcom/android/server/flags/DynamicFlagBinderDelegate;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/flags/DynamicFlagBinderDelegate;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/flags/DynamicFlagBinderDelegate;

    .line 6
    return-void
.end method


# virtual methods
.method public final onFlagChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/flags/DynamicFlagBinderDelegate;

    .line 3
    iget-object v0, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate;->mDynamicFlags:Lcom/android/server/flags/FlagCache;

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/android/server/flags/FlagCache;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 11
    goto/16 :goto_2

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate;->mDynamicFlags:Lcom/android/server/flags/FlagCache;

    .line 15
    invoke-virtual {v0, p1, p2}, Lcom/android/server/flags/FlagCache;->getOrNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;

    .line 21
    if-nez v0, :cond_1

    .line 23
    goto :goto_2

    .line 24
    :cond_1
    if-nez p3, :cond_3

    .line 26
    iget-object p3, v0, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;->mValue:Ljava/lang/String;

    .line 28
    iget-object v1, v0, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;->mDefaultValue:Ljava/lang/String;

    .line 30
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    move-result p3

    .line 34
    if-eqz p3, :cond_2

    .line 36
    goto :goto_2

    .line 37
    :cond_2
    iget-object p3, v0, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;->mDefaultValue:Ljava/lang/String;

    .line 39
    goto :goto_0

    .line 40
    :cond_3
    iget-object v1, v0, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;->mValue:Ljava/lang/String;

    .line 42
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_4

    .line 48
    goto :goto_2

    .line 49
    :cond_4
    :goto_0
    iput-object p3, v0, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;->mValue:Ljava/lang/String;

    .line 51
    iget-object v1, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate;->mCallbacks:Ljava/util/Map;

    .line 53
    monitor-enter v1

    .line 54
    :try_start_0
    new-instance v2, Ljava/util/HashSet;

    .line 56
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 59
    iget-object v3, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate;->mCallbacks:Ljava/util/Map;

    .line 61
    check-cast v3, Ljava/util/HashMap;

    .line 63
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 66
    move-result-object v3

    .line 67
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 70
    move-result-object v3

    .line 71
    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    move-result v4

    .line 75
    if-eqz v4, :cond_6

    .line 77
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    move-result-object v4

    .line 81
    check-cast v4, Ljava/lang/Integer;

    .line 83
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    iget-object v5, v0, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;->mPids:Ljava/util/Set;

    .line 88
    check-cast v5, Ljava/util/HashSet;

    .line 90
    invoke-virtual {v5, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 93
    move-result v5

    .line 94
    if-eqz v5, :cond_5

    .line 96
    iget-object v5, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate;->mCallbacks:Ljava/util/Map;

    .line 98
    check-cast v5, Ljava/util/HashMap;

    .line 100
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    move-result-object v4

    .line 104
    check-cast v4, Ljava/util/Collection;

    .line 106
    invoke-interface {v2, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 109
    goto :goto_1

    .line 110
    :catchall_0
    move-exception p0

    .line 111
    goto :goto_3

    .line 112
    :cond_6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    new-instance p0, Landroid/flags/SyncableFlag;

    .line 115
    const/4 v0, 0x1

    .line 116
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/flags/SyncableFlag;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 119
    new-instance p1, Lcom/android/server/flags/DynamicFlagBinderDelegate$$ExternalSyntheticLambda2;

    .line 121
    invoke-direct {p1, p0}, Lcom/android/server/flags/DynamicFlagBinderDelegate$$ExternalSyntheticLambda2;-><init>(Landroid/flags/SyncableFlag;)V

    .line 124
    invoke-interface {v2, p1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 127
    :goto_2
    return-void

    .line 128
    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    throw p0
.end method
