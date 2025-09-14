.class public final Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mDescriptor:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

.field public final mDescriptorId:Ljava/lang/String;

.field public mImmutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

.field public final mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

.field public final mProviderRecord:Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mProviderRecord:Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    .line 6
    iput-object p2, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mDescriptorId:Ljava/lang/String;

    .line 8
    new-instance p1, Landroid/media/MediaRouterClientState$RouteInfo;

    .line 10
    invoke-direct {p1, p3}, Landroid/media/MediaRouterClientState$RouteInfo;-><init>(Ljava/lang/String;)V

    .line 13
    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    .line 15
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "Route "

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    .line 10
    iget-object v1, v1, Landroid/media/MediaRouterClientState$RouteInfo;->name:Ljava/lang/String;

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    const-string v1, " ("

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    .line 22
    iget-object p0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->id:Ljava/lang/String;

    .line 24
    const-string v1, ")"

    .line 26
    invoke-static {v0, p0, v1}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method

.method public final updateDescriptor(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)Z
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mDescriptor:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eq v0, p1, :cond_16

    .line 7
    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mDescriptor:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    .line 9
    if-eqz p1, :cond_16

    .line 11
    iget-object v0, p1, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->name:Ljava/lang/String;

    .line 13
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    .line 15
    iget-object v3, v3, Landroid/media/MediaRouterClientState$RouteInfo;->name:Ljava/lang/String;

    .line 17
    invoke-static {v3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    move-result v3

    .line 21
    const/4 v4, 0x1

    .line 22
    if-nez v3, :cond_0

    .line 24
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    .line 26
    iput-object v0, v3, Landroid/media/MediaRouterClientState$RouteInfo;->name:Ljava/lang/String;

    .line 28
    move v0, v4

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move v0, v2

    .line 31
    :goto_0
    iget-object v3, p1, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->description:Ljava/lang/String;

    .line 33
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    move-result v5

    .line 37
    if-eqz v5, :cond_1

    .line 39
    move-object v3, v1

    .line 40
    :cond_1
    iget-object v5, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    .line 42
    iget-object v5, v5, Landroid/media/MediaRouterClientState$RouteInfo;->description:Ljava/lang/String;

    .line 44
    invoke-static {v5, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    move-result v5

    .line 48
    if-nez v5, :cond_2

    .line 50
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    .line 52
    iput-object v3, v0, Landroid/media/MediaRouterClientState$RouteInfo;->description:Ljava/lang/String;

    .line 54
    move v0, v4

    .line 55
    :cond_2
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    .line 57
    iget v5, v3, Landroid/media/MediaRouterClientState$RouteInfo;->supportedTypes:I

    .line 59
    const/4 v6, 0x7

    .line 60
    if-eq v5, v6, :cond_3

    .line 62
    iput v6, v3, Landroid/media/MediaRouterClientState$RouteInfo;->supportedTypes:I

    .line 64
    move v0, v4

    .line 65
    :cond_3
    iget v5, p1, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->status:I

    .line 67
    const/4 v6, 0x4

    .line 68
    const/4 v7, 0x2

    .line 69
    const/4 v8, 0x3

    .line 70
    if-eq v5, v7, :cond_4

    .line 72
    if-eq v5, v8, :cond_4

    .line 74
    if-eq v5, v6, :cond_4

    .line 76
    move v9, v2

    .line 77
    goto :goto_1

    .line 78
    :cond_4
    move v9, v4

    .line 79
    :goto_1
    iget-boolean v10, v3, Landroid/media/MediaRouterClientState$RouteInfo;->enabled:Z

    .line 81
    if-eq v10, v9, :cond_5

    .line 83
    iput-boolean v9, v3, Landroid/media/MediaRouterClientState$RouteInfo;->enabled:Z

    .line 85
    move v0, v4

    .line 86
    :cond_5
    if-eqz v5, :cond_a

    .line 88
    if-eq v5, v4, :cond_9

    .line 90
    if-eq v5, v7, :cond_8

    .line 92
    if-eq v5, v8, :cond_7

    .line 94
    if-eq v5, v6, :cond_6

    .line 96
    move v6, v2

    .line 97
    goto :goto_2

    .line 98
    :cond_6
    const/4 v6, 0x6

    .line 99
    goto :goto_2

    .line 100
    :cond_7
    move v6, v7

    .line 101
    goto :goto_2

    .line 102
    :cond_8
    move v6, v8

    .line 103
    goto :goto_2

    .line 104
    :cond_9
    const/4 v6, 0x5

    .line 105
    :cond_a
    :goto_2
    iget v5, v3, Landroid/media/MediaRouterClientState$RouteInfo;->statusCode:I

    .line 107
    if-eq v5, v6, :cond_b

    .line 109
    iput v6, v3, Landroid/media/MediaRouterClientState$RouteInfo;->statusCode:I

    .line 111
    move v0, v4

    .line 112
    :cond_b
    iget v5, v3, Landroid/media/MediaRouterClientState$RouteInfo;->playbackType:I

    .line 114
    if-eq v5, v4, :cond_c

    .line 116
    iput v4, v3, Landroid/media/MediaRouterClientState$RouteInfo;->playbackType:I

    .line 118
    move v0, v4

    .line 119
    :cond_c
    iget v5, v3, Landroid/media/MediaRouterClientState$RouteInfo;->playbackStream:I

    .line 121
    if-eq v5, v8, :cond_d

    .line 123
    iput v8, v3, Landroid/media/MediaRouterClientState$RouteInfo;->playbackStream:I

    .line 125
    move v0, v4

    .line 126
    :cond_d
    iget v5, p1, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->volume:I

    .line 128
    iget v6, p1, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->volumeMax:I

    .line 130
    if-gez v5, :cond_e

    .line 132
    move v5, v2

    .line 133
    goto :goto_3

    .line 134
    :cond_e
    if-le v5, v6, :cond_f

    .line 136
    move v5, v6

    .line 137
    :cond_f
    :goto_3
    iget v7, v3, Landroid/media/MediaRouterClientState$RouteInfo;->volume:I

    .line 139
    if-eq v7, v5, :cond_10

    .line 141
    iput v5, v3, Landroid/media/MediaRouterClientState$RouteInfo;->volume:I

    .line 143
    move v0, v4

    .line 144
    :cond_10
    if-lez v6, :cond_11

    .line 146
    goto :goto_4

    .line 147
    :cond_11
    move v6, v2

    .line 148
    :goto_4
    iget v5, v3, Landroid/media/MediaRouterClientState$RouteInfo;->volumeMax:I

    .line 150
    if-eq v5, v6, :cond_12

    .line 152
    iput v6, v3, Landroid/media/MediaRouterClientState$RouteInfo;->volumeMax:I

    .line 154
    move v0, v4

    .line 155
    :cond_12
    iget v5, p1, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->volumeHandling:I

    .line 157
    if-eq v5, v4, :cond_13

    .line 159
    goto :goto_5

    .line 160
    :cond_13
    move v2, v4

    .line 161
    :goto_5
    iget v5, v3, Landroid/media/MediaRouterClientState$RouteInfo;->volumeHandling:I

    .line 163
    if-eq v5, v2, :cond_14

    .line 165
    iput v2, v3, Landroid/media/MediaRouterClientState$RouteInfo;->volumeHandling:I

    .line 167
    move v2, v4

    .line 168
    goto :goto_6

    .line 169
    :cond_14
    move v2, v0

    .line 170
    :goto_6
    iget p1, p1, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->presentationDisplayId:I

    .line 172
    if-gez p1, :cond_15

    .line 174
    const/4 p1, -0x1

    .line 175
    :cond_15
    iget v0, v3, Landroid/media/MediaRouterClientState$RouteInfo;->presentationDisplayId:I

    .line 177
    if-eq v0, p1, :cond_16

    .line 179
    iput p1, v3, Landroid/media/MediaRouterClientState$RouteInfo;->presentationDisplayId:I

    .line 181
    move v2, v4

    .line 182
    :cond_16
    if-eqz v2, :cond_17

    .line 184
    iput-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mImmutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    .line 186
    :cond_17
    return v2
.end method
