.class public final Lcom/android/server/recoverysystem/RecoverySystemService;
.super Landroid/os/IRecoverySystem$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/widget/RebootEscrowListener;


# static fields
.field static final AB_UPDATE:Ljava/lang/String; = "ro.build.ab_update"

.field public static final FATAL_ARM_ESCROW_ERRORS:Landroid/util/FastImmutableArraySet;

.field static final INIT_SERVICE_CLEAR_BCB:Ljava/lang/String; = "init.svc.clear-bcb"

.field static final INIT_SERVICE_SETUP_BCB:Ljava/lang/String; = "init.svc.setup-bcb"

.field static final INIT_SERVICE_UNCRYPT:Ljava/lang/String; = "init.svc.uncrypt"

.field public static final sRequestLock:Ljava/lang/Object;


# instance fields
.field public final mCallerPendingRequest:Landroid/util/ArrayMap;

.field public final mCallerPreparedForReboot:Landroid/util/ArraySet;

.field public final mContext:Landroid/content/Context;

.field public final mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/recoverysystem/RecoverySystemService;->sRequestLock:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Landroid/util/FastImmutableArraySet;

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x3

    .line 16
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const/4 v3, 0x4

    .line 21
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const/4 v4, 0x5

    .line 26
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    const/4 v5, 0x6

    .line 31
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-direct {v0, v1}, Landroid/util/FastImmutableArraySet;-><init>([Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    sput-object v0, Lcom/android/server/recoverysystem/RecoverySystemService;->FATAL_ARM_ESCROW_ERRORS:Landroid/util/FastImmutableArraySet;

    .line 43
    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/android/server/recoverysystem/RecoverySystemService$Injector;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/IRecoverySystem$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPendingRequest:Landroid/util/ArrayMap;

    .line 10
    .line 11
    new-instance v0, Landroid/util/ArraySet;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPreparedForReboot:Landroid/util/ArraySet;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    return-void
.end method

.method public static getCompressedApexInfoList(Ljava/lang/String;)Landroid/apex/CompressedApexInfoList;
    .locals 10

    .line 1
    const-string v0, "RecoverySystemService"

    .line 2
    .line 3
    const-string v1, "Read "

    .line 4
    .line 5
    const-string v2, "Allocating "

    .line 6
    .line 7
    const-string v3, " which is larger than the permitted limit2457600"

    .line 8
    .line 9
    const-string v4, "apex_info.pb has size "

    .line 10
    .line 11
    new-instance v5, Ljava/util/zip/ZipFile;

    .line 12
    .line 13
    invoke-direct {v5, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    const-string p0, "apex_info.pb"

    .line 17
    .line 18
    invoke-virtual {v5, p0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    .line 19
    .line 20
    .line 21
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    if-nez p0, :cond_0

    .line 23
    .line 24
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    return-object p0

    .line 29
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getSize()J

    .line 30
    .line 31
    .line 32
    move-result-wide v6

    .line 33
    const-wide/32 v8, 0x258000

    .line 34
    .line 35
    .line 36
    cmp-long v6, v6, v8

    .line 37
    .line 38
    if-gez v6, :cond_4

    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getSize()J

    .line 41
    .line 42
    .line 43
    move-result-wide v3

    .line 44
    const-wide/16 v6, 0x0

    .line 45
    .line 46
    cmp-long v3, v3, v6

    .line 47
    .line 48
    if-nez v3, :cond_1

    .line 49
    .line 50
    new-instance p0, Landroid/apex/CompressedApexInfoList;

    .line 51
    .line 52
    invoke-direct {p0}, Landroid/apex/CompressedApexInfoList;-><init>()V

    .line 53
    .line 54
    .line 55
    const/4 v0, 0x0

    .line 56
    new-array v0, v0, [Landroid/apex/CompressedApexInfo;

    .line 57
    .line 58
    iput-object v0, p0, Landroid/apex/CompressedApexInfoList;->apexInfos:[Landroid/apex/CompressedApexInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    .line 60
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V

    .line 61
    .line 62
    .line 63
    return-object p0

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    goto/16 :goto_1

    .line 66
    .line 67
    :cond_1
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getSize()J

    .line 73
    .line 74
    .line 75
    move-result-wide v6

    .line 76
    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v2, " bytes of memory to store OTA Metadata"

    .line 80
    .line 81
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getSize()J

    .line 92
    .line 93
    .line 94
    move-result-wide v2

    .line 95
    long-to-int v2, v2

    .line 96
    new-array v3, v2, [B

    .line 97
    .line 98
    invoke-virtual {v5, p0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    .line 99
    .line 100
    .line 101
    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 102
    :try_start_3
    invoke-virtual {p0, v3}, Ljava/io/InputStream;->read([B)I

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    new-instance v6, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v1, " when expecting "

    .line 115
    .line 116
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 127
    .line 128
    .line 129
    if-ne v4, v2, :cond_2

    .line 130
    .line 131
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 132
    .line 133
    .line 134
    invoke-static {v3}, Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;->parseFrom([B)Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    new-instance v0, Landroid/apex/CompressedApexInfoList;

    .line 139
    .line 140
    invoke-direct {v0}, Landroid/apex/CompressedApexInfoList;-><init>()V

    .line 141
    .line 142
    .line 143
    iget-object p0, p0, Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;->apexInfo:[Landroid/ota/nano/OtaPackageMetadata$ApexInfo;

    .line 144
    .line 145
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    new-instance v1, Lcom/android/server/recoverysystem/RecoverySystemService$$ExternalSyntheticLambda0;

    .line 150
    .line 151
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 152
    .line 153
    .line 154
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    new-instance v1, Lcom/android/server/recoverysystem/RecoverySystemService$$ExternalSyntheticLambda1;

    .line 159
    .line 160
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 161
    .line 162
    .line 163
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    new-instance v1, Lcom/android/server/recoverysystem/RecoverySystemService$$ExternalSyntheticLambda2;

    .line 168
    .line 169
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 170
    .line 171
    .line 172
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object p0

    .line 176
    check-cast p0, [Landroid/apex/CompressedApexInfo;

    .line 177
    .line 178
    iput-object p0, v0, Landroid/apex/CompressedApexInfoList;->apexInfos:[Landroid/apex/CompressedApexInfo;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 179
    .line 180
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V

    .line 181
    .line 182
    .line 183
    return-object v0

    .line 184
    :cond_2
    :try_start_5
    new-instance v0, Ljava/io/IOException;

    .line 185
    .line 186
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 190
    :catchall_1
    move-exception v0

    .line 191
    if-eqz p0, :cond_3

    .line 192
    .line 193
    :try_start_6
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 194
    .line 195
    .line 196
    goto :goto_0

    .line 197
    :catchall_2
    move-exception p0

    .line 198
    :try_start_7
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 199
    .line 200
    .line 201
    :cond_3
    :goto_0
    throw v0

    .line 202
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 203
    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getSize()J

    .line 210
    .line 211
    .line 212
    move-result-wide v6

    .line 213
    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p0

    .line 223
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 227
    :goto_1
    :try_start_8
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 228
    .line 229
    .line 230
    goto :goto_2

    .line 231
    :catchall_3
    move-exception v0

    .line 232
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 233
    .line 234
    .line 235
    :goto_2
    throw p0
.end method

.method public static getSecretKeeper()Landroid/hardware/security/secretkeeper/ISecretkeeper;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    .line 6
    .line 7
    sget-object v2, Landroid/hardware/security/secretkeeper/ISecretkeeper;->DESCRIPTOR:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string v3, "/default"

    .line 13
    .line 14
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    instance-of v3, v2, Landroid/hardware/security/secretkeeper/ISecretkeeper;

    .line 35
    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    check-cast v2, Landroid/hardware/security/secretkeeper/ISecretkeeper;

    .line 39
    .line 40
    :goto_0
    move-object v0, v2

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    new-instance v2, Landroid/hardware/security/secretkeeper/ISecretkeeper$Stub$Proxy;

    .line 43
    .line 44
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object v1, v2, Landroid/hardware/security/secretkeeper/ISecretkeeper$Stub$Proxy;->mRemote:Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catch_0
    const-string v1, "RecoverySystemService"

    .line 51
    .line 52
    const-string v2, "Does not have permissions to get AIDL secretkeeper service"

    .line 53
    .line 54
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    :goto_1
    return-object v0
.end method

.method public static sendPreparedForRebootIntentIfNeeded(Landroid/content/IntentSender;)V
    .locals 6

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x0

    .line 5
    const/4 v4, 0x0

    .line 6
    const/4 v5, 0x0

    .line 7
    const/4 v1, 0x0

    .line 8
    move-object v0, p0

    .line 9
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception p0

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v1, "Could not send intent for prepared reboot: "

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/content/IntentSender$SendIntentException;->getMessage()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const-string v0, "RecoverySystemService"

    .line 33
    .line 34
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public final allocateSpaceForUpdate(Ljava/lang/String;)Z
    .locals 4

    .line 1
    const-string v0, "RecoverySystemService"

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/os/IRecoverySystem$Stub;->allocateSpaceForUpdate_enforcePermission()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    :try_start_0
    invoke-static {p1}, Lcom/android/server/recoverysystem/RecoverySystemService;->getCompressedApexInfoList(Ljava/lang/String;)Landroid/apex/CompressedApexInfoList;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const/4 p1, 0x1

    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    const-string p0, "apex_info.pb not present in OTA package. Assuming device doesn\'t support compressedAPEX, continueing without allocating space."

    .line 18
    .line 19
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 23
    .line 24
    .line 25
    return p1

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_4

    .line 28
    :catch_0
    move-exception p0

    .line 29
    goto :goto_0

    .line 30
    :catch_1
    move-exception p0

    .line 31
    goto :goto_2

    .line 32
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Lcom/android/server/pm/ApexManager$ApexManagerImpl;

    .line 37
    .line 38
    invoke-virtual {v3}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-interface {v3, p0}, Landroid/apex/IApexService;->reserveSpaceForCompressedApex(Landroid/apex/CompressedApexInfoList;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    .line 44
    .line 45
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 46
    .line 47
    .line 48
    return p1

    .line 49
    :goto_0
    :try_start_2
    const-string p1, "Failed to reserve space for compressed apex: "

    .line 50
    .line 51
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    .line 53
    .line 54
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 55
    .line 56
    .line 57
    goto :goto_3

    .line 58
    :goto_2
    :try_start_3
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :goto_3
    const/4 p0, 0x0

    .line 63
    return p0

    .line 64
    :goto_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 65
    .line 66
    .line 67
    throw p0
.end method

.method public final checkAndWaitForUncryptService()Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    const/16 v2, 0x1e

    .line 4
    .line 5
    if-ge v1, v2, :cond_2

    .line 6
    .line 7
    iget-object v2, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const-string v2, "init.svc.uncrypt"

    .line 13
    .line 14
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    iget-object v3, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    .line 19
    .line 20
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    const-string v3, "init.svc.setup-bcb"

    .line 24
    .line 25
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    iget-object v4, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    .line 30
    .line 31
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    const-string v4, "init.svc.clear-bcb"

    .line 35
    .line 36
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    const-string/jumbo v5, "running"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-nez v2, :cond_1

    .line 48
    .line 49
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-nez v2, :cond_1

    .line 54
    .line 55
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_0

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_0
    const/4 p0, 0x1

    .line 63
    return p0

    .line 64
    :cond_1
    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    const-wide/16 v2, 0x3e8

    .line 70
    .line 71
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    .line 74
    goto :goto_2

    .line 75
    :catch_0
    move-exception v2

    .line 76
    const-string v3, "RecoverySystemService"

    .line 77
    .line 78
    const-string v4, "Interrupted:"

    .line 79
    .line 80
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    .line 82
    .line 83
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_2
    return v0
.end method

.method public final clearBcb()Z
    .locals 3

    .line 1
    sget-object v0, Lcom/android/server/recoverysystem/RecoverySystemService;->sRequestLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    invoke-virtual {p0, v2, v1}, Lcom/android/server/recoverysystem/RecoverySystemService;->setupOrClearBcb(Ljava/lang/String;Z)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    monitor-exit v0

    .line 11
    return p0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p0
.end method

.method public final clearLskf(Ljava/lang/String;)Z
    .locals 5

    .line 1
    const-string v0, " hasn\'t prepared for resume on reboot"

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService;->enforcePermissionForResumeOnReboot()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    const-string p0, "RecoverySystemService"

    .line 10
    .line 11
    const-string p1, "Missing packageName when clearing lskf."

    .line 12
    .line 13
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    return v1

    .line 17
    :cond_0
    monitor-enter p0

    .line 18
    :try_start_0
    iget-object v2, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPreparedForReboot:Landroid/util/ArraySet;

    .line 19
    .line 20
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x2

    .line 25
    const/4 v4, 0x1

    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    iget-object v2, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPendingRequest:Landroid/util/ArrayMap;

    .line 29
    .line 30
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_1

    .line 35
    .line 36
    const-string v2, "RecoverySystemService"

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    monitor-exit p0

    .line 46
    move v0, v1

    .line 47
    goto :goto_1

    .line 48
    :catchall_0
    move-exception p1

    .line 49
    goto :goto_3

    .line 50
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPendingRequest:Landroid/util/ArrayMap;

    .line 51
    .line 52
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPreparedForReboot:Landroid/util/ArraySet;

    .line 56
    .line 57
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPendingRequest:Landroid/util/ArrayMap;

    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPreparedForReboot:Landroid/util/ArraySet;

    .line 69
    .line 70
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    .line 71
    .line 72
    .line 73
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    if-eqz v0, :cond_2

    .line 75
    .line 76
    move v0, v4

    .line 77
    goto :goto_0

    .line 78
    :cond_2
    move v0, v3

    .line 79
    :goto_0
    monitor-exit p0

    .line 80
    :goto_1
    if-eqz v0, :cond_6

    .line 81
    .line 82
    if-eq v0, v4, :cond_4

    .line 83
    .line 84
    if-ne v0, v3, :cond_3

    .line 85
    .line 86
    return v4

    .line 87
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 88
    .line 89
    const-string p1, "Unsupported action type on clear "

    .line 90
    .line 91
    invoke-static {v0, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw p0

    .line 99
    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 100
    .line 101
    .line 102
    move-result-wide v2

    .line 103
    :try_start_2
    iget-object p0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    .line 104
    .line 105
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    const-class p0, Lcom/android/internal/widget/LockSettingsInternal;

    .line 109
    .line 110
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    check-cast p0, Lcom/android/internal/widget/LockSettingsInternal;

    .line 115
    .line 116
    if-nez p0, :cond_5

    .line 117
    .line 118
    const-string p0, "RecoverySystemService"

    .line 119
    .line 120
    const-string p1, "Failed to get lock settings service, skipping clearRebootEscrow"

    .line 121
    .line 122
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 123
    .line 124
    .line 125
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 126
    .line 127
    .line 128
    return v1

    .line 129
    :catchall_1
    move-exception p0

    .line 130
    goto :goto_2

    .line 131
    :cond_5
    :try_start_3
    invoke-virtual {p0}, Lcom/android/internal/widget/LockSettingsInternal;->clearRebootEscrow()Z

    .line 132
    .line 133
    .line 134
    move-result p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 135
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 136
    .line 137
    .line 138
    return p0

    .line 139
    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 140
    .line 141
    .line 142
    throw p0

    .line 143
    :cond_6
    const-string p0, "RecoverySystemService"

    .line 144
    .line 145
    const-string v0, "RoR clear called before preparation for caller "

    .line 146
    .line 147
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    .line 153
    .line 154
    return v4

    .line 155
    :goto_3
    monitor-exit p0

    .line 156
    throw p1
.end method

.method public final enforcePermissionForResumeOnReboot()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.RECOVERY"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    const-string v0, "android.permission.REBOOT"

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-nez p0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 23
    .line 24
    const-string v0, "Caller must have android.permission.RECOVERY or android.permission.REBOOT for resume on reboot."

    .line 25
    .line 26
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p0

    .line 30
    :cond_1
    :goto_0
    return-void
.end method

.method public final isLskfCaptured(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService;->enforcePermissionForResumeOnReboot()V

    .line 2
    .line 3
    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPreparedForReboot:Landroid/util/ArraySet;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const-string p0, "RecoverySystemService"

    .line 15
    .line 16
    const-string v0, "Reboot requested before prepare completed for caller "

    .line 17
    .line 18
    invoke-static {v0, p1, p0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    return p0

    .line 23
    :cond_0
    const/4 p0, 0x1

    .line 24
    return p0

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    throw p1
.end method

.method public final onPreparedForReboot(Z)V
    .locals 10

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    monitor-enter p0

    .line 5
    :try_start_0
    iget-object p1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPreparedForReboot:Landroid/util/ArraySet;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_1

    .line 12
    .line 13
    const-string p1, "RecoverySystemService"

    .line 14
    .line 15
    const-string/jumbo v0, "onPreparedForReboot called when some clients have prepared."

    .line 16
    .line 17
    .line 18
    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    goto/16 :goto_4

    .line 24
    .line 25
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPendingRequest:Landroid/util/ArrayMap;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    const-string p1, "RecoverySystemService"

    .line 34
    .line 35
    const-string/jumbo v0, "onPreparedForReboot called but no client has requested."

    .line 36
    .line 37
    .line 38
    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    :cond_2
    const/4 p1, 0x0

    .line 42
    :goto_1
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPendingRequest:Landroid/util/ArrayMap;

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-ge p1, v0, :cond_3

    .line 49
    .line 50
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPendingRequest:Landroid/util/ArrayMap;

    .line 51
    .line 52
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Landroid/content/IntentSender;

    .line 57
    .line 58
    invoke-static {v0}, Lcom/android/server/recoverysystem/RecoverySystemService;->sendPreparedForRebootIntentIfNeeded(Landroid/content/IntentSender;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPreparedForReboot:Landroid/util/ArraySet;

    .line 62
    .line 63
    iget-object v1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPendingRequest:Landroid/util/ArrayMap;

    .line 64
    .line 65
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    check-cast v1, Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    add-int/lit8 p1, p1, 0x1

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_3
    iget-object p1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPendingRequest:Landroid/util/ArrayMap;

    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/util/ArrayMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .line 81
    .line 82
    monitor-exit p0

    .line 83
    iget-object p1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 89
    .line 90
    .line 91
    move-result-wide v0

    .line 92
    monitor-enter p0

    .line 93
    :try_start_1
    new-instance p1, Ljava/util/ArrayList;

    .line 94
    .line 95
    iget-object v2, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPreparedForReboot:Landroid/util/ArraySet;

    .line 96
    .line 97
    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 98
    .line 99
    .line 100
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 101
    iget-object v2, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    .line 102
    .line 103
    iget-object v2, v2, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->mPrefs:Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;

    .line 104
    .line 105
    const-string v3, "lskf_captured_timestamp"

    .line 106
    .line 107
    iget-object v4, v2, Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 108
    .line 109
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    invoke-interface {v4, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 118
    .line 119
    .line 120
    const-string v3, "lskf_captured_count"

    .line 121
    .line 122
    invoke-virtual {v2, v3}, Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;->incrementIntKey(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    if-eqz v4, :cond_5

    .line 134
    .line 135
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    check-cast v4, Ljava/lang/String;

    .line 140
    .line 141
    iget-object v5, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    .line 142
    .line 143
    invoke-virtual {v5, v4}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getUidFromPackageName(Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    move-result v5

    .line 147
    const-string v6, "_request_lskf_timestamp"

    .line 148
    .line 149
    invoke-static {v4, v6}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v6

    .line 153
    iget-object v7, v2, Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 154
    .line 155
    const-wide/16 v8, -0x1

    .line 156
    .line 157
    invoke-interface {v7, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 158
    .line 159
    .line 160
    move-result-wide v6

    .line 161
    cmp-long v8, v6, v8

    .line 162
    .line 163
    if-eqz v8, :cond_4

    .line 164
    .line 165
    cmp-long v8, v0, v6

    .line 166
    .line 167
    if-lez v8, :cond_4

    .line 168
    .line 169
    sub-long v6, v0, v6

    .line 170
    .line 171
    long-to-int v6, v6

    .line 172
    div-int/lit16 v6, v6, 0x3e8

    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_4
    const/4 v6, -0x1

    .line 176
    :goto_3
    const-string v7, "RecoverySystemService"

    .line 177
    .line 178
    const-string v8, "Reporting lskf captured, lskf capture takes %d seconds for package %s"

    .line 179
    .line 180
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 181
    .line 182
    .line 183
    move-result-object v9

    .line 184
    filled-new-array {v9, v4}, [Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    invoke-static {v8, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v4

    .line 192
    invoke-static {v7, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .line 194
    .line 195
    iget-object v4, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    .line 196
    .line 197
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 198
    .line 199
    .line 200
    move-result v7

    .line 201
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    .line 203
    .line 204
    const/16 v4, 0x154

    .line 205
    .line 206
    invoke-static {v4, v5, v7, v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 207
    .line 208
    .line 209
    goto :goto_2

    .line 210
    :cond_5
    return-void

    .line 211
    :catchall_1
    move-exception p1

    .line 212
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 213
    throw p1

    .line 214
    :goto_4
    monitor-exit p0

    .line 215
    throw p1
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 11

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x7d0

    .line 6
    .line 7
    if-eq v0, v1, :cond_1

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    .line 13
    .line 14
    const-string v1, "Caller must be shell"

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw v0

    .line 20
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 21
    .line 22
    .line 23
    move-result-wide v1

    .line 24
    :try_start_0
    new-instance v3, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;

    .line 25
    .line 26
    move-object v0, p0

    .line 27
    invoke-direct {v3, p0}, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;-><init>(Lcom/android/server/recoverysystem/RecoverySystemService;)V

    .line 28
    .line 29
    .line 30
    move-object v4, p0

    .line 31
    move-object v5, p1

    .line 32
    move-object v6, p2

    .line 33
    move-object v7, p3

    .line 34
    move-object v8, p4

    .line 35
    move-object/from16 v9, p5

    .line 36
    .line 37
    move-object/from16 v10, p6

    .line 38
    .line 39
    invoke-virtual/range {v3 .. v10}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    .line 42
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :catchall_0
    move-exception v0

    .line 47
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 48
    .line 49
    .line 50
    throw v0
.end method

.method public onSystemServicesReady()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-class v0, Lcom/android/internal/widget/LockSettingsInternal;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/android/internal/widget/LockSettingsInternal;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const-string p0, "RecoverySystemService"

    .line 17
    .line 18
    const-string v0, "Failed to get lock settings service, skipping set RebootEscrowListener"

    .line 19
    .line 20
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockSettingsInternal;->setRebootEscrowListener(Lcom/android/internal/widget/RebootEscrowListener;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final rebootRecoveryWithCommand(Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "RecoverySystemService rebootRecoveryWithCommand: "

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    const-string v2, "--wipe_data"

    .line 7
    .line 8
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    move v2, v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v2, 0x0

    .line 17
    :goto_0
    sget-object v3, Lcom/android/server/recoverysystem/RecoverySystemService;->sRequestLock:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter v3

    .line 20
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/recoverysystem/RecoverySystemService;->setupOrClearBcb(Ljava/lang/String;Z)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    const-string p0, "RecoverySystemService"

    .line 27
    .line 28
    const-string/jumbo p1, "rebootRecoveryWithCommand failed to setup BCB"

    .line 29
    .line 30
    .line 31
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    monitor-exit v3

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto/16 :goto_6

    .line 38
    .line 39
    :cond_1
    if-eqz v2, :cond_2

    .line 40
    .line 41
    const-string v1, "deleteSecrets"

    .line 42
    .line 43
    const-string v2, "RecoverySystemService"

    .line 44
    .line 45
    invoke-static {v2, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    .line 48
    :try_start_1
    invoke-static {}, Landroid/security/AndroidKeyStoreMaintenance;->deleteAllKeys()V
    :try_end_1
    .catch Landroid/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :catch_0
    move-exception v1

    .line 53
    :try_start_2
    const-string v4, "Failed to delete all keys from keystore."

    .line 54
    .line 55
    invoke-static {v2, v4, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    .line 57
    .line 58
    :goto_1
    :try_start_3
    invoke-static {}, Lcom/android/server/recoverysystem/RecoverySystemService;->getSecretKeeper()Landroid/hardware/security/secretkeeper/ISecretkeeper;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    if-eqz v1, :cond_2

    .line 63
    .line 64
    const-string v4, "ISecretkeeper.deleteAll();"

    .line 65
    .line 66
    invoke-static {v2, v4}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    check-cast v1, Landroid/hardware/security/secretkeeper/ISecretkeeper$Stub$Proxy;

    .line 70
    .line 71
    invoke-virtual {v1}, Landroid/hardware/security/secretkeeper/ISecretkeeper$Stub$Proxy;->deleteAll()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 72
    .line 73
    .line 74
    goto :goto_2

    .line 75
    :catch_1
    move-exception v1

    .line 76
    :try_start_4
    const-string v4, "Failed to delete all secrets from secretkeeper."

    .line 77
    .line 78
    invoke-static {v2, v4, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    .line 80
    .line 81
    :cond_2
    :goto_2
    iget-object p0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    .line 82
    .line 83
    iget-object p0, p0, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->mContext:Landroid/content/Context;

    .line 84
    .line 85
    const-string/jumbo v1, "power"

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    check-cast p0, Landroid/os/PowerManager;

    .line 93
    .line 94
    const-string v1, "RecoverySystemService"

    .line 95
    .line 96
    const-string v2, "!@[RecoverySystemService] rebootRecoveryWithCommand: [reset tracking] write to recovery_cause"

    .line 97
    .line 98
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 99
    .line 100
    .line 101
    :try_start_5
    new-instance v1, Ljava/io/FileWriter;

    .line 102
    .line 103
    const-string v2, "/sys/class/sec/sec_debug/recovery_cause"

    .line 104
    .line 105
    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 106
    .line 107
    .line 108
    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-virtual {v1, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 121
    .line 122
    .line 123
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 124
    .line 125
    .line 126
    goto :goto_5

    .line 127
    :catch_2
    move-exception p1

    .line 128
    goto :goto_4

    .line 129
    :catchall_1
    move-exception p1

    .line 130
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 131
    .line 132
    .line 133
    goto :goto_3

    .line 134
    :catchall_2
    move-exception v0

    .line 135
    :try_start_9
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 136
    .line 137
    .line 138
    :goto_3
    throw p1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 139
    :goto_4
    :try_start_a
    const-string v0, "RecoverySystemService"

    .line 140
    .line 141
    const-string v1, "IOException when writing /sys/class/sec/sec_debug/recovery_cause:"

    .line 142
    .line 143
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    .line 145
    .line 146
    :goto_5
    const-string/jumbo p1, "recovery"

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0, p1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    monitor-exit v3

    .line 153
    return-void

    .line 154
    :goto_6
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 155
    throw p0
.end method

.method public final rebootWithLskf(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService;->enforcePermissionForResumeOnReboot()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/recoverysystem/RecoverySystemService;->rebootWithLskfImpl(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public final rebootWithLskfAssumeSlotSwitch(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/os/IRecoverySystem$Stub;->rebootWithLskfAssumeSlotSwitch_enforcePermission()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/recoverysystem/RecoverySystemService;->rebootWithLskfImpl(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final rebootWithLskfImpl(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const-string v3, "RecoverySystemService"

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    const-string v0, "Missing packageName when rebooting with lskf."

    .line 11
    .line 12
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    new-instance v0, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;

    .line 16
    .line 17
    const/16 v3, 0x7d0

    .line 18
    .line 19
    invoke-direct {v0, v3, v4}, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;-><init>(II)V

    .line 20
    .line 21
    .line 22
    goto/16 :goto_6

    .line 23
    .line 24
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/recoverysystem/RecoverySystemService;->isLskfCaptured(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    new-instance v0, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;

    .line 31
    .line 32
    const/16 v3, 0xbb8

    .line 33
    .line 34
    invoke-direct {v0, v3, v4}, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;-><init>(II)V

    .line 35
    .line 36
    .line 37
    goto/16 :goto_6

    .line 38
    .line 39
    :cond_1
    const-string v0, "Current boot slot should be 0 or 1, got "

    .line 40
    .line 41
    iget-object v5, v1, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    .line 42
    .line 43
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    const-string/jumbo v5, "ro.build.ab_update"

    .line 47
    .line 48
    .line 49
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    const-string/jumbo v6, "true"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    if-nez v5, :cond_2

    .line 61
    .line 62
    const-string v0, "Device isn\'t a/b, skipping slot verification."

    .line 63
    .line 64
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_2
    :try_start_0
    iget-object v5, v1, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    .line 69
    .line 70
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    invoke-static {}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getBootControl()Landroid/hardware/boot/IBootControl;

    .line 74
    .line 75
    .line 76
    move-result-object v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 77
    if-nez v5, :cond_3

    .line 78
    .line 79
    const-string v0, "Cannot get the boot control HAL, skipping slot verification."

    .line 80
    .line 81
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_3
    :try_start_1
    invoke-interface {v5}, Landroid/hardware/boot/IBootControl;->getCurrentSlot()I

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    const/4 v7, 0x1

    .line 90
    if-eqz v6, :cond_5

    .line 91
    .line 92
    if-ne v6, v7, :cond_4

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_4
    new-instance v5, Ljava/lang/IllegalStateException;

    .line 96
    .line 97
    new-instance v7, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-direct {v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw v5

    .line 113
    :catch_0
    move-exception v0

    .line 114
    goto/16 :goto_4

    .line 115
    .line 116
    :cond_5
    :goto_0
    invoke-interface {v5}, Landroid/hardware/boot/IBootControl;->getActiveBootSlot()I

    .line 117
    .line 118
    .line 119
    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 120
    if-eqz p3, :cond_7

    .line 121
    .line 122
    if-nez v6, :cond_6

    .line 123
    .line 124
    move v6, v7

    .line 125
    goto :goto_1

    .line 126
    :cond_6
    move v6, v4

    .line 127
    :cond_7
    :goto_1
    if-eq v0, v6, :cond_8

    .line 128
    .line 129
    const-string v5, "The next active boot slot doesn\'t match the expected value, expected "

    .line 130
    .line 131
    const-string v7, ", got "

    .line 132
    .line 133
    invoke-static {v6, v0, v5, v7, v3}, Lcom/android/server/am/PendingIntentController$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    goto :goto_5

    .line 137
    :cond_8
    :goto_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 138
    .line 139
    .line 140
    move-result-wide v5

    .line 141
    :try_start_2
    iget-object v0, v1, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    .line 142
    .line 143
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    const-class v0, Lcom/android/internal/widget/LockSettingsInternal;

    .line 147
    .line 148
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    check-cast v0, Lcom/android/internal/widget/LockSettingsInternal;

    .line 153
    .line 154
    const/16 v7, 0x1388

    .line 155
    .line 156
    if-nez v0, :cond_9

    .line 157
    .line 158
    const-string v0, "Failed to get lock settings service, skipping armRebootEscrow"

    .line 159
    .line 160
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    new-instance v0, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;

    .line 164
    .line 165
    const/4 v3, 0x3

    .line 166
    invoke-direct {v0, v7, v3}, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;-><init>(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 167
    .line 168
    .line 169
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 170
    .line 171
    .line 172
    goto :goto_6

    .line 173
    :catchall_0
    move-exception v0

    .line 174
    goto :goto_3

    .line 175
    :cond_9
    :try_start_3
    invoke-virtual {v0}, Lcom/android/internal/widget/LockSettingsInternal;->armRebootEscrow()I

    .line 176
    .line 177
    .line 178
    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 179
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 180
    .line 181
    .line 182
    if-eqz v0, :cond_a

    .line 183
    .line 184
    new-instance v5, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    const-string v6, "Failure to escrow key for reboot, providerErrorCode: "

    .line 187
    .line 188
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v5

    .line 198
    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    .line 200
    .line 201
    new-instance v3, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;

    .line 202
    .line 203
    invoke-direct {v3, v7, v0}, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;-><init>(II)V

    .line 204
    .line 205
    .line 206
    move-object v0, v3

    .line 207
    goto :goto_6

    .line 208
    :cond_a
    new-instance v0, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;

    .line 209
    .line 210
    invoke-direct {v0, v4, v4}, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;-><init>(II)V

    .line 211
    .line 212
    .line 213
    goto :goto_6

    .line 214
    :goto_3
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 215
    .line 216
    .line 217
    throw v0

    .line 218
    :goto_4
    const-string v5, "Failed to query the active slots"

    .line 219
    .line 220
    invoke-static {v3, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 221
    .line 222
    .line 223
    goto :goto_5

    .line 224
    :catch_1
    move-exception v0

    .line 225
    const-string v5, "Failed to get the boot control HAL "

    .line 226
    .line 227
    invoke-static {v5, v0, v3}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    :goto_5
    new-instance v0, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;

    .line 231
    .line 232
    const/16 v3, 0xfa0

    .line 233
    .line 234
    invoke-direct {v0, v3, v4}, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;-><init>(II)V

    .line 235
    .line 236
    .line 237
    :goto_6
    iget-object v3, v1, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    .line 238
    .line 239
    invoke-virtual {v3, v2}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getUidFromPackageName(Ljava/lang/String;)I

    .line 240
    .line 241
    .line 242
    move-result v10

    .line 243
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 244
    .line 245
    .line 246
    move-result-wide v5

    .line 247
    :try_start_4
    const-string/jumbo v3, "ota"

    .line 248
    .line 249
    .line 250
    const-string/jumbo v7, "server_based_ror_enabled"

    .line 251
    .line 252
    .line 253
    invoke-static {v3, v7, v4}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 254
    .line 255
    .line 256
    move-result v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 257
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 258
    .line 259
    .line 260
    monitor-enter p0

    .line 261
    :try_start_5
    iget-object v3, v1, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPreparedForReboot:Landroid/util/ArraySet;

    .line 262
    .line 263
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    .line 264
    .line 265
    .line 266
    move-result v11

    .line 267
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 268
    iget-object v3, v1, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    .line 269
    .line 270
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 271
    .line 272
    .line 273
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 274
    .line 275
    .line 276
    move-result-wide v3

    .line 277
    iget-object v5, v1, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    .line 278
    .line 279
    iget-object v5, v5, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->mPrefs:Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;

    .line 280
    .line 281
    const-string v6, "lskf_captured_timestamp"

    .line 282
    .line 283
    iget-object v7, v5, Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 284
    .line 285
    const-wide/16 v8, -0x1

    .line 286
    .line 287
    invoke-interface {v7, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 288
    .line 289
    .line 290
    move-result-wide v6

    .line 291
    cmp-long v8, v6, v8

    .line 292
    .line 293
    const/16 v15, 0x3e8

    .line 294
    .line 295
    const/4 v9, -0x1

    .line 296
    if-eqz v8, :cond_b

    .line 297
    .line 298
    cmp-long v8, v3, v6

    .line 299
    .line 300
    if-lez v8, :cond_b

    .line 301
    .line 302
    sub-long/2addr v3, v6

    .line 303
    long-to-int v3, v3

    .line 304
    div-int/2addr v3, v15

    .line 305
    goto :goto_7

    .line 306
    :cond_b
    move v3, v9

    .line 307
    :goto_7
    const-string v4, "_request_lskf_count"

    .line 308
    .line 309
    invoke-static {v2, v4}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v4

    .line 313
    iget-object v6, v5, Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 314
    .line 315
    invoke-interface {v6, v4, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 316
    .line 317
    .line 318
    move-result v12

    .line 319
    const-string v4, "lskf_captured_count"

    .line 320
    .line 321
    iget-object v5, v5, Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 322
    .line 323
    invoke-interface {v5, v4, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 324
    .line 325
    .line 326
    move-result v16

    .line 327
    const-string v4, "RecoverySystemService"

    .line 328
    .line 329
    const-string v5, "Reporting reboot with lskf, package name %s, client count %d, request count %d, lskf captured count %d, duration since lskf captured %d seconds."

    .line 330
    .line 331
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 332
    .line 333
    .line 334
    move-result-object v6

    .line 335
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 336
    .line 337
    .line 338
    move-result-object v7

    .line 339
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 340
    .line 341
    .line 342
    move-result-object v8

    .line 343
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 344
    .line 345
    .line 346
    move-result-object v9

    .line 347
    filled-new-array {v2, v6, v7, v8, v9}, [Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object v2

    .line 351
    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v2

    .line 355
    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    .line 357
    .line 358
    iget-object v2, v1, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    .line 359
    .line 360
    iget v4, v0, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;->mRebootErrorCode:I

    .line 361
    .line 362
    iget v5, v0, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;->mProviderErrorCode:I

    .line 363
    .line 364
    add-int v9, v4, v5

    .line 365
    .line 366
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 367
    .line 368
    .line 369
    const/16 v8, 0x155

    .line 370
    .line 371
    move/from16 v13, p3

    .line 372
    .line 373
    move v2, v15

    .line 374
    move v15, v3

    .line 375
    invoke-static/range {v8 .. v16}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIIZZII)V

    .line 376
    .line 377
    .line 378
    sget-object v3, Lcom/android/server/recoverysystem/RecoverySystemService;->FATAL_ARM_ESCROW_ERRORS:Landroid/util/FastImmutableArraySet;

    .line 379
    .line 380
    iget v4, v0, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;->mProviderErrorCode:I

    .line 381
    .line 382
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 383
    .line 384
    .line 385
    move-result-object v4

    .line 386
    invoke-virtual {v3, v4}, Landroid/util/FastImmutableArraySet;->contains(Ljava/lang/Object;)Z

    .line 387
    .line 388
    .line 389
    move-result v3

    .line 390
    if-nez v3, :cond_c

    .line 391
    .line 392
    goto :goto_8

    .line 393
    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    .line 394
    .line 395
    const-string v4, "Clearing resume on reboot states for all clients on arm escrow error: "

    .line 396
    .line 397
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    iget v4, v0, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;->mProviderErrorCode:I

    .line 401
    .line 402
    const-string v5, "RecoverySystemService"

    .line 403
    .line 404
    invoke-static {v3, v4, v5}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 405
    .line 406
    .line 407
    monitor-enter p0

    .line 408
    :try_start_6
    iget-object v3, v1, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPendingRequest:Landroid/util/ArrayMap;

    .line 409
    .line 410
    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 411
    .line 412
    .line 413
    iget-object v3, v1, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPreparedForReboot:Landroid/util/ArraySet;

    .line 414
    .line 415
    invoke-virtual {v3}, Landroid/util/ArraySet;->clear()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 416
    .line 417
    .line 418
    monitor-exit p0

    .line 419
    :goto_8
    iget v0, v0, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;->mRebootErrorCode:I

    .line 420
    .line 421
    if-eqz v0, :cond_d

    .line 422
    .line 423
    return v0

    .line 424
    :cond_d
    iget-object v0, v1, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    .line 425
    .line 426
    iget-object v0, v0, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->mPrefs:Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;

    .line 427
    .line 428
    iget-object v0, v0, Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;->mMetricsPrefsFile:Ljava/io/File;

    .line 429
    .line 430
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 431
    .line 432
    .line 433
    move-result v0

    .line 434
    if-nez v0, :cond_e

    .line 435
    .line 436
    const-string v0, "RecoverySystemService"

    .line 437
    .line 438
    const-string v3, "Failed to delete metrics prefs"

    .line 439
    .line 440
    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    .line 442
    .line 443
    :cond_e
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    .line 444
    .line 445
    .line 446
    move-result-object v0

    .line 447
    const-string/jumbo v3, "reboot can be slow"

    .line 448
    .line 449
    .line 450
    invoke-virtual {v0, v3}, Lcom/android/server/Watchdog;->pauseWatchingCurrentThreadFor(Ljava/lang/String;)V

    .line 451
    .line 452
    .line 453
    iget-object v0, v1, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    .line 454
    .line 455
    iget-object v0, v0, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->mContext:Landroid/content/Context;

    .line 456
    .line 457
    const-string/jumbo v1, "power"

    .line 458
    .line 459
    .line 460
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    move-result-object v0

    .line 464
    check-cast v0, Landroid/os/PowerManager;

    .line 465
    .line 466
    move-object/from16 v1, p2

    .line 467
    .line 468
    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 469
    .line 470
    .line 471
    return v2

    .line 472
    :catchall_1
    move-exception v0

    .line 473
    monitor-exit p0

    .line 474
    throw v0

    .line 475
    :catchall_2
    move-exception v0

    .line 476
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 477
    throw v0

    .line 478
    :catchall_3
    move-exception v0

    .line 479
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 480
    .line 481
    .line 482
    throw v0
.end method

.method public final requestLskf(Ljava/lang/String;Landroid/content/IntentSender;)Z
    .locals 11

    .line 1
    const-string v0, "Duplicate RoR preparation request for "

    .line 2
    .line 3
    const-string v1, "RoR already has prepared for "

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService;->enforcePermissionForResumeOnReboot()V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const-string p0, "RecoverySystemService"

    .line 12
    .line 13
    const-string p1, "Missing packageName when requesting lskf."

    .line 14
    .line 15
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    return v2

    .line 19
    :cond_0
    monitor-enter p0

    .line 20
    :try_start_0
    iget-object v3, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPreparedForReboot:Landroid/util/ArraySet;

    .line 21
    .line 22
    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    const/4 v4, 0x2

    .line 27
    const/4 v5, 0x1

    .line 28
    if-nez v3, :cond_2

    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPreparedForReboot:Landroid/util/ArraySet;

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    const-string v0, "RecoverySystemService"

    .line 39
    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception p1

    .line 49
    goto/16 :goto_4

    .line 50
    .line 51
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPreparedForReboot:Landroid/util/ArraySet;

    .line 52
    .line 53
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    .line 56
    monitor-exit p0

    .line 57
    move v0, v5

    .line 58
    goto :goto_2

    .line 59
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPendingRequest:Landroid/util/ArrayMap;

    .line 60
    .line 61
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    iget-object v3, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPendingRequest:Landroid/util/ArrayMap;

    .line 66
    .line 67
    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-eqz v3, :cond_3

    .line 72
    .line 73
    const-string v3, "RecoverySystemService"

    .line 74
    .line 75
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    :cond_3
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPendingRequest:Landroid/util/ArrayMap;

    .line 83
    .line 84
    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    .line 86
    .line 87
    if-eqz v1, :cond_4

    .line 88
    .line 89
    move v0, v2

    .line 90
    goto :goto_1

    .line 91
    :cond_4
    move v0, v4

    .line 92
    :goto_1
    monitor-exit p0

    .line 93
    :goto_2
    iget-object v1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    .line 94
    .line 95
    invoke-virtual {v1, p1}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getUidFromPackageName(Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    monitor-enter p0

    .line 100
    :try_start_2
    iget-object v3, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPendingRequest:Landroid/util/ArrayMap;

    .line 101
    .line 102
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 107
    iget-object v6, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    .line 108
    .line 109
    iget-object v6, v6, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->mPrefs:Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;

    .line 110
    .line 111
    const-string v7, "_request_lskf_timestamp"

    .line 112
    .line 113
    invoke-virtual {p1, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v7

    .line 117
    iget-object v8, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    .line 118
    .line 119
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 123
    .line 124
    .line 125
    move-result-wide v8

    .line 126
    iget-object v10, v6, Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 127
    .line 128
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 129
    .line 130
    .line 131
    move-result-object v10

    .line 132
    invoke-interface {v10, v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 137
    .line 138
    .line 139
    const-string v7, "_request_lskf_count"

    .line 140
    .line 141
    invoke-virtual {p1, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-virtual {v6, p1}, Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;->incrementIntKey(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    iget-object p1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    .line 149
    .line 150
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    const/16 p1, 0x153

    .line 154
    .line 155
    invoke-static {p1, v1, v0, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 156
    .line 157
    .line 158
    if-eqz v0, :cond_7

    .line 159
    .line 160
    if-eq v0, v5, :cond_6

    .line 161
    .line 162
    if-ne v0, v4, :cond_5

    .line 163
    .line 164
    return v5

    .line 165
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 166
    .line 167
    const-string p1, "Unsupported action type on new request "

    .line 168
    .line 169
    invoke-static {v0, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    throw p0

    .line 177
    :cond_6
    invoke-static {p2}, Lcom/android/server/recoverysystem/RecoverySystemService;->sendPreparedForRebootIntentIfNeeded(Landroid/content/IntentSender;)V

    .line 178
    .line 179
    .line 180
    return v5

    .line 181
    :cond_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 182
    .line 183
    .line 184
    move-result-wide p1

    .line 185
    :try_start_3
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    .line 186
    .line 187
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    .line 189
    .line 190
    const-class v0, Lcom/android/internal/widget/LockSettingsInternal;

    .line 191
    .line 192
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    check-cast v0, Lcom/android/internal/widget/LockSettingsInternal;

    .line 197
    .line 198
    if-nez v0, :cond_8

    .line 199
    .line 200
    const-string p0, "RecoverySystemService"

    .line 201
    .line 202
    const-string v0, "Failed to get lock settings service, skipping prepareRebootEscrow"

    .line 203
    .line 204
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 205
    .line 206
    .line 207
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 208
    .line 209
    .line 210
    return v2

    .line 211
    :catchall_1
    move-exception p0

    .line 212
    goto :goto_3

    .line 213
    :cond_8
    :try_start_4
    invoke-virtual {v0}, Lcom/android/internal/widget/LockSettingsInternal;->prepareRebootEscrow()Z

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    if-nez v0, :cond_9

    .line 218
    .line 219
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 220
    :try_start_5
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPendingRequest:Landroid/util/ArrayMap;

    .line 221
    .line 222
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 223
    .line 224
    .line 225
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPreparedForReboot:Landroid/util/ArraySet;

    .line 226
    .line 227
    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 228
    .line 229
    .line 230
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 231
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 232
    .line 233
    .line 234
    return v2

    .line 235
    :catchall_2
    move-exception v0

    .line 236
    :try_start_7
    monitor-exit p0

    .line 237
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 238
    :cond_9
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 239
    .line 240
    .line 241
    return v5

    .line 242
    :goto_3
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 243
    .line 244
    .line 245
    throw p0

    .line 246
    :catchall_3
    move-exception p1

    .line 247
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 248
    throw p1

    .line 249
    :goto_4
    monitor-exit p0

    .line 250
    throw p1
.end method

.method public final setupBcb(Ljava/lang/String;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/recoverysystem/RecoverySystemService;->sRequestLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/recoverysystem/RecoverySystemService;->setupOrClearBcb(Ljava/lang/String;Z)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    monitor-exit v0

    .line 10
    return p0

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
.end method

.method public final setupOrClearBcb(Ljava/lang/String;Z)Z
    .locals 6

    .line 1
    const-string/jumbo v0, "uncrypt failed with status: "

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "uncrypt "

    .line 5
    .line 6
    .line 7
    iget-object v2, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    const-string v3, "android.permission.RECOVERY"

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService;->checkAndWaitForUncryptService()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x0

    .line 20
    const-string v4, "RecoverySystemService"

    .line 21
    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    const-string/jumbo p0, "uncrypt service is unavailable."

    .line 25
    .line 26
    .line 27
    invoke-static {v4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    return v3

    .line 31
    :cond_0
    const-string v2, "ctl.start"

    .line 32
    .line 33
    if-eqz p2, :cond_1

    .line 34
    .line 35
    iget-object v5, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    .line 36
    .line 37
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    const-string/jumbo v5, "setup-bcb"

    .line 41
    .line 42
    .line 43
    invoke-static {v2, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget-object v5, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    .line 48
    .line 49
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    const-string v5, "clear-bcb"

    .line 53
    .line 54
    invoke-static {v2, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :goto_0
    iget-object p0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    invoke-static {}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->connectService()Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    if-nez p0, :cond_2

    .line 67
    .line 68
    const-string p0, "Failed to connect to uncrypt socket"

    .line 69
    .line 70
    invoke-static {v4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    return v3

    .line 74
    :cond_2
    if-eqz p2, :cond_3

    .line 75
    .line 76
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->sendCommand(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :catchall_0
    move-exception p1

    .line 81
    goto :goto_4

    .line 82
    :catch_0
    move-exception p1

    .line 83
    goto :goto_3

    .line 84
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->mInputStream:Ljava/io/DataInputStream;

    .line 85
    .line 86
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    iget-object v2, p0, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->mOutputStream:Ljava/io/DataOutputStream;

    .line 91
    .line 92
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 93
    .line 94
    .line 95
    const/16 v2, 0x64

    .line 96
    .line 97
    if-ne p1, v2, :cond_5

    .line 98
    .line 99
    new-instance p1, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    if-eqz p2, :cond_4

    .line 105
    .line 106
    const-string/jumbo p2, "setup"

    .line 107
    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_4
    const-string p2, "clear"

    .line 111
    .line 112
    :goto_2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string p2, " bcb successfully finished."

    .line 116
    .line 117
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-static {v4, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->close()V

    .line 128
    .line 129
    .line 130
    const/4 p0, 0x1

    .line 131
    return p0

    .line 132
    :cond_5
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-static {v4, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->close()V

    .line 148
    .line 149
    .line 150
    return v3

    .line 151
    :goto_3
    :try_start_2
    const-string p2, "IOException when communicating with uncrypt:"

    .line 152
    .line 153
    invoke-static {v4, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->close()V

    .line 157
    .line 158
    .line 159
    return v3

    .line 160
    :goto_4
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->close()V

    .line 161
    .line 162
    .line 163
    throw p1
.end method

.method public final uncrypt(Ljava/lang/String;Landroid/os/IRecoverySystemProgressListener;)Z
    .locals 7

    .line 1
    const-string v0, "IOException when writing \""

    .line 2
    .line 3
    sget-object v1, Lcom/android/server/recoverysystem/RecoverySystemService;->sRequestLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    const-string v3, "android.permission.RECOVERY"

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService;->checkAndWaitForUncryptService()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x0

    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    const-string p0, "RecoverySystemService"

    .line 22
    .line 23
    const-string/jumbo p1, "uncrypt service is unavailable."

    .line 24
    .line 25
    .line 26
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    monitor-exit v1

    .line 30
    return v3

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto/16 :goto_6

    .line 33
    .line 34
    :cond_0
    iget-object v2, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    sget-object v2, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    :try_start_1
    iget-object v4, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    .line 45
    .line 46
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    new-instance v4, Ljava/io/FileWriter;

    .line 50
    .line 51
    invoke-direct {v4, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    .line 53
    .line 54
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string p1, "\n"

    .line 63
    .line 64
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {v4, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 72
    .line 73
    .line 74
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 75
    .line 76
    .line 77
    :try_start_4
    iget-object p1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    .line 78
    .line 79
    const-string v0, "ctl.start"

    .line 80
    .line 81
    const-string/jumbo v2, "uncrypt"

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iget-object p0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    .line 91
    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    invoke-static {}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->connectService()Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    if-nez p0, :cond_1

    .line 100
    .line 101
    const-string p0, "RecoverySystemService"

    .line 102
    .line 103
    const-string p1, "Failed to connect to uncrypt socket"

    .line 104
    .line 105
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 109
    return v3

    .line 110
    :cond_1
    const/high16 p1, -0x80000000

    .line 111
    .line 112
    move v0, p1

    .line 113
    :goto_0
    :try_start_5
    iget-object v2, p0, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->mInputStream:Ljava/io/DataInputStream;

    .line 114
    .line 115
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-ne v2, v0, :cond_2

    .line 120
    .line 121
    if-eq v0, p1, :cond_2

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_2
    if-ltz v2, :cond_5

    .line 125
    .line 126
    const/16 v0, 0x64

    .line 127
    .line 128
    if-gt v2, v0, :cond_5

    .line 129
    .line 130
    const-string v4, "RecoverySystemService"

    .line 131
    .line 132
    new-instance v5, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .line 136
    .line 137
    const-string/jumbo v6, "uncrypt read status: "

    .line 138
    .line 139
    .line 140
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 151
    .line 152
    .line 153
    if-eqz p2, :cond_3

    .line 154
    .line 155
    :try_start_6
    invoke-interface {p2, v2}, Landroid/os/IRecoverySystemProgressListener;->onProgress(I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 156
    .line 157
    .line 158
    goto :goto_1

    .line 159
    :catchall_1
    move-exception p1

    .line 160
    goto :goto_3

    .line 161
    :catch_0
    move-exception p1

    .line 162
    goto :goto_2

    .line 163
    :catch_1
    :try_start_7
    const-string v4, "RecoverySystemService"

    .line 164
    .line 165
    const-string v5, "RemoteException when posting progress"

    .line 166
    .line 167
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .line 169
    .line 170
    :cond_3
    :goto_1
    if-ne v2, v0, :cond_4

    .line 171
    .line 172
    const-string p1, "RecoverySystemService"

    .line 173
    .line 174
    const-string/jumbo p2, "uncrypt successfully finished."

    .line 175
    .line 176
    .line 177
    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    .line 179
    .line 180
    iget-object p1, p0, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->mOutputStream:Ljava/io/DataOutputStream;

    .line 181
    .line 182
    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 183
    .line 184
    .line 185
    :try_start_8
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->close()V

    .line 186
    .line 187
    .line 188
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 189
    const/4 p0, 0x1

    .line 190
    return p0

    .line 191
    :cond_4
    move v0, v2

    .line 192
    goto :goto_0

    .line 193
    :cond_5
    :try_start_9
    const-string p1, "RecoverySystemService"

    .line 194
    .line 195
    new-instance p2, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    .line 199
    .line 200
    const-string/jumbo v0, "uncrypt failed with status: "

    .line 201
    .line 202
    .line 203
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p2

    .line 213
    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .line 215
    .line 216
    iget-object p1, p0, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->mOutputStream:Ljava/io/DataOutputStream;

    .line 217
    .line 218
    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 219
    .line 220
    .line 221
    :try_start_a
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->close()V

    .line 222
    .line 223
    .line 224
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 225
    return v3

    .line 226
    :goto_2
    :try_start_b
    const-string p2, "RecoverySystemService"

    .line 227
    .line 228
    const-string v0, "IOException when reading status: "

    .line 229
    .line 230
    invoke-static {p2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 231
    .line 232
    .line 233
    :try_start_c
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->close()V

    .line 234
    .line 235
    .line 236
    monitor-exit v1

    .line 237
    return v3

    .line 238
    :goto_3
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->close()V

    .line 239
    .line 240
    .line 241
    throw p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 242
    :catch_2
    move-exception p1

    .line 243
    goto :goto_5

    .line 244
    :catchall_2
    move-exception p1

    .line 245
    :try_start_d
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 246
    .line 247
    .line 248
    goto :goto_4

    .line 249
    :catchall_3
    move-exception p2

    .line 250
    :try_start_e
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 251
    .line 252
    .line 253
    :goto_4
    throw p1
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 254
    :goto_5
    :try_start_f
    const-string p2, "RecoverySystemService"

    .line 255
    .line 256
    new-instance v2, Ljava/lang/StringBuilder;

    .line 257
    .line 258
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    iget-object p0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    .line 262
    .line 263
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 264
    .line 265
    .line 266
    sget-object p0, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    .line 267
    .line 268
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object p0

    .line 272
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    const-string p0, "\":"

    .line 276
    .line 277
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object p0

    .line 284
    invoke-static {p2, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 285
    .line 286
    .line 287
    monitor-exit v1

    .line 288
    return v3

    .line 289
    :goto_6
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 290
    throw p0
.end method
