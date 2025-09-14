.class public final Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mDescriptor:Landroid/media/RemoteDisplayState;

.field public final mProvider:Lcom/android/server/media/RemoteDisplayProviderProxy;

.field public final mRoutes:Ljava/util/ArrayList;

.field public final mUniquePrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/media/RemoteDisplayProviderProxy;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mProvider:Lcom/android/server/media/RemoteDisplayProviderProxy;

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-object p1, p1, Lcom/android/server/media/RemoteDisplayProviderProxy;->mComponentName:Landroid/content/ComponentName;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string p1, ":"

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mUniquePrefix:Ljava/lang/String;

    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Provider "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mProvider:Lcom/android/server/media/RemoteDisplayProviderProxy;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mComponentName:Landroid/content/ComponentName;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public final updateDescriptor(Landroid/media/RemoteDisplayState;)Z
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mDescriptor:Landroid/media/RemoteDisplayState;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eq v0, p1, :cond_7

    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mDescriptor:Landroid/media/RemoteDisplayState;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    if-eqz p1, :cond_6

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/media/RemoteDisplayState;->isValid()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const-string v3, "MediaRouterService"

    .line 16
    .line 17
    if-eqz v2, :cond_5

    .line 18
    .line 19
    iget-object p1, p1, Landroid/media/RemoteDisplayState;->displays:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    move v4, v1

    .line 26
    move v5, v4

    .line 27
    move v6, v5

    .line 28
    :goto_0
    if-ge v4, v2, :cond_4

    .line 29
    .line 30
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    check-cast v7, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    .line 35
    .line 36
    iget-object v8, v7, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->id:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v9, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 41
    .line 42
    .line 43
    move-result v9

    .line 44
    move v10, v1

    .line 45
    :goto_1
    if-ge v10, v9, :cond_1

    .line 46
    .line 47
    iget-object v11, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v11

    .line 53
    check-cast v11, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 54
    .line 55
    iget-object v11, v11, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mDescriptorId:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v11

    .line 61
    if-eqz v11, :cond_0

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_0
    add-int/lit8 v10, v10, 0x1

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_1
    const/4 v10, -0x1

    .line 68
    :goto_2
    if-gez v10, :cond_2

    .line 69
    .line 70
    new-instance v5, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    iget-object v9, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mUniquePrefix:Ljava/lang/String;

    .line 76
    .line 77
    invoke-static {v5, v9, v8}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    new-instance v9, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 82
    .line 83
    invoke-direct {v9, p0, v8, v5}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;-><init>(Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object v5, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    .line 87
    .line 88
    add-int/lit8 v8, v6, 0x1

    .line 89
    .line 90
    invoke-virtual {v5, v6, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v9, v7}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->updateDescriptor(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)Z

    .line 94
    .line 95
    .line 96
    move v5, v0

    .line 97
    move v6, v8

    .line 98
    goto :goto_3

    .line 99
    :cond_2
    if-ge v10, v6, :cond_3

    .line 100
    .line 101
    new-instance v8, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    const-string v9, "Ignoring route descriptor with duplicate id: "

    .line 104
    .line 105
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    invoke-static {v3, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_3
    iget-object v8, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v8

    .line 125
    check-cast v8, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 126
    .line 127
    iget-object v9, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    .line 128
    .line 129
    add-int/lit8 v11, v6, 0x1

    .line 130
    .line 131
    invoke-static {v9, v10, v6}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v8, v7}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->updateDescriptor(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)Z

    .line 135
    .line 136
    .line 137
    move-result v6

    .line 138
    or-int/2addr v5, v6

    .line 139
    move v6, v11

    .line 140
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_4
    move v1, v5

    .line 144
    goto :goto_4

    .line 145
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    const-string v2, "Ignoring invalid descriptor from media route provider: "

    .line 148
    .line 149
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mProvider:Lcom/android/server/media/RemoteDisplayProviderProxy;

    .line 153
    .line 154
    iget-object v2, v2, Lcom/android/server/media/RemoteDisplayProviderProxy;->mComponentName:Landroid/content/ComponentName;

    .line 155
    .line 156
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-static {v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .line 169
    .line 170
    :cond_6
    move v6, v1

    .line 171
    :goto_4
    iget-object p1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    .line 172
    .line 173
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 174
    .line 175
    .line 176
    move-result p1

    .line 177
    sub-int/2addr p1, v0

    .line 178
    :goto_5
    if-lt p1, v6, :cond_7

    .line 179
    .line 180
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    .line 181
    .line 182
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    check-cast v1, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 187
    .line 188
    const/4 v2, 0x0

    .line 189
    invoke-virtual {v1, v2}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->updateDescriptor(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)Z

    .line 190
    .line 191
    .line 192
    add-int/lit8 p1, p1, -0x1

    .line 193
    .line 194
    move v1, v0

    .line 195
    goto :goto_5

    .line 196
    :cond_7
    return v1
.end method
