.class public final Lcom/android/server/locksettings/SyntheticPasswordManager$SdpSyntheticPasswordManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public spManager:Lcom/android/server/locksettings/SyntheticPasswordManager;


# direct methods
.method public static -$$Nest$mgetSecureMode(Lcom/android/server/locksettings/SyntheticPasswordManager$SdpSyntheticPasswordManager;I)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    :try_start_0
    invoke-static {p1}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->getSecureMode(I)I

    .line 6
    .line 7
    .line 8
    move-result v1
    :try_end_0
    .catch Lcom/android/server/locksettings/SyntheticPasswordMdfpp$EmptySlotException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_1

    .line 10
    :catch_0
    move-exception v1

    .line 11
    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$SdpSyntheticPasswordManager;->spManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getWeaverService()Landroid/hardware/weaver/IWeaver;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    sget-boolean v2, Lcom/android/server/locksettings/SyntheticPasswordManager;->DEBUG:Z

    .line 21
    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const-string v2, "SyntheticPasswordManager.SDP"

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    :goto_0
    move v1, v0

    .line 38
    :goto_1
    if-ne v1, v0, :cond_3

    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$SdpSyntheticPasswordManager;->spManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getWeaverService()Landroid/hardware/weaver/IWeaver;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    if-eqz p0, :cond_2

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string/jumbo v0, "user"

    .line 52
    .line 53
    .line 54
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v0, " - isSpecificProcessRequired : false, is Sdp user? false"

    .line 61
    .line 62
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :goto_2
    const/4 v1, 0x0

    .line 73
    :cond_3
    sget-object p0, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->mSecureModeCache:Landroid/util/SparseArray;

    .line 74
    .line 75
    monitor-enter p0

    .line 76
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    sget-boolean p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->DEBUG:Z

    .line 85
    .line 86
    if-eqz p0, :cond_4

    .line 87
    .line 88
    const-string v0, "SyntheticPasswordManager.SDP"

    .line 89
    .line 90
    const-string v2, "Cache - [ Secure Mode : %d, UserId : %d ]"

    .line 91
    .line 92
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    filled-new-array {v3, v4}, [Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    :cond_4
    if-eqz p0, :cond_5

    .line 112
    .line 113
    const-string p0, "SyntheticPasswordManager.SDP"

    .line 114
    .line 115
    const-string v0, "Get - [ Secure Mode : %d, UserId : %d ]"

    .line 116
    .line 117
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    :cond_5
    const-string p0, "SyntheticPasswordManager.SDP"

    .line 137
    .line 138
    const-string v0, "Secure mode for user %d = %d"

    .line 139
    .line 140
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    filled-new-array {p1, v2}, [Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    return v1

    .line 160
    :catchall_0
    move-exception p1

    .line 161
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 162
    throw p1
.end method
