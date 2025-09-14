.class public final synthetic Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/association/AssociationStore;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/association/AssociationStore;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/companion/association/AssociationStore;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/companion/association/AssociationStore;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/companion/association/AssociationStore;->mUserManager:Landroid/os/UserManager;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Landroid/content/pm/UserInfo;

    .line 32
    .line 33
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    .line 34
    .line 35
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget-object v1, p0, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    .line 44
    .line 45
    monitor-enter v1

    .line 46
    const/4 v2, 0x0

    .line 47
    :try_start_0
    iput-boolean v2, p0, Lcom/android/server/companion/association/AssociationStore;->mPersisted:Z

    .line 48
    .line 49
    iget-object v3, p0, Lcom/android/server/companion/association/AssociationStore;->mIdToAssociationMap:Ljava/util/Map;

    .line 50
    .line 51
    check-cast v3, Ljava/util/HashMap;

    .line 52
    .line 53
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 54
    .line 55
    .line 56
    iput v2, p0, Lcom/android/server/companion/association/AssociationStore;->mMaxId:I

    .line 57
    .line 58
    iget-object v2, p0, Lcom/android/server/companion/association/AssociationStore;->mDiskStore:Lcom/android/server/companion/association/AssociationDiskStore;

    .line 59
    .line 60
    invoke-virtual {v2, v0}, Lcom/android/server/companion/association/AssociationDiskStore;->readAssociationsByUsers(Ljava/util/List;)Ljava/util/Map;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Ljava/util/HashMap;

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_2

    .line 79
    .line 80
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    check-cast v2, Ljava/util/Map$Entry;

    .line 85
    .line 86
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    check-cast v3, Lcom/android/server/companion/association/Associations;

    .line 91
    .line 92
    iget-object v3, v3, Lcom/android/server/companion/association/Associations;->mAssociations:Ljava/util/List;

    .line 93
    .line 94
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    if-eqz v4, :cond_1

    .line 103
    .line 104
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    check-cast v4, Landroid/companion/AssociationInfo;

    .line 109
    .line 110
    iget-object v5, p0, Lcom/android/server/companion/association/AssociationStore;->mIdToAssociationMap:Ljava/util/Map;

    .line 111
    .line 112
    invoke-virtual {v4}, Landroid/companion/AssociationInfo;->getId()I

    .line 113
    .line 114
    .line 115
    move-result v6

    .line 116
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    check-cast v5, Ljava/util/HashMap;

    .line 121
    .line 122
    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    goto :goto_2

    .line 126
    :catchall_0
    move-exception p0

    .line 127
    goto :goto_3

    .line 128
    :cond_1
    iget v3, p0, Lcom/android/server/companion/association/AssociationStore;->mMaxId:I

    .line 129
    .line 130
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    check-cast v2, Lcom/android/server/companion/association/Associations;

    .line 135
    .line 136
    iget v2, v2, Lcom/android/server/companion/association/Associations;->mMaxId:I

    .line 137
    .line 138
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    iput v2, p0, Lcom/android/server/companion/association/AssociationStore;->mMaxId:I

    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_2
    const/4 v0, 0x1

    .line 146
    iput-boolean v0, p0, Lcom/android/server/companion/association/AssociationStore;->mPersisted:Z

    .line 147
    .line 148
    monitor-exit v1

    .line 149
    return-void

    .line 150
    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    throw p0
.end method
