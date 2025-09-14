.class public final Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;
.super Lcom/android/server/infra/AbstractPerUserSystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mLock:Ljava/lang/Object;

.field public final mRemoteServicesByUid:Ljava/util/Map;

.field public final mSessionCountByUid:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(Lcom/android/server/speech/SpeechRecognitionManagerService;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/infra/AbstractPerUserSystemService;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/Object;I)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance p1, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->mRemoteServicesByUid:Ljava/util/Map;

    .line 17
    .line 18
    new-instance p1, Landroid/util/SparseIntArray;

    .line 19
    .line 20
    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->mSessionCountByUid:Landroid/util/SparseIntArray;

    .line 24
    .line 25
    return-void
.end method

.method public static tryRespondWithError(Landroid/speech/IRecognitionServiceManagerCallback;I)V
    .locals 0

    .line 1
    :try_start_0
    invoke-interface {p0, p1}, Landroid/speech/IRecognitionServiceManagerCallback;->onError(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :catch_0
    const-string p0, "SpeechRecognitionManagerServiceImpl"

    .line 6
    .line 7
    const-string p1, "Failed to respond with error"

    .line 8
    .line 9
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :goto_0
    return-void
.end method


# virtual methods
.method public final checkPrivilege(Landroid/content/ComponentName;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string/jumbo v2, "voice_recognition_service"

    .line 12
    .line 13
    .line 14
    iget v3, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 15
    .line 16
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->getOnDeviceComponentNameLocked()Landroid/content/ComponentName;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const/4 v2, 0x1

    .line 41
    const/4 v4, 0x0

    .line 42
    if-nez v0, :cond_2

    .line 43
    .line 44
    :catch_0
    :cond_1
    move v0, v4

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    const/high16 v6, 0x100000

    .line 51
    .line 52
    invoke-virtual {v0, v5, v6, v3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    and-int/2addr v0, v2

    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    move v0, v2

    .line 62
    :goto_1
    invoke-virtual {p1, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-nez v1, :cond_4

    .line 67
    .line 68
    invoke-virtual {p1, p0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    if-nez p0, :cond_4

    .line 73
    .line 74
    if-eqz v0, :cond_3

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_3
    move v2, v4

    .line 78
    :cond_4
    :goto_2
    return v2
.end method

.method public final componentMapsToRecognitionService(Landroid/content/ComponentName;)Z
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 6
    .line 7
    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    new-instance v3, Landroid/content/Intent;

    .line 16
    .line 17
    const-string v4, "android.speech.RecognitionService"

    .line 18
    .line 19
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    invoke-virtual {v2, v3, v4, p0}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 30
    .line 31
    .line 32
    if-nez p0, :cond_0

    .line 33
    .line 34
    return v4

    .line 35
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 50
    .line 51
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 52
    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_1

    .line 64
    .line 65
    const/4 p0, 0x1

    .line 66
    return p0

    .line 67
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string/jumbo v0, "serviceComponent is not RecognitionService: "

    .line 70
    .line 71
    .line 72
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    const-string p1, "SpeechRecognitionManagerServiceImpl"

    .line 83
    .line 84
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    return v4

    .line 88
    :catchall_0
    move-exception p0

    .line 89
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 90
    .line 91
    .line 92
    throw p0
.end method

.method public final createSessionLocked(Landroid/content/ComponentName;Landroid/os/IBinder;ZLandroid/speech/IRecognitionServiceManagerCallback;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 2
    .line 3
    check-cast v0, Lcom/android/server/speech/SpeechRecognitionManagerService;

    .line 4
    .line 5
    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "SpeechRecognitionManagerServiceImpl"

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v2, "#createSessionLocked, component="

    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, ", onDevice="

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    :cond_0
    if-eqz p3, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->getOnDeviceComponentNameLocked()Landroid/content/ComponentName;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    :cond_1
    const/4 v0, 0x5

    .line 43
    if-nez p3, :cond_2

    .line 44
    .line 45
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 46
    .line 47
    .line 48
    move-result p3

    .line 49
    invoke-static {p3}, Landroid/os/Process;->isIsolated(I)Z

    .line 50
    .line 51
    .line 52
    move-result p3

    .line 53
    if-eqz p3, :cond_2

    .line 54
    .line 55
    const-string p0, "SpeechRecognitionManagerServiceImpl"

    .line 56
    .line 57
    const-string p1, "Isolated process can only start on device speech recognizer."

    .line 58
    .line 59
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    invoke-static {p4, v0}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->tryRespondWithError(Landroid/speech/IRecognitionServiceManagerCallback;I)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_2
    if-nez p1, :cond_4

    .line 67
    .line 68
    iget-object p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 69
    .line 70
    check-cast p0, Lcom/android/server/speech/SpeechRecognitionManagerService;

    .line 71
    .line 72
    iget-boolean p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 73
    .line 74
    if-eqz p0, :cond_3

    .line 75
    .line 76
    const-string p0, "SpeechRecognitionManagerServiceImpl"

    .line 77
    .line 78
    const-string p1, "Service component is undefined, responding with error."

    .line 79
    .line 80
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    :cond_3
    invoke-static {p4, v0}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->tryRespondWithError(Landroid/speech/IRecognitionServiceManagerCallback;I)V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    const-string p3, "Creating a new connection to "

    .line 92
    .line 93
    const-string v0, "Reused existing connection to "

    .line 94
    .line 95
    const-string v1, "Number of sessions exceeded for uid: "

    .line 96
    .line 97
    const-string v2, "Number of remote services exceeded for uid: "

    .line 98
    .line 99
    iget-object v7, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->mLock:Ljava/lang/Object;

    .line 100
    .line 101
    monitor-enter v7

    .line 102
    :try_start_0
    iget-object v3, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->mRemoteServicesByUid:Ljava/util/Map;

    .line 103
    .line 104
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    check-cast v3, Ljava/util/HashMap;

    .line 109
    .line 110
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    check-cast v3, Ljava/util/Set;

    .line 115
    .line 116
    const/4 v8, 0x0

    .line 117
    const/16 v9, 0xa

    .line 118
    .line 119
    const/4 v4, 0x0

    .line 120
    if-eqz v3, :cond_5

    .line 121
    .line 122
    invoke-interface {v3}, Ljava/util/Set;->size()I

    .line 123
    .line 124
    .line 125
    move-result v5

    .line 126
    if-lt v5, v9, :cond_5

    .line 127
    .line 128
    const-string p1, "SpeechRecognitionManagerServiceImpl"

    .line 129
    .line 130
    new-instance p3, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p3

    .line 142
    invoke-static {p1, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    const-string/jumbo p1, "speech_recognition.value_exceed_service_connections_count"

    .line 146
    .line 147
    .line 148
    invoke-static {p1, v6}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 149
    .line 150
    .line 151
    monitor-exit v7

    .line 152
    goto/16 :goto_0

    .line 153
    .line 154
    :catchall_0
    move-exception p0

    .line 155
    goto/16 :goto_1

    .line 156
    .line 157
    :cond_5
    iget-object v2, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->mSessionCountByUid:Landroid/util/SparseIntArray;

    .line 158
    .line 159
    invoke-virtual {v2, v6, v8}, Landroid/util/SparseIntArray;->get(II)I

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    if-ne v2, v9, :cond_6

    .line 164
    .line 165
    const-string v2, "SpeechRecognitionManagerServiceImpl"

    .line 166
    .line 167
    new-instance v5, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    .line 181
    .line 182
    const-string/jumbo v1, "speech_recognition.value_exceed_session_count"

    .line 183
    .line 184
    .line 185
    invoke-static {v1, v6}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 186
    .line 187
    .line 188
    :cond_6
    if-eqz v3, :cond_8

    .line 189
    .line 190
    invoke-interface {v3}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    new-instance v2, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda2;

    .line 195
    .line 196
    invoke-direct {v2, p1}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda2;-><init>(Landroid/content/ComponentName;)V

    .line 197
    .line 198
    .line 199
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    .line 208
    .line 209
    .line 210
    move-result v2

    .line 211
    if-eqz v2, :cond_8

    .line 212
    .line 213
    iget-object p3, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 214
    .line 215
    check-cast p3, Lcom/android/server/speech/SpeechRecognitionManagerService;

    .line 216
    .line 217
    iget-boolean p3, p3, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 218
    .line 219
    if-eqz p3, :cond_7

    .line 220
    .line 221
    const-string p3, "SpeechRecognitionManagerServiceImpl"

    .line 222
    .line 223
    new-instance v2, Ljava/lang/StringBuilder;

    .line 224
    .line 225
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    invoke-static {p3, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    .line 237
    .line 238
    :cond_7
    invoke-virtual {p0, v6}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->incrementSessionCountForUidLocked(I)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    check-cast p1, Lcom/android/server/speech/RemoteSpeechRecognitionService;

    .line 246
    .line 247
    monitor-exit v7

    .line 248
    move-object v4, p1

    .line 249
    goto :goto_0

    .line 250
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->componentMapsToRecognitionService(Landroid/content/ComponentName;)Z

    .line 251
    .line 252
    .line 253
    move-result v0

    .line 254
    if-nez v0, :cond_9

    .line 255
    .line 256
    monitor-exit v7

    .line 257
    goto :goto_0

    .line 258
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->checkPrivilege(Landroid/content/ComponentName;)Z

    .line 259
    .line 260
    .line 261
    move-result v5

    .line 262
    new-instance v10, Lcom/android/server/speech/RemoteSpeechRecognitionService;

    .line 263
    .line 264
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 265
    .line 266
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 267
    .line 268
    .line 269
    move-result-object v4

    .line 270
    iget v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 271
    .line 272
    move-object v0, v10

    .line 273
    move v2, v6

    .line 274
    move-object v3, p1

    .line 275
    invoke-direct/range {v0 .. v5}, Lcom/android/server/speech/RemoteSpeechRecognitionService;-><init>(IILandroid/content/ComponentName;Landroid/content/Context;Z)V

    .line 276
    .line 277
    .line 278
    iget-object v0, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->mRemoteServicesByUid:Ljava/util/Map;

    .line 279
    .line 280
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    new-instance v2, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda3;

    .line 285
    .line 286
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 287
    .line 288
    .line 289
    check-cast v0, Ljava/util/HashMap;

    .line 290
    .line 291
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    check-cast v0, Ljava/util/Set;

    .line 296
    .line 297
    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 298
    .line 299
    .line 300
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 301
    .line 302
    check-cast v0, Lcom/android/server/speech/SpeechRecognitionManagerService;

    .line 303
    .line 304
    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 305
    .line 306
    if-eqz v0, :cond_a

    .line 307
    .line 308
    const-string v0, "SpeechRecognitionManagerServiceImpl"

    .line 309
    .line 310
    new-instance v1, Ljava/lang/StringBuilder;

    .line 311
    .line 312
    invoke-direct {v1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object p1

    .line 322
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    .line 324
    .line 325
    :cond_a
    invoke-virtual {p0, v6}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->incrementSessionCountForUidLocked(I)V

    .line 326
    .line 327
    .line 328
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    move-object v4, v10

    .line 330
    :goto_0
    if-nez v4, :cond_b

    .line 331
    .line 332
    invoke-static {p4, v9}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->tryRespondWithError(Landroid/speech/IRecognitionServiceManagerCallback;I)V

    .line 333
    .line 334
    .line 335
    return-void

    .line 336
    :cond_b
    new-instance v7, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda0;

    .line 337
    .line 338
    invoke-direct {v7, p0, p2, v6, v4}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;Landroid/os/IBinder;ILcom/android/server/speech/RemoteSpeechRecognitionService;)V

    .line 339
    .line 340
    .line 341
    :try_start_1
    invoke-interface {p2, v7, v8}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 342
    .line 343
    .line 344
    invoke-virtual {v4}, Lcom/android/internal/infra/ServiceConnector$Impl;->connect()Lcom/android/internal/infra/AndroidFuture;

    .line 345
    .line 346
    .line 347
    move-result-object p1

    .line 348
    new-instance p3, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda1;

    .line 349
    .line 350
    move-object v1, p3

    .line 351
    move-object v2, p0

    .line 352
    move-object v3, p4

    .line 353
    move-object v5, p2

    .line 354
    invoke-direct/range {v1 .. v7}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;Landroid/speech/IRecognitionServiceManagerCallback;Lcom/android/server/speech/RemoteSpeechRecognitionService;Landroid/os/IBinder;ILcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda0;)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {p1, p3}, Lcom/android/internal/infra/AndroidFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    .line 358
    .line 359
    .line 360
    return-void

    .line 361
    :catch_0
    const/4 p1, 0x1

    .line 362
    invoke-virtual {p0, p2, v6, v4, p1}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->handleClientDeath(Landroid/os/IBinder;ILcom/android/server/speech/RemoteSpeechRecognitionService;Z)V

    .line 363
    .line 364
    .line 365
    return-void

    .line 366
    :goto_1
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 367
    throw p0
.end method

.method public final getOnDeviceComponentNameLocked()Landroid/content/ComponentName;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getComponentNameLocked()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 6
    .line 7
    move-object v1, p0

    .line 8
    check-cast v1, Lcom/android/server/speech/SpeechRecognitionManagerService;

    .line 9
    .line 10
    iget-boolean v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 11
    .line 12
    const-string v2, "SpeechRecognitionManagerServiceImpl"

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    const-string v1, "Resolved component name: "

    .line 17
    .line 18
    invoke-static {v1, v0, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    if-nez v0, :cond_2

    .line 22
    .line 23
    check-cast p0, Lcom/android/server/speech/SpeechRecognitionManagerService;

    .line 24
    .line 25
    iget-boolean p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 26
    .line 27
    if-eqz p0, :cond_1

    .line 28
    .line 29
    const-string p0, "ensureRemoteServiceLocked(): no service component name."

    .line 30
    .line 31
    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    :cond_1
    const/4 p0, 0x0

    .line 35
    return-object p0

    .line 36
    :cond_2
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0
.end method

.method public final handleClientDeath(Landroid/os/IBinder;ILcom/android/server/speech/RemoteSpeechRecognitionService;Z)V
    .locals 1

    .line 1
    if-eqz p4, :cond_0

    .line 2
    .line 3
    invoke-virtual {p3, p1}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->shutdown(Landroid/os/IBinder;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    iget-object p1, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->mLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter p1

    .line 9
    :try_start_0
    iget-object p4, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->mSessionCountByUid:Landroid/util/SparseIntArray;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-virtual {p4, p2, v0}, Landroid/util/SparseIntArray;->get(II)I

    .line 13
    .line 14
    .line 15
    move-result p4

    .line 16
    sub-int/2addr p4, v0

    .line 17
    if-lez p4, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->mSessionCountByUid:Landroid/util/SparseIntArray;

    .line 20
    .line 21
    invoke-virtual {v0, p2, p4}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-object p4, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->mSessionCountByUid:Landroid/util/SparseIntArray;

    .line 26
    .line 27
    invoke-virtual {p4, p2}, Landroid/util/SparseIntArray;->delete(I)V

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-virtual {p3}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->hasActiveSessions()Z

    .line 31
    .line 32
    .line 33
    move-result p4

    .line 34
    if-nez p4, :cond_3

    .line 35
    .line 36
    iget-object p4, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->mLock:Ljava/lang/Object;

    .line 37
    .line 38
    monitor-enter p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 39
    :try_start_1
    iget-object p0, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->mRemoteServicesByUid:Ljava/util/Map;

    .line 40
    .line 41
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    check-cast p0, Ljava/util/HashMap;

    .line 46
    .line 47
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    check-cast p0, Ljava/util/Set;

    .line 52
    .line 53
    if-eqz p0, :cond_2

    .line 54
    .line 55
    invoke-interface {p0, p3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    goto :goto_2

    .line 61
    :cond_2
    :goto_1
    monitor-exit p4

    .line 62
    goto :goto_3

    .line 63
    :goto_2
    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    :try_start_2
    throw p0

    .line 65
    :cond_3
    :goto_3
    monitor-exit p1

    .line 66
    return-void

    .line 67
    :catchall_1
    move-exception p0

    .line 68
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 69
    throw p0
.end method

.method public final incrementSessionCountForUidLocked(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->mSessionCountByUid:Landroid/util/SparseIntArray;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    add-int/lit8 v2, v2, 0x1

    .line 9
    .line 10
    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 11
    .line 12
    .line 13
    const-string v0, "Client "

    .line 14
    .line 15
    const-string v2, " has opened "

    .line 16
    .line 17
    invoke-static {p1, v0, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object p0, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->mSessionCountByUid:Landroid/util/SparseIntArray;

    .line 22
    .line 23
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string p0, " sessions"

    .line 31
    .line 32
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    const-string p1, "SpeechRecognitionManagerServiceImpl"

    .line 40
    .line 41
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final newServiceInfoLocked(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 6
    .line 7
    const-wide/16 v1, 0x80

    .line 8
    .line 9
    invoke-interface {v0, p1, v1, v2, p0}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    .line 10
    .line 11
    .line 12
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return-object p0

    .line 14
    :catch_0
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    .line 15
    .line 16
    const-string v0, "Could not get service for "

    .line 17
    .line 18
    invoke-static {p1, v0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$$ExternalSyntheticOutline0;->m(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p0
.end method
