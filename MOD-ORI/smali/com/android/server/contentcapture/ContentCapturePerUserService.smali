.class public final Lcom/android/server/contentcapture/ContentCapturePerUserService;
.super Lcom/android/server/infra/AbstractPerUserSystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/infra/AbstractRemoteService$VultureCallback;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mConditionsByPkg:Landroid/util/ArrayMap;

.field public mInfo:Landroid/service/contentcapture/ContentCaptureServiceInfo;

.field public mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

.field public final mRemoteServiceCallback:Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;

.field public final mSessions:Landroid/util/SparseArray;

.field public mZombie:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Lcom/android/server/contentcapture/ContentCaptureManagerService;Ljava/lang/Object;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/infra/AbstractPerUserSystemService;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/Object;I)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    .line 10
    .line 11
    new-instance p1, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;

    .line 12
    .line 13
    invoke-direct {p1, p0}, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;-><init>(Lcom/android/server/contentcapture/ContentCapturePerUserService;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteServiceCallback:Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;

    .line 17
    .line 18
    new-instance p1, Landroid/util/ArrayMap;

    .line 19
    .line 20
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mConditionsByPkg:Landroid/util/ArrayMap;

    .line 24
    .line 25
    invoke-virtual {p0, p3}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->updateRemoteServiceLocked(Z)V

    .line 26
    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final assertCallerLocked(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    .line 20
    .line 21
    .line 22
    move-result v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    if-eq v0, v1, :cond_2

    .line 24
    .line 25
    const-class v2, Landroid/app/ActivityManagerInternal;

    .line 26
    .line 27
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Landroid/app/ActivityManagerInternal;

    .line 32
    .line 33
    invoke-virtual {v2, v0, p1}, Landroid/app/ActivityManagerInternal;->hasRunningActivity(ILjava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-nez v2, :cond_2

    .line 38
    .line 39
    const-class v2, Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 40
    .line 41
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 46
    .line 47
    invoke-virtual {v2}, Landroid/service/voice/VoiceInteractionManagerInternal;->getHotwordDetectionServiceIdentity()Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    if-eqz v2, :cond_0

    .line 52
    .line 53
    invoke-virtual {v2}, Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;->getIsolatedUid()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-ne v0, v3, :cond_0

    .line 58
    .line 59
    invoke-virtual {v2}, Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;->getOwnerUid()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-ne v1, v2, :cond_0

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    if-eqz p0, :cond_1

    .line 71
    .line 72
    const/4 v2, 0x0

    .line 73
    aget-object p0, p0, v2

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    const-string/jumbo p0, "uid-"

    .line 77
    .line 78
    .line 79
    invoke-static {v0, p0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    :goto_0
    const-string v2, "App (package="

    .line 84
    .line 85
    const-string v3, ", UID="

    .line 86
    .line 87
    const-string v4, ") passed package ("

    .line 88
    .line 89
    invoke-static {v0, v2, p0, v3, v4}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v0, ") owned by UID "

    .line 97
    .line 98
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    const-string v0, "ContentCapturePerUserService"

    .line 109
    .line 110
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    new-instance p0, Ljava/lang/SecurityException;

    .line 114
    .line 115
    const-string v0, "Invalid package: "

    .line 116
    .line 117
    invoke-static {v0, p1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw p0

    .line 125
    :cond_2
    :goto_1
    return-void

    .line 126
    :catch_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 127
    .line 128
    const-string v0, "Could not verify UID for "

    .line 129
    .line 130
    invoke-static {v0, p1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw p0
.end method

.method public final destroySessionsLocked()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_0

    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lcom/android/server/contentcapture/ContentCaptureServerSession;

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/android/server/contentcapture/ContentCaptureServerSession;->destroyLocked()V

    .line 19
    .line 20
    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final dumpLocked(Ljava/io/PrintWriter;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/infra/AbstractPerUserSystemService;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "    "

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string v1, "Service Info: "

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mInfo:Landroid/service/contentcapture/ContentCaptureServiceInfo;

    .line 15
    .line 16
    const-string v2, "      "

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    const-string v1, "N/A"

    .line 21
    .line 22
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mInfo:Landroid/service/contentcapture/ContentCaptureServiceInfo;

    .line 30
    .line 31
    invoke-virtual {v1, v2, p1}, Landroid/service/contentcapture/ContentCaptureServiceInfo;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string v1, "Zombie: "

    .line 38
    .line 39
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-boolean v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mZombie:Z

    .line 43
    .line 44
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    .line 48
    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-string/jumbo v1, "remote service:"

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    .line 61
    .line 62
    invoke-virtual {v1, v2, p1}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 63
    .line 64
    .line 65
    :cond_1
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    .line 66
    .line 67
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-nez v1, :cond_2

    .line 72
    .line 73
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    const-string/jumbo p0, "no sessions"

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    goto/16 :goto_2

    .line 83
    .line 84
    :cond_2
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    .line 85
    .line 86
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    const-string/jumbo v3, "number sessions: "

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 100
    .line 101
    .line 102
    const/4 v3, 0x0

    .line 103
    :goto_1
    if-ge v3, v1, :cond_3

    .line 104
    .line 105
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    const-string v4, "#"

    .line 109
    .line 110
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 114
    .line 115
    .line 116
    iget-object v4, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    .line 117
    .line 118
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    check-cast v4, Lcom/android/server/contentcapture/ContentCaptureServerSession;

    .line 123
    .line 124
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    const-string/jumbo v5, "id: "

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    iget v5, v4, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mId:I

    .line 137
    .line 138
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    const-string/jumbo v5, "uid: "

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    iget v5, v4, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mUid:I

    .line 154
    .line 155
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    const-string/jumbo v5, "context: "

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    iget-object v5, v4, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mContentCaptureContext:Landroid/view/contentcapture/ContentCaptureContext;

    .line 171
    .line 172
    invoke-virtual {v5, p1}, Landroid/view/contentcapture/ContentCaptureContext;->dump(Ljava/io/PrintWriter;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    const-string v5, "activity token: "

    .line 182
    .line 183
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    iget-object v5, v4, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mActivityToken:Landroid/os/IBinder;

    .line 187
    .line 188
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    const-string v5, "app component: "

    .line 195
    .line 196
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    iget-object v4, v4, Lcom/android/server/contentcapture/ContentCaptureServerSession;->appComponentName:Landroid/content/ComponentName;

    .line 200
    .line 201
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    const-string/jumbo v4, "has autofill callback: "

    .line 208
    .line 209
    .line 210
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 214
    .line 215
    .line 216
    add-int/lit8 v3, v3, 0x1

    .line 217
    .line 218
    goto :goto_1

    .line 219
    :cond_3
    :goto_2
    return-void
.end method

.method public final finishSessionLocked(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isEnabledLocked()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/android/server/contentcapture/ContentCaptureServerSession;

    .line 15
    .line 16
    const-string v1, "ContentCapturePerUserService"

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 19
    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    check-cast p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 23
    .line 24
    iget-boolean p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 25
    .line 26
    if-eqz p0, :cond_1

    .line 27
    .line 28
    const-string/jumbo p0, "finishSession(): no session with id"

    .line 29
    .line 30
    .line 31
    invoke-static {p1, p0, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void

    .line 35
    :cond_2
    check-cast p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 36
    .line 37
    iget-boolean p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 38
    .line 39
    if-eqz p0, :cond_3

    .line 40
    .line 41
    const-string/jumbo p0, "finishSession(): id="

    .line 42
    .line 43
    .line 44
    invoke-static {p1, p0, v1}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_3
    iget p0, v0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mId:I

    .line 48
    .line 49
    iget-object p1, v0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mService:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 50
    .line 51
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/contentcapture/ContentCaptureServerSession;->destroyLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    .line 54
    iget-object p1, p1, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    .line 55
    .line 56
    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :catchall_0
    move-exception v0

    .line 61
    iget-object p1, p1, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    .line 62
    .line 63
    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 64
    .line 65
    .line 66
    throw v0
.end method

.method public final listSessionsLocked(Ljava/util/ArrayList;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_0

    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lcom/android/server/contentcapture/ContentCaptureServerSession;

    .line 17
    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    iget v4, v2, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mId:I

    .line 24
    .line 25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v4, ":"

    .line 29
    .line 30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-object v2, v2, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mActivityToken:Landroid/os/IBinder;

    .line 34
    .line 35
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    add-int/lit8 v1, v1, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    return-void
.end method

.method public final newServiceInfoLocked(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .locals 4

    .line 1
    new-instance v0, Landroid/service/contentcapture/ContentCaptureServiceInfo;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget-object v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameBaseResolver;

    .line 10
    .line 11
    iget v3, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 12
    .line 13
    invoke-virtual {v1, v3}, Lcom/android/server/infra/ServiceNameBaseResolver;->isTemporary(I)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-direct {v0, v2, p1, v1, v3}, Landroid/service/contentcapture/ContentCaptureServiceInfo;-><init>(Landroid/content/Context;Landroid/content/ComponentName;ZI)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mInfo:Landroid/service/contentcapture/ContentCaptureServiceInfo;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/service/contentcapture/ContentCaptureServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public final onActivityEventLocked(Landroid/app/assist/ActivityId;Landroid/content/ComponentName;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mTag:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    check-cast v2, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 10
    .line 11
    iget-boolean p0, v2, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    const-string/jumbo p0, "onActivityEvent(): no remote service"

    .line 16
    .line 17
    .line 18
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void

    .line 22
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->getServiceInterface()Landroid/os/IInterface;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-nez v0, :cond_3

    .line 27
    .line 28
    check-cast v2, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 29
    .line 30
    iget-boolean p0, v2, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 31
    .line 32
    if-eqz p0, :cond_2

    .line 33
    .line 34
    const-string/jumbo p0, "onActivityEvent(): remote service is dead or unbound"

    .line 35
    .line 36
    .line 37
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    :cond_2
    return-void

    .line 41
    :cond_3
    new-instance v0, Landroid/service/contentcapture/ActivityEvent;

    .line 42
    .line 43
    invoke-direct {v0, p1, p2, p3}, Landroid/service/contentcapture/ActivityEvent;-><init>(Landroid/app/assist/ActivityId;Landroid/content/ComponentName;I)V

    .line 44
    .line 45
    .line 46
    check-cast v2, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 47
    .line 48
    iget-boolean p1, v2, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 49
    .line 50
    if-eqz p1, :cond_4

    .line 51
    .line 52
    new-instance p1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string/jumbo p2, "onActivityEvent(): "

    .line 55
    .line 56
    .line 57
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    :cond_4
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    .line 71
    .line 72
    invoke-virtual {p0, v0}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->onActivityLifecycleEvent(Landroid/service/contentcapture/ActivityEvent;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public final onConnected()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mZombie:Z

    .line 5
    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const-string p0, "ContentCapturePerUserService"

    .line 13
    .line 14
    const-string v1, "Cannot ressurect sessions because remote service is null"

    .line 15
    .line 16
    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    monitor-exit v0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 24
    iput-boolean v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mZombie:Z

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->resurrectSessionsLocked$1()V

    .line 27
    .line 28
    .line 29
    :cond_1
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p0
.end method

.method public final onServiceDied(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/android/server/contentcapture/RemoteContentCaptureService;

    .line 2
    .line 3
    const-string v0, "ContentCapturePerUserService"

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v2, "remote service died: "

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 24
    .line 25
    monitor-enter p1

    .line 26
    const/4 v0, 0x1

    .line 27
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mZombie:Z

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceComponentName()Landroid/content/ComponentName;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const/16 v1, 0x10

    .line 34
    .line 35
    invoke-static {v1, v0}, Lcom/android/server/contentcapture/ContentCaptureMetricsLogger;->writeServiceEvent(ILandroid/content/ComponentName;)V

    .line 36
    .line 37
    .line 38
    iget p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 39
    .line 40
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    const/4 v0, 0x0

    .line 45
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    filled-new-array {p0, v1, v0}, [Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    const v0, 0xcfd0

    .line 58
    .line 59
    .line 60
    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 61
    .line 62
    .line 63
    monitor-exit p1

    .line 64
    return-void

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    throw p0
.end method

.method public final resurrectSessionsLocked$1()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 8
    .line 9
    check-cast v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 10
    .line 11
    iget-boolean v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v2, "Ressurrecting remote service ("

    .line 18
    .line 19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, ") on "

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v2, " sessions"

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const-string v2, "ContentCapturePerUserService"

    .line 45
    .line 46
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    :cond_0
    const/4 v1, 0x0

    .line 50
    :goto_0
    if-ge v1, v0, :cond_3

    .line 51
    .line 52
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    .line 53
    .line 54
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Lcom/android/server/contentcapture/ContentCaptureServerSession;

    .line 59
    .line 60
    iget-object v3, v2, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mService:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 61
    .line 62
    iget-object v4, v3, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    .line 63
    .line 64
    const-string v5, "ContentCaptureServerSession"

    .line 65
    .line 66
    if-nez v4, :cond_1

    .line 67
    .line 68
    const-string/jumbo v2, "destroyLocked(: no remote service"

    .line 69
    .line 70
    .line 71
    invoke-static {v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    iget-object v3, v3, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 76
    .line 77
    iget-boolean v3, v3, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 78
    .line 79
    if-eqz v3, :cond_2

    .line 80
    .line 81
    new-instance v3, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    const-string/jumbo v6, "resurrecting "

    .line 84
    .line 85
    .line 86
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget-object v6, v2, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mActivityToken:Landroid/os/IBinder;

    .line 90
    .line 91
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v6, " on "

    .line 95
    .line 96
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-static {v5, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    :cond_2
    new-instance v5, Landroid/view/contentcapture/ContentCaptureContext;

    .line 110
    .line 111
    iget-object v3, v2, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mContentCaptureContext:Landroid/view/contentcapture/ContentCaptureContext;

    .line 112
    .line 113
    const/4 v6, 0x4

    .line 114
    invoke-direct {v5, v3, v6}, Landroid/view/contentcapture/ContentCaptureContext;-><init>(Landroid/view/contentcapture/ContentCaptureContext;I)V

    .line 115
    .line 116
    .line 117
    iget-object v8, v2, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mSessionStateReceiver:Lcom/android/internal/os/IResultReceiver;

    .line 118
    .line 119
    iget v6, v2, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mId:I

    .line 120
    .line 121
    iget v7, v2, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mUid:I

    .line 122
    .line 123
    const/16 v9, 0x1002

    .line 124
    .line 125
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->onSessionStarted(Landroid/view/contentcapture/ContentCaptureContext;IILcom/android/internal/os/IResultReceiver;I)V

    .line 126
    .line 127
    .line 128
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_3
    return-void
.end method

.method public final sendActivityAssistDataLocked(Landroid/os/IBinder;Landroid/os/Bundle;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    .line 4
    .line 5
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-ge v1, v2, :cond_1

    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/android/server/contentcapture/ContentCaptureServerSession;

    .line 18
    .line 19
    iget-object v2, v2, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mActivityToken:Landroid/os/IBinder;

    .line 20
    .line 21
    invoke-interface {v2, p1}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    .line 28
    .line 29
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    move v1, v0

    .line 38
    :goto_1
    const-string/jumbo v2, "data"

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    const-string/jumbo v3, "structure"

    .line 46
    .line 47
    .line 48
    const-class v4, Landroid/app/assist/AssistStructure;

    .line 49
    .line 50
    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    check-cast v3, Landroid/app/assist/AssistStructure;

    .line 55
    .line 56
    const-string/jumbo v4, "content"

    .line 57
    .line 58
    .line 59
    const-class v5, Landroid/app/assist/AssistContent;

    .line 60
    .line 61
    invoke-virtual {p2, v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    check-cast p2, Landroid/app/assist/AssistContent;

    .line 66
    .line 67
    new-instance v4, Landroid/service/contentcapture/SnapshotData;

    .line 68
    .line 69
    invoke-direct {v4, v2, v3, p2}, Landroid/service/contentcapture/SnapshotData;-><init>(Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;)V

    .line 70
    .line 71
    .line 72
    const/4 p2, 0x1

    .line 73
    if-eqz v1, :cond_4

    .line 74
    .line 75
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    .line 76
    .line 77
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    check-cast p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;

    .line 82
    .line 83
    iget-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mService:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 84
    .line 85
    iget-object v0, p1, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 86
    .line 87
    check-cast v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 88
    .line 89
    iget-object v0, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mRequestsHistory:Landroid/util/LocalLog;

    .line 90
    .line 91
    iget p0, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mId:I

    .line 92
    .line 93
    if-eqz v0, :cond_2

    .line 94
    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    const-string/jumbo v2, "snapshot: id="

    .line 98
    .line 99
    .line 100
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    :cond_2
    iget-object p1, p1, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    .line 114
    .line 115
    if-nez p1, :cond_3

    .line 116
    .line 117
    const-string p0, "ContentCaptureServerSession"

    .line 118
    .line 119
    const-string/jumbo p1, "sendActivitySnapshotLocked(): no remote service"

    .line 120
    .line 121
    .line 122
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_3
    invoke-virtual {p1, p0, v4}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->onActivitySnapshotRequest(ILandroid/service/contentcapture/SnapshotData;)V

    .line 127
    .line 128
    .line 129
    :goto_2
    return p2

    .line 130
    :cond_4
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    .line 131
    .line 132
    if-eqz p0, :cond_5

    .line 133
    .line 134
    invoke-virtual {p0, v0, v4}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->onActivitySnapshotRequest(ILandroid/service/contentcapture/SnapshotData;)V

    .line 135
    .line 136
    .line 137
    new-instance p0, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    const-string v0, "Notified activity assist data for activity: "

    .line 140
    .line 141
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string p1, " without a session Id"

    .line 148
    .line 149
    const-string v0, "ContentCapturePerUserService"

    .line 150
    .line 151
    invoke-static {p0, p1, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    return p2

    .line 155
    :cond_5
    return v0
.end method

.method public final startSessionLocked(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/pm/ActivityPresentationInfo;IIILcom/android/internal/os/IResultReceiver;)V
    .locals 17

    .line 1
    move-object/from16 v11, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v0, p3

    .line 6
    .line 7
    move/from16 v12, p4

    .line 8
    .line 9
    move-object/from16 v13, p7

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    const-string v14, "ContentCapturePerUserService"

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const-string v0, "basic activity info is null"

    .line 17
    .line 18
    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    const/16 v0, 0x104

    .line 22
    .line 23
    invoke-static {v13, v0, v1}, Landroid/service/contentcapture/ContentCaptureService;->setClientState(Lcom/android/internal/os/IResultReceiver;ILandroid/os/IBinder;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    iget v3, v0, Landroid/content/pm/ActivityPresentationInfo;->taskId:I

    .line 28
    .line 29
    iget v7, v0, Landroid/content/pm/ActivityPresentationInfo;->displayId:I

    .line 30
    .line 31
    iget-object v15, v0, Landroid/content/pm/ActivityPresentationInfo;->componentName:Landroid/content/ComponentName;

    .line 32
    .line 33
    iget-object v0, v11, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 34
    .line 35
    move-object v10, v0

    .line 36
    check-cast v10, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 37
    .line 38
    iget-object v0, v10, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mGlobalContentCaptureOptions:Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;

    .line 39
    .line 40
    iget v4, v11, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 41
    .line 42
    invoke-virtual {v0, v4, v15}, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->isWhitelisted(ILandroid/content/ComponentName;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_2

    .line 47
    .line 48
    iget-object v0, v10, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mGlobalContentCaptureOptions:Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;

    .line 49
    .line 50
    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    invoke-virtual {v0, v4, v6}, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->isWhitelisted(ILjava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    const/4 v0, 0x0

    .line 62
    goto :goto_1

    .line 63
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 64
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceComponentName()Landroid/content/ComponentName;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isEnabledLocked()Z

    .line 69
    .line 70
    .line 71
    move-result v8

    .line 72
    iget-object v9, v10, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mRequestsHistory:Landroid/util/LocalLog;

    .line 73
    .line 74
    if-eqz v9, :cond_4

    .line 75
    .line 76
    const-string/jumbo v9, "id="

    .line 77
    .line 78
    .line 79
    const-string v5, " uid="

    .line 80
    .line 81
    const-string v1, " a="

    .line 82
    .line 83
    move/from16 v11, p5

    .line 84
    .line 85
    invoke-static {v12, v11, v9, v5, v1}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-static {v15}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v5, " t="

    .line 97
    .line 98
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v5, " d="

    .line 105
    .line 106
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v5, " s="

    .line 113
    .line 114
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-static {v6}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v5, " u="

    .line 125
    .line 126
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v4, " f="

    .line 133
    .line 134
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    move/from16 v9, p6

    .line 138
    .line 139
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    if-eqz v8, :cond_3

    .line 143
    .line 144
    const-string v4, ""

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_3
    const-string v4, " (disabled)"

    .line 148
    .line 149
    :goto_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string v4, " w="

    .line 153
    .line 154
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    iget-object v4, v10, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mRequestsHistory:Landroid/util/LocalLog;

    .line 165
    .line 166
    invoke-virtual {v4, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    goto :goto_3

    .line 170
    :cond_4
    move/from16 v11, p5

    .line 171
    .line 172
    move/from16 v9, p6

    .line 173
    .line 174
    :goto_3
    const/4 v1, 0x3

    .line 175
    const/16 v4, 0x14

    .line 176
    .line 177
    if-nez v8, :cond_5

    .line 178
    .line 179
    const/4 v5, 0x0

    .line 180
    invoke-static {v13, v4, v5}, Landroid/service/contentcapture/ContentCaptureService;->setClientState(Lcom/android/internal/os/IResultReceiver;ILandroid/os/IBinder;)V

    .line 181
    .line 182
    .line 183
    invoke-static {v12, v1, v4, v6}, Lcom/android/server/contentcapture/ContentCaptureMetricsLogger;->writeSessionEvent(IIILandroid/content/ComponentName;)V

    .line 184
    .line 185
    .line 186
    return-void

    .line 187
    :cond_5
    const-string/jumbo v5, "startSession("

    .line 188
    .line 189
    .line 190
    if-nez v6, :cond_7

    .line 191
    .line 192
    iget-boolean v0, v10, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 193
    .line 194
    if-eqz v0, :cond_6

    .line 195
    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    const-string v1, "): hold your horses"

    .line 205
    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .line 215
    .line 216
    :cond_6
    return-void

    .line 217
    :cond_7
    if-nez v0, :cond_9

    .line 218
    .line 219
    iget-boolean v0, v10, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 220
    .line 221
    if-eqz v0, :cond_8

    .line 222
    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    .line 224
    .line 225
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    const-string v2, "): package or component not whitelisted"

    .line 232
    .line 233
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    .line 242
    .line 243
    :cond_8
    const/16 v0, 0x204

    .line 244
    .line 245
    const/4 v2, 0x0

    .line 246
    invoke-static {v13, v0, v2}, Landroid/service/contentcapture/ContentCaptureService;->setClientState(Lcom/android/internal/os/IResultReceiver;ILandroid/os/IBinder;)V

    .line 247
    .line 248
    .line 249
    invoke-static {v12, v1, v0, v6}, Lcom/android/server/contentcapture/ContentCaptureMetricsLogger;->writeSessionEvent(IIILandroid/content/ComponentName;)V

    .line 250
    .line 251
    .line 252
    return-void

    .line 253
    :cond_9
    move-object/from16 v11, p0

    .line 254
    .line 255
    iget-object v0, v11, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    .line 256
    .line 257
    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    check-cast v0, Lcom/android/server/contentcapture/ContentCaptureServerSession;

    .line 262
    .line 263
    const-string v5, ", token="

    .line 264
    .line 265
    const-string/jumbo v8, "startSession(id="

    .line 266
    .line 267
    .line 268
    if-eqz v0, :cond_a

    .line 269
    .line 270
    new-instance v3, Ljava/lang/StringBuilder;

    .line 271
    .line 272
    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    const-string v2, ": ignoring because it already exists for "

    .line 285
    .line 286
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    iget-object v0, v0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mActivityToken:Landroid/os/IBinder;

    .line 290
    .line 291
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    .line 300
    .line 301
    const/16 v0, 0xc

    .line 302
    .line 303
    const/4 v2, 0x0

    .line 304
    invoke-static {v13, v0, v2}, Landroid/service/contentcapture/ContentCaptureService;->setClientState(Lcom/android/internal/os/IResultReceiver;ILandroid/os/IBinder;)V

    .line 305
    .line 306
    .line 307
    invoke-static {v12, v1, v0, v6}, Lcom/android/server/contentcapture/ContentCaptureMetricsLogger;->writeSessionEvent(IIILandroid/content/ComponentName;)V

    .line 308
    .line 309
    .line 310
    return-void

    .line 311
    :cond_a
    iget-object v1, v11, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    .line 312
    .line 313
    if-nez v1, :cond_b

    .line 314
    .line 315
    const/4 v1, 0x0

    .line 316
    invoke-virtual {v11, v1}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->updateRemoteServiceLocked(Z)V

    .line 317
    .line 318
    .line 319
    :cond_b
    iget-object v1, v11, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    .line 320
    .line 321
    if-nez v1, :cond_c

    .line 322
    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    .line 324
    .line 325
    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    const-string v0, ": ignoring because service is not set"

    .line 338
    .line 339
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    .line 348
    .line 349
    const/4 v0, 0x0

    .line 350
    invoke-static {v13, v4, v0}, Landroid/service/contentcapture/ContentCaptureService;->setClientState(Lcom/android/internal/os/IResultReceiver;ILandroid/os/IBinder;)V

    .line 351
    .line 352
    .line 353
    const/4 v0, 0x3

    .line 354
    invoke-static {v12, v0, v4, v6}, Lcom/android/server/contentcapture/ContentCaptureMetricsLogger;->writeSessionEvent(IIILandroid/content/ComponentName;)V

    .line 355
    .line 356
    .line 357
    return-void

    .line 358
    :cond_c
    invoke-virtual {v1}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->ensureBoundLocked()V

    .line 359
    .line 360
    .line 361
    new-instance v8, Lcom/android/server/contentcapture/ContentCaptureServerSession;

    .line 362
    .line 363
    new-instance v4, Landroid/app/assist/ActivityId;

    .line 364
    .line 365
    move-object/from16 v0, p2

    .line 366
    .line 367
    invoke-direct {v4, v3, v0}, Landroid/app/assist/ActivityId;-><init>(ILandroid/os/IBinder;)V

    .line 368
    .line 369
    .line 370
    iget-object v1, v11, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 371
    .line 372
    move-object v0, v8

    .line 373
    move-object/from16 v2, p1

    .line 374
    .line 375
    move-object v3, v4

    .line 376
    move-object/from16 v4, p0

    .line 377
    .line 378
    move-object v5, v15

    .line 379
    move-object/from16 v6, p7

    .line 380
    .line 381
    move-object v13, v8

    .line 382
    move/from16 v8, p4

    .line 383
    .line 384
    move/from16 v9, p5

    .line 385
    .line 386
    move-object/from16 v16, v13

    .line 387
    .line 388
    move-object v13, v10

    .line 389
    move/from16 v10, p6

    .line 390
    .line 391
    invoke-direct/range {v0 .. v10}, Lcom/android/server/contentcapture/ContentCaptureServerSession;-><init>(Ljava/lang/Object;Landroid/os/IBinder;Landroid/app/assist/ActivityId;Lcom/android/server/contentcapture/ContentCapturePerUserService;Landroid/content/ComponentName;Lcom/android/internal/os/IResultReceiver;IIII)V

    .line 392
    .line 393
    .line 394
    iget-boolean v0, v13, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 395
    .line 396
    if-eqz v0, :cond_d

    .line 397
    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    .line 399
    .line 400
    const-string/jumbo v1, "startSession(): new session for "

    .line 401
    .line 402
    .line 403
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    invoke-static {v15}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v1

    .line 410
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    const-string v1, " and id "

    .line 414
    .line 415
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v0

    .line 425
    invoke-static {v14, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    .line 427
    .line 428
    :cond_d
    iget-object v0, v11, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    .line 429
    .line 430
    move-object/from16 v1, v16

    .line 431
    .line 432
    invoke-virtual {v0, v12, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 433
    .line 434
    .line 435
    iget-object v0, v1, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mService:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 436
    .line 437
    iget-object v0, v0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    .line 438
    .line 439
    if-nez v0, :cond_e

    .line 440
    .line 441
    const-string v0, "ContentCaptureServerSession"

    .line 442
    .line 443
    const-string/jumbo v1, "notifySessionStartedLocked(): no remote service"

    .line 444
    .line 445
    .line 446
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    .line 448
    .line 449
    goto :goto_4

    .line 450
    :cond_e
    iget-object v2, v1, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mContentCaptureContext:Landroid/view/contentcapture/ContentCaptureContext;

    .line 451
    .line 452
    iget v3, v1, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mId:I

    .line 453
    .line 454
    iget v1, v1, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mUid:I

    .line 455
    .line 456
    const/4 v4, 0x2

    .line 457
    move-object/from16 p0, v0

    .line 458
    .line 459
    move-object/from16 p1, v2

    .line 460
    .line 461
    move/from16 p2, v3

    .line 462
    .line 463
    move/from16 p3, v1

    .line 464
    .line 465
    move-object/from16 p4, p7

    .line 466
    .line 467
    move/from16 p5, v4

    .line 468
    .line 469
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->onSessionStarted(Landroid/view/contentcapture/ContentCaptureContext;IILcom/android/internal/os/IResultReceiver;I)V

    .line 470
    .line 471
    .line 472
    :goto_4
    return-void
.end method

.method public final updateLocked(Z)Z
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateLocked(Z)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-ge v1, v2, :cond_0

    .line 15
    .line 16
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/android/server/contentcapture/ContentCaptureServerSession;

    .line 23
    .line 24
    xor-int/lit8 v3, p1, 0x1

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Lcom/android/server/contentcapture/ContentCaptureServerSession;->setContentCaptureEnabledLocked(Z)V

    .line 27
    .line 28
    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 33
    .line 34
    check-cast v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 35
    .line 36
    iget-boolean v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 37
    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    const-string v1, "ContentCapturePerUserService"

    .line 41
    .line 42
    const-string/jumbo v2, "destroyLocked()"

    .line 43
    .line 44
    .line 45
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    :cond_1
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    .line 49
    .line 50
    if-eqz v1, :cond_2

    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->destroy()V

    .line 53
    .line 54
    .line 55
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->destroySessionsLocked()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->updateRemoteServiceLocked(Z)V

    .line 59
    .line 60
    .line 61
    return v0
.end method

.method public final updateRemoteServiceLocked(Z)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 2
    .line 3
    check-cast v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 6
    .line 7
    const-string v2, "ContentCapturePerUserService"

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string/jumbo v3, "updateRemoteService(disabled="

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v3, ")"

    .line 23
    .line 24
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    .line 35
    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    iget-boolean v1, v0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 39
    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    const-string/jumbo v1, "updateRemoteService(): destroying old remote service"

    .line 43
    .line 44
    .line 45
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    :cond_1
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->destroy()V

    .line 51
    .line 52
    .line 53
    const/4 v1, 0x0

    .line 54
    iput-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    .line 55
    .line 56
    iget-boolean v1, v0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 57
    .line 58
    if-eqz v1, :cond_2

    .line 59
    .line 60
    const-string/jumbo v1, "resetting content capture whitelist"

    .line 61
    .line 62
    .line 63
    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    :cond_2
    iget-object v1, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mGlobalContentCaptureOptions:Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;

    .line 67
    .line 68
    iget v3, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 69
    .line 70
    invoke-virtual {v1, v3}, Lcom/android/internal/infra/GlobalWhitelistState;->resetWhitelist(I)V

    .line 71
    .line 72
    .line 73
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateServiceInfoLocked()Landroid/content/ComponentName;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    if-nez v6, :cond_5

    .line 78
    .line 79
    iget-boolean p0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 80
    .line 81
    if-eqz p0, :cond_4

    .line 82
    .line 83
    const-string/jumbo p0, "updateRemoteService(): no service component name"

    .line 84
    .line 85
    .line 86
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    :cond_4
    return-void

    .line 90
    :cond_5
    if-nez p1, :cond_7

    .line 91
    .line 92
    iget-boolean p1, v0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 93
    .line 94
    if-eqz p1, :cond_6

    .line 95
    .line 96
    new-instance p1, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string/jumbo v1, "updateRemoteService(): creating new remote service for "

    .line 99
    .line 100
    .line 101
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    :cond_6
    new-instance p1, Lcom/android/server/contentcapture/RemoteContentCaptureService;

    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    iget-object v7, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteServiceCallback:Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;

    .line 121
    .line 122
    invoke-virtual {v0}, Lcom/android/server/infra/AbstractMasterSystemService;->isBindInstantServiceAllowed()Z

    .line 123
    .line 124
    .line 125
    move-result v10

    .line 126
    iget-boolean v11, v0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 127
    .line 128
    iget v12, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgIdleUnbindTimeoutMs:I

    .line 129
    .line 130
    iget v8, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 131
    .line 132
    move-object v4, p1

    .line 133
    move-object v9, p0

    .line 134
    invoke-direct/range {v4 .. v12}, Lcom/android/server/contentcapture/RemoteContentCaptureService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/service/contentcapture/IContentCaptureServiceCallback;ILcom/android/server/contentcapture/ContentCapturePerUserService;ZZI)V

    .line 135
    .line 136
    .line 137
    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    .line 138
    .line 139
    :cond_7
    return-void
.end method
