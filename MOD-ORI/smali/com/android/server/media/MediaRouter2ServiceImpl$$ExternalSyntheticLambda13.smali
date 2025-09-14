.class public final synthetic Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/function/HeptConsumer;


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 12

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 3
    .line 4
    move-object v1, p2

    .line 5
    check-cast v1, Ljava/lang/Long;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 8
    .line 9
    .line 10
    move-result-wide v3

    .line 11
    move-object v1, p3

    .line 12
    check-cast v1, Ljava/lang/Long;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    move-object/from16 v5, p4

    .line 19
    .line 20
    check-cast v5, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 21
    .line 22
    move-object/from16 v6, p5

    .line 23
    .line 24
    check-cast v6, Landroid/media/RoutingSessionInfo;

    .line 25
    .line 26
    move-object/from16 v7, p6

    .line 27
    .line 28
    check-cast v7, Landroid/media/MediaRoute2Info;

    .line 29
    .line 30
    move-object/from16 v8, p7

    .line 31
    .line 32
    check-cast v8, Landroid/os/Bundle;

    .line 33
    .line 34
    sget v9, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->$r8$clinit:I

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v7}, Landroid/media/MediaRoute2Info;->getProviderId()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v9

    .line 43
    invoke-virtual {v0, v9}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->findProvider(Ljava/lang/String;)Lcom/android/server/media/MediaRoute2Provider;

    .line 44
    .line 45
    .line 46
    move-result-object v9

    .line 47
    if-nez v9, :cond_0

    .line 48
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string/jumbo v1, "requestCreateSessionWithRouter2OnHandler: Ignoring session creation request since no provider found for given route="

    .line 52
    .line 53
    .line 54
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const-string v1, "MR2ServiceImpl"

    .line 65
    .line 66
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    long-to-int v0, v3

    .line 70
    invoke-static {v5, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifySessionCreationFailedToRouter(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;I)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_0
    new-instance v10, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;

    .line 75
    .line 76
    move-object p0, v10

    .line 77
    move-object p1, v5

    .line 78
    move-wide p2, v3

    .line 79
    move-wide/from16 p4, v1

    .line 80
    .line 81
    move-object/from16 p6, v6

    .line 82
    .line 83
    move-object/from16 p7, v7

    .line 84
    .line 85
    invoke-direct/range {p0 .. p7}, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;-><init>(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;JJLandroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    .line 86
    .line 87
    .line 88
    iget-object v0, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSessionCreationRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 89
    .line 90
    invoke-virtual {v0, v10}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    const-wide/16 v10, 0x0

    .line 94
    .line 95
    cmp-long v0, v1, v10

    .line 96
    .line 97
    if-eqz v0, :cond_1

    .line 98
    .line 99
    const/4 v0, 0x1

    .line 100
    goto :goto_0

    .line 101
    :cond_1
    const/4 v0, 0x2

    .line 102
    :goto_0
    iget-object v1, v5, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mPackageName:Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {v7}, Landroid/media/MediaRoute2Info;->getOriginalId()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    iget-object v2, v5, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 109
    .line 110
    iget v2, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mUserId:I

    .line 111
    .line 112
    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 113
    .line 114
    .line 115
    move-result-object v10

    .line 116
    iget-object v11, v5, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mPackageName:Ljava/lang/String;

    .line 117
    .line 118
    move-object v2, v9

    .line 119
    move-object v5, v1

    .line 120
    move-object v7, v8

    .line 121
    move v8, v0

    .line 122
    move-object v9, v10

    .line 123
    move-object v10, v11

    .line 124
    invoke-virtual/range {v2 .. v10}, Lcom/android/server/media/MediaRoute2Provider;->requestCreateSession(JLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILandroid/os/UserHandle;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    :goto_1
    return-void
.end method
