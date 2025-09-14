.class public abstract Lcom/android/server/biometrics/sensors/InternalEnumerateClient;
.super Lcom/android/server/biometrics/sensors/HalClientMonitor;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/biometrics/sensors/EnumerateConsumer;


# instance fields
.field public final mEnrolledList:Ljava/util/List;

.field public final mInitialEnrolledSize:I

.field public final mUnknownHALTemplates:Ljava/util/List;

.field public final mUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;ILjava/lang/String;Ljava/util/List;Lcom/android/server/biometrics/sensors/BiometricUtils;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V
    .locals 13

    .line 1
    move-object v12, p0

    .line 2
    const/4 v7, 0x0

    .line 3
    const/4 v11, 0x0

    .line 4
    const/4 v4, 0x0

    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p1

    .line 7
    move-object v2, p2

    .line 8
    move-object/from16 v3, p3

    .line 9
    .line 10
    move/from16 v5, p4

    .line 11
    .line 12
    move-object/from16 v6, p5

    .line 13
    .line 14
    move/from16 v8, p8

    .line 15
    .line 16
    move-object/from16 v9, p9

    .line 17
    .line 18
    move-object/from16 v10, p10

    .line 19
    .line 20
    invoke-direct/range {v0 .. v11}, Lcom/android/server/biometrics/sensors/HalClientMonitor;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Z)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v0, v12, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mUnknownHALTemplates:Ljava/util/List;

    .line 29
    .line 30
    move-object/from16 v0, p6

    .line 31
    .line 32
    iput-object v0, v12, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mEnrolledList:Ljava/util/List;

    .line 33
    .line 34
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iput v0, v12, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mInitialEnrolledSize:I

    .line 39
    .line 40
    move-object/from16 v0, p7

    .line 41
    .line 42
    iput-object v0, v12, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

    .line 43
    .line 44
    return-void
.end method


# virtual methods
.method public abstract getModality()I
.end method

.method public final getProtoEnum()I
    .locals 0

    .line 1
    const/4 p0, 0x6

    .line 2
    return p0
.end method

.method public final onEnumerationResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string v2, "Biometrics/InternalEnumerateClient"

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const-string p1, "Null identifier"

    .line 8
    .line 9
    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    goto :goto_2

    .line 13
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string/jumbo v4, "handleEnumeratedTemplate: "

    .line 16
    .line 17
    .line 18
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move v3, v1

    .line 36
    :goto_0
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mEnrolledList:Ljava/util/List;

    .line 37
    .line 38
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-ge v3, v4, :cond_2

    .line 43
    .line 44
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mEnrolledList:Ljava/util/List;

    .line 45
    .line 46
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    check-cast v4, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    .line 51
    .line 52
    invoke-virtual {v4}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    if-ne v4, v5, :cond_1

    .line 61
    .line 62
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mEnrolledList:Ljava/util/List;

    .line 63
    .line 64
    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move v3, v0

    .line 68
    goto :goto_1

    .line 69
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    move v3, v1

    .line 73
    :goto_1
    if-nez v3, :cond_3

    .line 74
    .line 75
    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    if-eqz v4, :cond_3

    .line 80
    .line 81
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mUnknownHALTemplates:Ljava/util/List;

    .line 82
    .line 83
    check-cast v4, Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    const-string v4, "Matched: "

    .line 91
    .line 92
    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-static {v2, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    :goto_2
    if-nez p2, :cond_8

    .line 106
    .line 107
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mEnrolledList:Ljava/util/List;

    .line 108
    .line 109
    if-nez p1, :cond_4

    .line 110
    .line 111
    const-string p1, "Null enrolledList"

    .line 112
    .line 113
    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    goto/16 :goto_5

    .line 117
    .line 118
    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    .line 119
    .line 120
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .line 122
    .line 123
    :goto_3
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mEnrolledList:Ljava/util/List;

    .line 124
    .line 125
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 126
    .line 127
    .line 128
    move-result p2

    .line 129
    if-ge v1, p2, :cond_6

    .line 130
    .line 131
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mEnrolledList:Ljava/util/List;

    .line 132
    .line 133
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    check-cast p2, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    .line 138
    .line 139
    invoke-virtual {p2}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getName()Ljava/lang/CharSequence;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    new-instance v3, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    const-string/jumbo v4, "doTemplateCleanup(): Removing dangling template from framework: "

    .line 153
    .line 154
    .line 155
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p2}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    .line 159
    .line 160
    .line 161
    move-result v4

    .line 162
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    const-string v4, " "

    .line 166
    .line 167
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {p2}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getName()Ljava/lang/CharSequence;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    .line 183
    .line 184
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

    .line 185
    .line 186
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 187
    .line 188
    iget v5, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 189
    .line 190
    invoke-virtual {p2}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    .line 191
    .line 192
    .line 193
    move-result p2

    .line 194
    invoke-interface {v3, v4, v5, p2}, Lcom/android/server/biometrics/sensors/BiometricUtils;->removeBiometricForUser(Landroid/content/Context;II)V

    .line 195
    .line 196
    .line 197
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mLogger:Lcom/android/server/biometrics/log/BiometricLogger;

    .line 198
    .line 199
    invoke-virtual {p2}, Lcom/android/server/biometrics/log/BiometricLogger;->shouldSkipLogging()Z

    .line 200
    .line 201
    .line 202
    move-result v3

    .line 203
    if-eqz v3, :cond_5

    .line 204
    .line 205
    goto :goto_4

    .line 206
    :cond_5
    iget-object v3, p2, Lcom/android/server/biometrics/log/BiometricLogger;->mSink:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    .line 207
    .line 208
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 209
    .line 210
    .line 211
    iget p2, p2, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    .line 212
    .line 213
    const/4 v3, 0x2

    .line 214
    const/16 v4, 0x94

    .line 215
    .line 216
    const/4 v5, -0x1

    .line 217
    invoke-static {v4, p2, v3, v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 218
    .line 219
    .line 220
    :goto_4
    add-int/lit8 v1, v1, 0x1

    .line 221
    .line 222
    goto :goto_3

    .line 223
    :cond_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 224
    .line 225
    .line 226
    move-result p2

    .line 227
    if-nez p2, :cond_7

    .line 228
    .line 229
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->sendDanglingNotification(Ljava/util/List;)V

    .line 230
    .line 231
    .line 232
    :cond_7
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mEnrolledList:Ljava/util/List;

    .line 233
    .line 234
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 235
    .line 236
    .line 237
    :goto_5
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 238
    .line 239
    invoke-interface {p1, p0, v0}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 240
    .line 241
    .line 242
    :cond_8
    return-void
.end method

.method public sendDanglingNotification(Ljava/util/List;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v3

    .line 10
    if-nez v3, :cond_11

    .line 11
    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string/jumbo v4, "sendDanglingNotification(): initial enrolledSize="

    .line 15
    .line 16
    .line 17
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget v4, v0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mInitialEnrolledSize:I

    .line 21
    .line 22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v4, ", after clean up size="

    .line 26
    .line 27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object v4, v0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mEnrolledList:Ljava/util/List;

    .line 31
    .line 32
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    const-string v4, "Biometrics/InternalEnumerateClient"

    .line 44
    .line 45
    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    iget-object v3, v0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mEnrolledList:Ljava/util/List;

    .line 49
    .line 50
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    iget v4, v0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mInitialEnrolledSize:I

    .line 55
    .line 56
    if-ne v3, v4, :cond_0

    .line 57
    .line 58
    move v3, v2

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    const/4 v3, 0x0

    .line 61
    :goto_0
    iget-object v6, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 62
    .line 63
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->getModality()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    sget-object v4, Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;->DISMISS_FRR_INTENT:Landroid/content/Intent;

    .line 68
    .line 69
    if-ne v0, v2, :cond_1

    .line 70
    .line 71
    move v0, v2

    .line 72
    goto :goto_1

    .line 73
    :cond_1
    const/4 v0, 0x0

    .line 74
    :goto_1
    const-string v4, "FaceReEnroll"

    .line 75
    .line 76
    const-string v7, "FingerprintReEnroll"

    .line 77
    .line 78
    if-eqz v0, :cond_2

    .line 79
    .line 80
    move-object v8, v7

    .line 81
    goto :goto_2

    .line 82
    :cond_2
    move-object v8, v4

    .line 83
    :goto_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    .line 84
    .line 85
    .line 86
    move-result v9

    .line 87
    const-string v10, "BiometricNotificationUtils"

    .line 88
    .line 89
    if-eqz v9, :cond_3

    .line 90
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    const-string v1, "Skipping "

    .line 94
    .line 95
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v1, " notification : empty list"

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-static {v10, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    goto/16 :goto_e

    .line 114
    .line 115
    :cond_3
    const-string v9, "Showing "

    .line 116
    .line 117
    const-string v11, " notification :["

    .line 118
    .line 119
    invoke-static {v9, v8, v11}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    move-result-object v8

    .line 123
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 124
    .line 125
    .line 126
    move-result v9

    .line 127
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string v9, " identifier(s) deleted, allIdentifiersDeleted="

    .line 131
    .line 132
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string v9, "]"

    .line 139
    .line 140
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v8

    .line 147
    invoke-static {v10, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .line 149
    .line 150
    const v8, 0x104045f

    .line 151
    .line 152
    .line 153
    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v8

    .line 157
    if-eqz v0, :cond_4

    .line 158
    .line 159
    const v9, 0x1040575

    .line 160
    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_4
    const v9, 0x104053a

    .line 164
    .line 165
    .line 166
    :goto_3
    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v9

    .line 170
    if-eqz v0, :cond_c

    .line 171
    .line 172
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    .line 173
    .line 174
    .line 175
    move-result v11

    .line 176
    if-eqz v11, :cond_5

    .line 177
    .line 178
    const/4 v1, 0x0

    .line 179
    goto/16 :goto_8

    .line 180
    .line 181
    :cond_5
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 182
    .line 183
    .line 184
    move-result v11

    .line 185
    new-instance v12, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    .line 189
    .line 190
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    .line 191
    .line 192
    .line 193
    move-result-object v13

    .line 194
    const-string v14, "\""

    .line 195
    .line 196
    if-le v11, v2, :cond_a

    .line 197
    .line 198
    const/4 v10, 0x0

    .line 199
    const/4 v15, 0x0

    .line 200
    :goto_4
    if-ge v15, v11, :cond_8

    .line 201
    .line 202
    add-int/lit8 v5, v11, -0x1

    .line 203
    .line 204
    if-ne v15, v5, :cond_6

    .line 205
    .line 206
    new-instance v5, Ljava/lang/StringBuilder;

    .line 207
    .line 208
    invoke-direct {v5, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v10

    .line 215
    check-cast v10, Ljava/lang/String;

    .line 216
    .line 217
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v5

    .line 227
    invoke-virtual {v13, v5}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v5

    .line 231
    move-object v10, v5

    .line 232
    goto :goto_5

    .line 233
    :cond_6
    invoke-virtual {v13, v14}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v5

    .line 237
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v5

    .line 244
    check-cast v5, Ljava/lang/String;

    .line 245
    .line 246
    invoke-virtual {v13, v5}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v5

    .line 250
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v13, v14}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v5

    .line 257
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    add-int/lit8 v5, v11, -0x2

    .line 261
    .line 262
    if-ge v15, v5, :cond_7

    .line 263
    .line 264
    const-string v5, ", "

    .line 265
    .line 266
    invoke-virtual {v13, v5}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v5

    .line 270
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    :cond_7
    :goto_5
    add-int/2addr v15, v2

    .line 274
    goto :goto_4

    .line 275
    :cond_8
    if-eqz v3, :cond_9

    .line 276
    .line 277
    const v1, 0x1040574

    .line 278
    .line 279
    .line 280
    goto :goto_6

    .line 281
    :cond_9
    const v1, 0x1040572

    .line 282
    .line 283
    .line 284
    :goto_6
    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    filled-new-array {v12, v10}, [Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    goto :goto_8

    .line 297
    :cond_a
    if-eqz v3, :cond_b

    .line 298
    .line 299
    const v2, 0x1040573

    .line 300
    .line 301
    .line 302
    goto :goto_7

    .line 303
    :cond_b
    const v2, 0x1040571

    .line 304
    .line 305
    .line 306
    :goto_7
    invoke-virtual {v13, v14}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v3

    .line 310
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    const/4 v3, 0x0

    .line 314
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    check-cast v1, Ljava/lang/String;

    .line 319
    .line 320
    invoke-virtual {v13, v1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v1

    .line 324
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v13, v14}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v6, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v1

    .line 338
    filled-new-array {v12}, [Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object v2

    .line 342
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v1

    .line 346
    goto :goto_8

    .line 347
    :cond_c
    const v1, 0x1040539

    .line 348
    .line 349
    .line 350
    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v1

    .line 354
    :goto_8
    new-instance v2, Landroid/content/Intent;

    .line 355
    .line 356
    if-eqz v0, :cond_d

    .line 357
    .line 358
    const-string v3, "action_fingerprint_re_enroll_launch"

    .line 359
    .line 360
    goto :goto_9

    .line 361
    :cond_d
    const-string v3, "action_face_re_enroll_launch"

    .line 362
    .line 363
    :goto_9
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 367
    .line 368
    const/high16 v5, 0x4000000

    .line 369
    .line 370
    const/4 v10, 0x0

    .line 371
    invoke-static {v6, v10, v2, v5, v3}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 372
    .line 373
    .line 374
    move-result-object v2

    .line 375
    const v10, 0x1040235

    .line 376
    .line 377
    .line 378
    invoke-virtual {v6, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v10

    .line 382
    new-instance v11, Landroid/app/Notification$Action$Builder;

    .line 383
    .line 384
    const/4 v12, 0x0

    .line 385
    invoke-direct {v11, v12, v10, v2}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v11}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    .line 389
    .line 390
    .line 391
    move-result-object v11

    .line 392
    new-instance v10, Landroid/content/Intent;

    .line 393
    .line 394
    if-eqz v0, :cond_e

    .line 395
    .line 396
    const-string v12, "action_fingerprint_re_enroll_dismiss"

    .line 397
    .line 398
    goto :goto_a

    .line 399
    :cond_e
    const-string v12, "action_face_re_enroll_dismiss"

    .line 400
    .line 401
    :goto_a
    invoke-direct {v10, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    const/4 v12, 0x0

    .line 405
    invoke-static {v6, v12, v10, v5, v3}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 406
    .line 407
    .line 408
    move-result-object v3

    .line 409
    const v5, 0x1040234

    .line 410
    .line 411
    .line 412
    invoke-virtual {v6, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v5

    .line 416
    new-instance v10, Landroid/app/Notification$Action$Builder;

    .line 417
    .line 418
    const/4 v12, 0x0

    .line 419
    invoke-direct {v10, v12, v5, v3}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 420
    .line 421
    .line 422
    invoke-virtual {v10}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    .line 423
    .line 424
    .line 425
    move-result-object v12

    .line 426
    if-eqz v0, :cond_f

    .line 427
    .line 428
    const-string v3, "FingerprintReEnrollNotificationChannel"

    .line 429
    .line 430
    :goto_b
    move-object v14, v3

    .line 431
    goto :goto_c

    .line 432
    :cond_f
    const-string v3, "FaceReEnrollNotificationChannel"

    .line 433
    .line 434
    goto :goto_b

    .line 435
    :goto_c
    if-eqz v0, :cond_10

    .line 436
    .line 437
    move-object v15, v7

    .line 438
    goto :goto_d

    .line 439
    :cond_10
    move-object v15, v4

    .line 440
    :goto_d
    const/16 v17, 0x0

    .line 441
    .line 442
    const/16 v18, 0x20

    .line 443
    .line 444
    const-string/jumbo v13, "sys"

    .line 445
    .line 446
    .line 447
    const/16 v16, -0x1

    .line 448
    .line 449
    move-object v7, v8

    .line 450
    move-object v8, v9

    .line 451
    move-object v9, v1

    .line 452
    move-object v10, v2

    .line 453
    invoke-static/range {v6 .. v18}, Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;->showNotificationHelper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/Notification$Action;Landroid/app/Notification$Action;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI)V

    .line 454
    .line 455
    .line 456
    :cond_11
    :goto_e
    return-void
.end method

.method public final start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->startHalOperation()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final unableToStart()V
    .locals 0

    .line 1
    return-void
.end method
