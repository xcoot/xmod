.class public final synthetic Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/function/OctConsumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda12;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    .line 1
    move-object v0, p0

    .line 2
    iget v0, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda12;->$r8$classId:I

    .line 3
    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    move-object v0, p1

    .line 8
    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 9
    .line 10
    move-object v1, p2

    .line 11
    check-cast v1, Ljava/lang/Long;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    move-object v3, p3

    .line 18
    check-cast v3, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 19
    .line 20
    move-object v4, p4

    .line 21
    check-cast v4, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    .line 22
    .line 23
    move-object v5, p5

    .line 24
    check-cast v5, Landroid/media/RoutingSessionInfo;

    .line 25
    .line 26
    move-object v6, p6

    .line 27
    check-cast v6, Landroid/media/MediaRoute2Info;

    .line 28
    .line 29
    move-object/from16 v7, p7

    .line 30
    .line 31
    check-cast v7, Landroid/os/UserHandle;

    .line 32
    .line 33
    move-object/from16 v7, p8

    .line 34
    .line 35
    check-cast v7, Ljava/lang/String;

    .line 36
    .line 37
    sget v7, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->$r8$clinit:I

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    :try_start_0
    invoke-virtual {v6}, Landroid/media/MediaRoute2Info;->isSystemRoute()Z

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    if-eqz v7, :cond_0

    .line 47
    .line 48
    invoke-virtual {v3}, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->hasSystemRoutingPermission()Z

    .line 49
    .line 50
    .line 51
    move-result v7

    .line 52
    if-nez v7, :cond_0

    .line 53
    .line 54
    iget-object v0, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSystemProvider:Lcom/android/server/media/SystemMediaRoute2Provider;

    .line 55
    .line 56
    iget-object v6, v0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDefaultRoute:Landroid/media/MediaRoute2Info;

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    goto :goto_1

    .line 61
    :cond_0
    :goto_0
    iget-object v0, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mRouter:Landroid/media/IMediaRouter2;

    .line 62
    .line 63
    invoke-interface {v0, v1, v2, v5, v6}, Landroid/media/IMediaRouter2;->requestCreateSessionByManager(JLandroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    .line 66
    goto :goto_2

    .line 67
    :goto_1
    const-string v3, "MR2ServiceImpl"

    .line 68
    .line 69
    const-string/jumbo v5, "getSessionHintsForCreatingSessionOnHandler: Failed to request. Router probably died."

    .line 70
    .line 71
    .line 72
    invoke-static {v3, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    .line 74
    .line 75
    iget-object v0, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManager:Landroid/media/IMediaRouter2Manager;

    .line 76
    .line 77
    long-to-int v1, v1

    .line 78
    const/4 v2, 0x0

    .line 79
    invoke-static {v0, v1, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifyRequestFailedToManager(Landroid/media/IMediaRouter2Manager;II)V

    .line 80
    .line 81
    .line 82
    :goto_2
    return-void

    .line 83
    :pswitch_0
    move-object v0, p1

    .line 84
    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 85
    .line 86
    move-object v1, p2

    .line 87
    check-cast v1, Ljava/lang/Long;

    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 90
    .line 91
    .line 92
    move-result-wide v1

    .line 93
    move-object v3, p3

    .line 94
    check-cast v3, Landroid/os/UserHandle;

    .line 95
    .line 96
    move-object v4, p4

    .line 97
    check-cast v4, Ljava/lang/String;

    .line 98
    .line 99
    move-object v5, p5

    .line 100
    check-cast v5, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 101
    .line 102
    move-object v6, p6

    .line 103
    check-cast v6, Ljava/lang/String;

    .line 104
    .line 105
    move-object/from16 v7, p7

    .line 106
    .line 107
    check-cast v7, Landroid/media/MediaRoute2Info;

    .line 108
    .line 109
    move-object/from16 v8, p8

    .line 110
    .line 111
    check-cast v8, Ljava/lang/Integer;

    .line 112
    .line 113
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 114
    .line 115
    .line 116
    move-result v8

    .line 117
    move-object p0, v0

    .line 118
    move-wide p1, v1

    .line 119
    move-object p3, v3

    .line 120
    move-object p4, v4

    .line 121
    move-object p5, v5

    .line 122
    move-object p6, v6

    .line 123
    move-object/from16 p7, v7

    .line 124
    .line 125
    move/from16 p8, v8

    .line 126
    .line 127
    invoke-static/range {p0 .. p8}, Lcom/android/server/media/MediaRouter2ServiceImpl;->$r8$lambda$VwOkF_wuq7S_wu2mL143qz8S5B4(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JLandroid/os/UserHandle;Ljava/lang/String;Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;I)V

    .line 128
    .line 129
    .line 130
    return-void

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
