.class public final Lcom/android/server/wallpaper/LocalColorRepository;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mCallbacks:Landroid/os/RemoteCallbackList;

.field public mLocalColorAreas:Landroid/util/ArrayMap;


# virtual methods
.method public final addAreas(Landroid/app/ILocalWallpaperColorConsumer;Ljava/util/List;I)V
    .locals 4

    .line 1
    invoke-interface {p1}, Landroid/app/ILocalWallpaperColorConsumer;->asBinder()Landroid/os/IBinder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/server/wallpaper/LocalColorRepository;->mLocalColorAreas:Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Landroid/util/SparseArray;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    :try_start_0
    invoke-interface {p1}, Landroid/app/ILocalWallpaperColorConsumer;->asBinder()Landroid/os/IBinder;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    new-instance v3, Lcom/android/server/wallpaper/LocalColorRepository$$ExternalSyntheticLambda0;

    .line 21
    .line 22
    invoke-direct {v3, p0, p1}, Lcom/android/server/wallpaper/LocalColorRepository$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wallpaper/LocalColorRepository;Landroid/app/ILocalWallpaperColorConsumer;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {v1, v3, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception v1

    .line 30
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 31
    .line 32
    .line 33
    :goto_0
    new-instance v1, Landroid/util/SparseArray;

    .line 34
    .line 35
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 36
    .line 37
    .line 38
    iget-object v3, p0, Lcom/android/server/wallpaper/LocalColorRepository;->mLocalColorAreas:Landroid/util/ArrayMap;

    .line 39
    .line 40
    invoke-virtual {v3, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Landroid/util/ArraySet;

    .line 50
    .line 51
    :goto_1
    if-nez v0, :cond_1

    .line 52
    .line 53
    new-instance v0, Landroid/util/ArraySet;

    .line 54
    .line 55
    invoke-direct {v0, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, p3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 62
    .line 63
    .line 64
    move-result p3

    .line 65
    if-ge v2, p3, :cond_2

    .line 66
    .line 67
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p3

    .line 71
    check-cast p3, Landroid/graphics/RectF;

    .line 72
    .line 73
    invoke-virtual {v0, p3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    add-int/lit8 v2, v2, 0x1

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_2
    iget-object p0, p0, Lcom/android/server/wallpaper/LocalColorRepository;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 80
    .line 81
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public isCallbackAvailable(Landroid/app/ILocalWallpaperColorConsumer;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wallpaper/LocalColorRepository;->mLocalColorAreas:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-interface {p1}, Landroid/app/ILocalWallpaperColorConsumer;->asBinder()Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method

.method public final removeAreas(Landroid/app/ILocalWallpaperColorConsumer;Ljava/util/List;I)Ljava/util/List;
    .locals 6

    .line 1
    invoke-interface {p1}, Landroid/app/ILocalWallpaperColorConsumer;->asBinder()Landroid/os/IBinder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/server/wallpaper/LocalColorRepository;->mLocalColorAreas:Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Landroid/util/SparseArray;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v1, :cond_3

    .line 15
    .line 16
    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    check-cast v3, Landroid/util/ArraySet;

    .line 21
    .line 22
    if-nez v3, :cond_0

    .line 23
    .line 24
    iget-object p3, p0, Lcom/android/server/wallpaper/LocalColorRepository;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 25
    .line 26
    invoke-virtual {p3, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    move v4, v2

    .line 31
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-ge v4, v5, :cond_1

    .line 36
    .line 37
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    add-int/lit8 v4, v4, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-nez v3, :cond_2

    .line 52
    .line 53
    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->remove(I)V

    .line 54
    .line 55
    .line 56
    :cond_2
    :goto_1
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 57
    .line 58
    .line 59
    move-result p3

    .line 60
    if-nez p3, :cond_4

    .line 61
    .line 62
    iget-object p3, p0, Lcom/android/server/wallpaper/LocalColorRepository;->mLocalColorAreas:Landroid/util/ArrayMap;

    .line 63
    .line 64
    invoke-virtual {p3, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    iget-object p3, p0, Lcom/android/server/wallpaper/LocalColorRepository;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 68
    .line 69
    invoke-virtual {p3, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 70
    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_3
    iget-object p3, p0, Lcom/android/server/wallpaper/LocalColorRepository;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 74
    .line 75
    invoke-virtual {p3, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 76
    .line 77
    .line 78
    :cond_4
    :goto_2
    new-instance p1, Landroid/util/ArraySet;

    .line 79
    .line 80
    invoke-direct {p1, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 81
    .line 82
    .line 83
    move p2, v2

    .line 84
    :goto_3
    iget-object p3, p0, Lcom/android/server/wallpaper/LocalColorRepository;->mLocalColorAreas:Landroid/util/ArrayMap;

    .line 85
    .line 86
    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    .line 87
    .line 88
    .line 89
    move-result p3

    .line 90
    if-ge p2, p3, :cond_7

    .line 91
    .line 92
    move p3, v2

    .line 93
    :goto_4
    iget-object v0, p0, Lcom/android/server/wallpaper/LocalColorRepository;->mLocalColorAreas:Landroid/util/ArrayMap;

    .line 94
    .line 95
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    check-cast v0, Landroid/util/SparseArray;

    .line 100
    .line 101
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-ge p3, v0, :cond_6

    .line 106
    .line 107
    move v0, v2

    .line 108
    :goto_5
    iget-object v1, p0, Lcom/android/server/wallpaper/LocalColorRepository;->mLocalColorAreas:Landroid/util/ArrayMap;

    .line 109
    .line 110
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    check-cast v1, Landroid/util/SparseArray;

    .line 115
    .line 116
    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    check-cast v1, Landroid/util/ArraySet;

    .line 121
    .line 122
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-ge v0, v1, :cond_5

    .line 127
    .line 128
    iget-object v1, p0, Lcom/android/server/wallpaper/LocalColorRepository;->mLocalColorAreas:Landroid/util/ArrayMap;

    .line 129
    .line 130
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    check-cast v1, Landroid/util/SparseArray;

    .line 135
    .line 136
    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    check-cast v1, Landroid/util/ArraySet;

    .line 141
    .line 142
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    add-int/lit8 v0, v0, 0x1

    .line 150
    .line 151
    goto :goto_5

    .line 152
    :cond_5
    add-int/lit8 p3, p3, 0x1

    .line 153
    .line 154
    goto :goto_4

    .line 155
    :cond_6
    add-int/lit8 p2, p2, 0x1

    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_7
    new-instance p0, Ljava/util/ArrayList;

    .line 159
    .line 160
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 161
    .line 162
    .line 163
    return-object p0
.end method
