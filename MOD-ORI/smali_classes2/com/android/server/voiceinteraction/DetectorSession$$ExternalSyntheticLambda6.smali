.class public final synthetic Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/voiceinteraction/DetectorSession;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/voiceinteraction/DetectorSession;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/voiceinteraction/DetectorSession;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 9

    .line 1
    iget-object p0, p0, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/voiceinteraction/DetectorSession;

    .line 2
    .line 3
    const-string v0, "The app op OP_RECEIVE_SANDBOX_TRIGGER_AUDIO is denied for identity"

    .line 4
    .line 5
    const-string v1, "Failed to obtain permission RECORD_AUDIO for identity "

    .line 6
    .line 7
    iget-object v2, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v2

    .line 10
    :try_start_0
    iget-object v3, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-static {v3}, Lcom/android/server/policy/AppOpsPolicy;->isHotwordDetectionServiceRequired(Landroid/content/pm/PackageManager;)Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_5

    .line 21
    .line 22
    iget-object v3, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    const-string v4, "android.permission.RECORD_AUDIO"

    .line 25
    .line 26
    iget-object v5, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractorIdentity:Landroid/media/permission/Identity;

    .line 27
    .line 28
    iget v6, v5, Landroid/media/permission/Identity;->uid:I

    .line 29
    .line 30
    iget-object v5, v5, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    .line 31
    .line 32
    const/4 v7, -0x1

    .line 33
    invoke-static {v3, v4, v7, v6, v5}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-nez v3, :cond_4

    .line 38
    .line 39
    iget-object v1, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 40
    .line 41
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->voiceActivationPermissionApis()Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    const/16 v4, 0x66

    .line 46
    .line 47
    const/16 v5, 0x88

    .line 48
    .line 49
    if-eqz v3, :cond_0

    .line 50
    .line 51
    move v3, v5

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    move v3, v4

    .line 54
    :goto_0
    invoke-static {v3}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    iget-object v6, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractorIdentity:Landroid/media/permission/Identity;

    .line 59
    .line 60
    iget v7, v6, Landroid/media/permission/Identity;->uid:I

    .line 61
    .line 62
    iget-object v6, v6, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v1, v3, v7, v6}, Landroid/app/AppOpsManager;->unsafeCheckOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    const/4 v3, 0x3

    .line 69
    if-eq v1, v3, :cond_2

    .line 70
    .line 71
    if-nez v1, :cond_1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    new-instance v1, Ljava/lang/SecurityException;

    .line 75
    .line 76
    new-instance v3, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-object p0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractorIdentity:Landroid/media/permission/Identity;

    .line 82
    .line 83
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-direct {v1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw v1

    .line 94
    :catchall_0
    move-exception p0

    .line 95
    goto :goto_3

    .line 96
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 97
    .line 98
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->voiceActivationPermissionApis()Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-eqz v0, :cond_3

    .line 103
    .line 104
    move v4, v5

    .line 105
    :cond_3
    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractorIdentity:Landroid/media/permission/Identity;

    .line 106
    .line 107
    iget v5, v0, Landroid/media/permission/Identity;->uid:I

    .line 108
    .line 109
    iget-object v6, v0, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    .line 110
    .line 111
    iget-object v7, v0, Landroid/media/permission/Identity;->attributionTag:Ljava/lang/String;

    .line 112
    .line 113
    const-string v8, "Providing hotword detection result to VoiceInteractionService"

    .line 114
    .line 115
    invoke-virtual/range {v3 .. v8}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_4
    new-instance v0, Ljava/lang/SecurityException;

    .line 120
    .line 121
    new-instance v3, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    iget-object p0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractorIdentity:Landroid/media/permission/Identity;

    .line 127
    .line 128
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    throw v0

    .line 139
    :cond_5
    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mContext:Landroid/content/Context;

    .line 140
    .line 141
    iget-object v1, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractorIdentity:Landroid/media/permission/Identity;

    .line 142
    .line 143
    const-string v3, "android.permission.RECORD_AUDIO"

    .line 144
    .line 145
    const-string v4, "Providing hotword detection result to VoiceInteractionService"

    .line 146
    .line 147
    invoke-static {v0, v1, v3, v4}, Lcom/android/server/voiceinteraction/DetectorSession;->enforcePermissionForDataDelivery(Landroid/content/Context;Landroid/media/permission/Identity;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    :goto_2
    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mContext:Landroid/content/Context;

    .line 151
    .line 152
    iget-object p0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractorIdentity:Landroid/media/permission/Identity;

    .line 153
    .line 154
    const-string v1, "android.permission.CAPTURE_AUDIO_HOTWORD"

    .line 155
    .line 156
    const-string v3, "Providing hotword detection result to VoiceInteractionService"

    .line 157
    .line 158
    invoke-static {v0, p0, v1, v3}, Lcom/android/server/voiceinteraction/DetectorSession;->enforcePermissionForDataDelivery(Landroid/content/Context;Landroid/media/permission/Identity;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    monitor-exit v2

    .line 162
    return-void

    .line 163
    :goto_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    throw p0
.end method
