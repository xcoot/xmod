.class public final synthetic Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 1
    const-string v0, "MR2ServiceImpl"

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 4
    .line 5
    check-cast p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 6
    .line 7
    packed-switch p0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p2, Lcom/android/server/media/MediaRoute2Provider;

    .line 11
    .line 12
    check-cast p3, Landroid/media/RoutingSessionInfo;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getManagers()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Landroid/media/IMediaRouter2Manager;

    .line 35
    .line 36
    :try_start_0
    invoke-interface {v1, p3}, Landroid/media/IMediaRouter2Manager;->notifySessionUpdated(Landroid/media/RoutingSessionInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception v1

    .line 41
    const-string/jumbo v2, "notifySessionUpdatedToManagers: Failed to notify. Manager probably died."

    .line 42
    .line 43
    .line 44
    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    iget-object p0, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSystemProvider:Lcom/android/server/media/SystemMediaRoute2Provider;

    .line 49
    .line 50
    if-ne p2, p0, :cond_2

    .line 51
    .line 52
    iget-object p2, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mServiceRef:Ljava/lang/ref/WeakReference;

    .line 53
    .line 54
    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    if-nez p2, :cond_1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    const/4 p2, 0x1

    .line 62
    invoke-virtual {p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getRouterRecords(Z)Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-static {p2, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifySessionInfoChangedToRouters(Ljava/util/List;Landroid/media/RoutingSessionInfo;)V

    .line 67
    .line 68
    .line 69
    const/4 p2, 0x0

    .line 70
    invoke-virtual {p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getRouterRecords(Z)Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iget-object p0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDefaultSessionInfo:Landroid/media/RoutingSessionInfo;

    .line 75
    .line 76
    invoke-static {p1, p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifySessionInfoChangedToRouters(Ljava/util/List;Landroid/media/RoutingSessionInfo;)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    iget-object p0, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSessionToRouterMap:Ljava/util/Map;

    .line 81
    .line 82
    invoke-virtual {p3}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    check-cast p0, Landroid/util/ArrayMap;

    .line 87
    .line 88
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    check-cast p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 93
    .line 94
    if-nez p0, :cond_3

    .line 95
    .line 96
    new-instance p0, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string/jumbo p1, "onSessionInfoChangedOnHandler: No matching router found for session="

    .line 99
    .line 100
    .line 101
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_3
    filled-new-array {p0}, [Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    invoke-static {p0, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifySessionInfoChangedToRouters(Ljava/util/List;Landroid/media/RoutingSessionInfo;)V

    .line 124
    .line 125
    .line 126
    :goto_1
    return-void

    .line 127
    :pswitch_0
    check-cast p2, Lcom/android/server/media/MediaRoute2Provider;

    .line 128
    .line 129
    check-cast p3, Landroid/media/RoutingSessionInfo;

    .line 130
    .line 131
    invoke-virtual {p1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getManagers()Ljava/util/List;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    check-cast p0, Ljava/util/ArrayList;

    .line 136
    .line 137
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 142
    .line 143
    .line 144
    move-result p2

    .line 145
    if-eqz p2, :cond_4

    .line 146
    .line 147
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    check-cast p2, Landroid/media/IMediaRouter2Manager;

    .line 152
    .line 153
    :try_start_1
    invoke-interface {p2, p3}, Landroid/media/IMediaRouter2Manager;->notifySessionReleased(Landroid/media/RoutingSessionInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 154
    .line 155
    .line 156
    goto :goto_2

    .line 157
    :catch_1
    move-exception p2

    .line 158
    const-string/jumbo v1, "notifySessionReleasedToManagers: Failed to notify. Manager probably died."

    .line 159
    .line 160
    .line 161
    invoke-static {v0, v1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_4
    iget-object p0, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSessionToRouterMap:Ljava/util/Map;

    .line 166
    .line 167
    invoke-virtual {p3}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    check-cast p0, Landroid/util/ArrayMap;

    .line 172
    .line 173
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    check-cast p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 178
    .line 179
    if-nez p0, :cond_5

    .line 180
    .line 181
    new-instance p0, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    const-string/jumbo p1, "onSessionReleasedOnHandler: No matching router found for session="

    .line 184
    .line 185
    .line 186
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    .line 198
    .line 199
    goto :goto_3

    .line 200
    :cond_5
    :try_start_2
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mRouter:Landroid/media/IMediaRouter2;

    .line 201
    .line 202
    invoke-interface {p0, p3}, Landroid/media/IMediaRouter2;->notifySessionReleased(Landroid/media/RoutingSessionInfo;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 203
    .line 204
    .line 205
    goto :goto_3

    .line 206
    :catch_2
    move-exception p0

    .line 207
    const-string p1, "Failed to notify router of the session release. Router probably died."

    .line 208
    .line 209
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 210
    .line 211
    .line 212
    :goto_3
    return-void

    .line 213
    :pswitch_1
    check-cast p2, Ljava/lang/String;

    .line 214
    .line 215
    check-cast p3, Landroid/media/RouteListingPreference;

    .line 216
    .line 217
    invoke-static {p1, p2, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->$r8$lambda$heOK_4zIzngS8WMr61qD_midgrQ(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Ljava/lang/String;Landroid/media/RouteListingPreference;)V

    .line 218
    .line 219
    .line 220
    return-void

    .line 221
    :pswitch_2
    check-cast p2, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 222
    .line 223
    check-cast p3, Landroid/media/IMediaRouter2Manager;

    .line 224
    .line 225
    sget p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->$r8$clinit:I

    .line 226
    .line 227
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 228
    .line 229
    .line 230
    :try_start_3
    iget-object p0, p2, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mPackageName:Ljava/lang/String;

    .line 231
    .line 232
    iget-object p1, p2, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    .line 233
    .line 234
    invoke-interface {p3, p0, p1}, Landroid/media/IMediaRouter2Manager;->notifyDiscoveryPreferenceChanged(Ljava/lang/String;Landroid/media/RouteDiscoveryPreference;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 235
    .line 236
    .line 237
    goto :goto_4

    .line 238
    :catch_3
    move-exception p0

    .line 239
    const-string p1, "Failed to notify preferred features changed. Manager probably died."

    .line 240
    .line 241
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 242
    .line 243
    .line 244
    :goto_4
    return-void

    .line 245
    :pswitch_3
    check-cast p2, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 246
    .line 247
    check-cast p3, Ljava/lang/Integer;

    .line 248
    .line 249
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 250
    .line 251
    .line 252
    move-result p0

    .line 253
    sget p3, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->$r8$clinit:I

    .line 254
    .line 255
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 256
    .line 257
    .line 258
    invoke-static {p2, p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifySessionCreationFailedToRouter(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;I)V

    .line 259
    .line 260
    .line 261
    return-void

    .line 262
    :pswitch_4
    check-cast p2, Ljava/lang/String;

    .line 263
    .line 264
    check-cast p3, Landroid/media/RouteDiscoveryPreference;

    .line 265
    .line 266
    invoke-static {p1, p2, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->$r8$lambda$l439RW2gb6MOGyg-suamHEVj0Rk(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Ljava/lang/String;Landroid/media/RouteDiscoveryPreference;)V

    .line 267
    .line 268
    .line 269
    return-void

    .line 270
    nop

    .line 271
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
