.class public final Lcom/android/server/security/rkp/RemoteProvisioningShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final BIND_TIMEOUT:Ljava/time/Duration;


# instance fields
.field public final mCallerUid:I

.field public final mContext:Landroid/content/Context;

.field public final mInjector:Lcom/android/server/security/rkp/RemoteProvisioningShellCommand$Injector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-wide/16 v0, 0xa

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand;->BIND_TIMEOUT:Ljava/time/Duration;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand$Injector;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    iput p2, p0, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand;->mCallerUid:I

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand;->mInjector:Lcom/android/server/security/rkp/RemoteProvisioningShellCommand$Injector;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final certify()V
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-instance v8, Landroid/os/CancellationSignal;

    .line 12
    .line 13
    invoke-direct {v8}, Landroid/os/CancellationSignal;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v9, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand$OutcomeFuture;

    .line 17
    .line 18
    invoke-direct {v9}, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand$OutcomeFuture;-><init>()V

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand;->mInjector:Lcom/android/server/security/rkp/RemoteProvisioningShellCommand$Injector;

    .line 22
    .line 23
    iget-object v3, p0, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    iget v4, p0, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand;->mCallerUid:I

    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    sget-object v5, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent;->DESCRIPTOR:Ljava/lang/String;

    .line 36
    .line 37
    const-string v6, "/"

    .line 38
    .line 39
    invoke-static {v2, v5, v6, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    new-instance v10, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand$OutcomeFuture;

    .line 44
    .line 45
    invoke-direct {v10}, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand$OutcomeFuture;-><init>()V

    .line 46
    .line 47
    .line 48
    sget-object v5, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand;->BIND_TIMEOUT:Ljava/time/Duration;

    .line 49
    .line 50
    move-object v2, v3

    .line 51
    move v3, v4

    .line 52
    move-object v4, v0

    .line 53
    move-object v6, v1

    .line 54
    move-object v7, v10

    .line 55
    invoke-static/range {v2 .. v7}, Landroid/security/rkp/service/RegistrationProxy;->createAsync(Landroid/content/Context;ILjava/lang/String;Ljava/time/Duration;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, v10, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand$OutcomeFuture;->mFuture:Ljava/util/concurrent/CompletableFuture;

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Landroid/security/rkp/service/RegistrationProxy;

    .line 65
    .line 66
    const v2, 0x6e754

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v2, v8, v1, v9}, Landroid/security/rkp/service/RegistrationProxy;->getKeyAsync(ILandroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 70
    .line 71
    .line 72
    iget-object v0, v9, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand$OutcomeFuture;->mFuture:Ljava/util/concurrent/CompletableFuture;

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Landroid/security/rkp/service/RemotelyProvisionedKey;

    .line 79
    .line 80
    invoke-virtual {v0}, Landroid/security/rkp/service/RemotelyProvisionedKey;->getEncodedCertChain()[B

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 85
    .line 86
    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    const-string v0, "X.509"

    .line 94
    .line 95
    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-eqz v1, :cond_0

    .line 112
    .line 113
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    check-cast v1, Ljava/security/cert/Certificate;

    .line 118
    .line 119
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getEncoded()[B

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-virtual {v2, v1}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    const-string v2, "-----BEGIN CERTIFICATE-----"

    .line 132
    .line 133
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    const-string v2, "(.{64})"

    .line 137
    .line 138
    const-string v3, "$1\n"

    .line 139
    .line 140
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-virtual {v1}, Ljava/lang/String;->stripTrailing()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    const-string v1, "-----END CERTIFICATE-----"

    .line 152
    .line 153
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    goto :goto_0

    .line 157
    :cond_0
    return-void
.end method

.method public final csr()I
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [B

    .line 3
    .line 4
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    const/4 v3, -0x1

    .line 9
    if-eqz v2, :cond_1

    .line 10
    .line 11
    const-string v1, "--challenge"

    .line 12
    .line 13
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const-string v0, "error: unknown option "

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return v3

    .line 33
    :cond_0
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v1, v2}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    iget-object v4, p0, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand;->mInjector:Lcom/android/server/security/rkp/RemoteProvisioningShellCommand$Injector;

    .line 51
    .line 52
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    invoke-static {v2}, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand$Injector;->getIrpcBinder(Ljava/lang/String;)Landroid/hardware/security/keymint/IRemotelyProvisionedComponent;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    check-cast v2, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent$Stub$Proxy;

    .line 60
    .line 61
    invoke-virtual {v2}, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent$Stub$Proxy;->getHardwareInfo()Landroid/hardware/security/keymint/RpcHardwareInfo;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    new-array v5, v0, [Landroid/hardware/security/keymint/MacedPublicKey;

    .line 66
    .line 67
    iget v6, v4, Landroid/hardware/security/keymint/RpcHardwareInfo;->versionNumber:I

    .line 68
    .line 69
    const/4 v7, 0x3

    .line 70
    const/4 v8, 0x2

    .line 71
    const/4 v9, 0x1

    .line 72
    if-eq v6, v9, :cond_4

    .line 73
    .line 74
    if-eq v6, v8, :cond_4

    .line 75
    .line 76
    if-eq v6, v7, :cond_2

    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    const-string v1, "error: unsupported hwVersion: "

    .line 85
    .line 86
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget v1, v4, Landroid/hardware/security/keymint/RpcHardwareInfo;->versionNumber:I

    .line 90
    .line 91
    invoke-static {v0, v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 92
    .line 93
    .line 94
    return v3

    .line 95
    :cond_2
    iget-object v3, v2, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 96
    .line 97
    invoke-static {v3}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    :try_start_0
    sget-object v6, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent;->DESCRIPTOR:Ljava/lang/String;

    .line 106
    .line 107
    invoke-virtual {v3, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3, v5, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 114
    .line 115
    .line 116
    iget-object v1, v2, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 117
    .line 118
    const/4 v2, 0x4

    .line 119
    invoke-interface {v1, v2, v3, v4, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-eqz v1, :cond_3

    .line 124
    .line 125
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v4}, Landroid/os/Parcel;->createByteArray()[B

    .line 129
    .line 130
    .line 131
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 136
    .line 137
    .line 138
    goto/16 :goto_4

    .line 139
    .line 140
    :catchall_0
    move-exception p0

    .line 141
    goto :goto_1

    .line 142
    :cond_3
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    .line 143
    .line 144
    const-string v0, "Method generateCertificateRequestV2 is unimplemented."

    .line 145
    .line 146
    invoke-direct {p0, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    :goto_1
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 154
    .line 155
    .line 156
    throw p0

    .line 157
    :cond_4
    new-instance v3, Landroid/hardware/security/keymint/DeviceInfo;

    .line 158
    .line 159
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 160
    .line 161
    .line 162
    new-instance v6, Landroid/hardware/security/keymint/ProtectedData;

    .line 163
    .line 164
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 165
    .line 166
    .line 167
    iget v4, v4, Landroid/hardware/security/keymint/RpcHardwareInfo;->supportedEekCurve:I

    .line 168
    .line 169
    if-eq v4, v9, :cond_6

    .line 170
    .line 171
    if-ne v4, v8, :cond_5

    .line 172
    .line 173
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    const-string v8, "goRDoQEnoFgqpAEBAycgBiFYIJm57t1e5FL2hcZMYtw+YatXSH11NymtdoAy0rPLY1jZWEAeIghLpLekyNdOAw7+uK8UTKc7b6XN3Np5xitk/pk5r3bngPpmAIUNB5gqrJFcpyUUSQY0dcqKJ3rZ41pJ6wIDhEOhASegWE6lAQECWCDQrsEVyirPc65rzMvRlh1l6LHd10oaN7lDOpfVmd+YCAM4GCAEIVggvoXnRsSjQlpA2TY6phXQLFh+PdwzAjLS/F4ehyVfcmBYQJvPkOIuS6vRGLEOjl0gJ0uEWP78MpB+cgWDvNeCvvpkeC1UEEvAMb9r6B414vAtzmwvT/L1T6XUg62WovGHWAQ="

    .line 178
    .line 179
    invoke-virtual {v4, v8}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    .line 180
    .line 181
    .line 182
    move-result-object v4

    .line 183
    goto :goto_2

    .line 184
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 185
    .line 186
    const-string/jumbo v0, "unsupported EEK curve: "

    .line 187
    .line 188
    .line 189
    invoke-static {v4, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    throw p0

    .line 197
    :cond_6
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    .line 198
    .line 199
    .line 200
    move-result-object v4

    .line 201
    const-string v8, "goRDoQEmoFhNpQECAyYgASFYIPcUituX9MxT79JkEcTjdR9mH6RxDGzP+glGgHSHVPKtIlggXn9b9uzk9hnM/xM3/Q+hyJPbGAZ2xF3m12p3hsMtr49YQC+XjkL7vgctlUeFR5NAsB/Um0ekxESp8qEHhxDHn8sR9L+f6Dvg5zRMFfx7w34zBfTRNDztAgRgehXgedOK/ySEQ6EBJqBYcaYBAgJYIDVztz+gioCJsSZn6ct8daGvAmH8bmUDkTvTS30UlD5GAzgYIAEhWCDgQc8vDzQPHDMsQbDP1wwwVTXSHmpHE0su0UiWfiScaCJYIB/ORcX7YbqBIfnlBZubOQ52hoZHuB4vRfHOr9o/gGjbWECMs7p+ID4ysGjfYNEdffCsOI5RvP9s4Wc7Snm8Vnizmdh8igfY2rW1f3H02GvfMyc0e2XRKuuGmZirOrSAqr1Q"

    .line 202
    .line 203
    invoke-virtual {v4, v8}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    :goto_2
    iget-object v8, v2, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 208
    .line 209
    invoke-static {v8}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 210
    .line 211
    .line 212
    move-result-object v8

    .line 213
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 214
    .line 215
    .line 216
    move-result-object v9

    .line 217
    :try_start_2
    sget-object v10, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent;->DESCRIPTOR:Ljava/lang/String;

    .line 218
    .line 219
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v8, v5, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v8, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 232
    .line 233
    .line 234
    iget-object v2, v2, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 235
    .line 236
    invoke-interface {v2, v7, v8, v9, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 237
    .line 238
    .line 239
    move-result v2

    .line 240
    if-eqz v2, :cond_a

    .line 241
    .line 242
    invoke-virtual {v9}, Landroid/os/Parcel;->readException()V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v9}, Landroid/os/Parcel;->createByteArray()[B

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    .line 250
    .line 251
    .line 252
    move-result v4

    .line 253
    if-eqz v4, :cond_7

    .line 254
    .line 255
    invoke-virtual {v3, v9}, Landroid/hardware/security/keymint/DeviceInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 256
    .line 257
    .line 258
    goto :goto_3

    .line 259
    :catchall_1
    move-exception p0

    .line 260
    goto/16 :goto_5

    .line 261
    .line 262
    :cond_7
    :goto_3
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    .line 263
    .line 264
    .line 265
    move-result v4

    .line 266
    if-eqz v4, :cond_8

    .line 267
    .line 268
    invoke-virtual {v6, v9}, Landroid/hardware/security/keymint/ProtectedData;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 269
    .line 270
    .line 271
    :cond_8
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    .line 275
    .line 276
    .line 277
    new-instance v4, Lco/nstant/in/cbor/model/Array;

    .line 278
    .line 279
    invoke-direct {v4}, Lco/nstant/in/cbor/model/Array;-><init>()V

    .line 280
    .line 281
    .line 282
    iget-object v3, v3, Landroid/hardware/security/keymint/DeviceInfo;->deviceInfo:[B

    .line 283
    .line 284
    new-instance v5, Ljava/io/ByteArrayInputStream;

    .line 285
    .line 286
    invoke-direct {v5, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 287
    .line 288
    .line 289
    new-instance v3, Lco/nstant/in/cbor/CborDecoder;

    .line 290
    .line 291
    invoke-direct {v3, v5}, Lco/nstant/in/cbor/CborDecoder;-><init>(Ljava/io/InputStream;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v3}, Lco/nstant/in/cbor/CborDecoder;->decodeNext()Lco/nstant/in/cbor/model/DataItem;

    .line 295
    .line 296
    .line 297
    move-result-object v3

    .line 298
    iget-object v5, v4, Lco/nstant/in/cbor/model/Array;->objects:Ljava/util/ArrayList;

    .line 299
    .line 300
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    new-instance v3, Lco/nstant/in/cbor/model/Map;

    .line 304
    .line 305
    invoke-direct {v3}, Lco/nstant/in/cbor/model/Map;-><init>()V

    .line 306
    .line 307
    .line 308
    iget-object v5, v4, Lco/nstant/in/cbor/model/Array;->objects:Ljava/util/ArrayList;

    .line 309
    .line 310
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    new-instance v3, Lco/nstant/in/cbor/model/Array;

    .line 314
    .line 315
    invoke-direct {v3}, Lco/nstant/in/cbor/model/Array;-><init>()V

    .line 316
    .line 317
    .line 318
    new-instance v5, Lco/nstant/in/cbor/model/ByteString;

    .line 319
    .line 320
    new-instance v7, Lco/nstant/in/cbor/model/Map;

    .line 321
    .line 322
    invoke-direct {v7}, Lco/nstant/in/cbor/model/Map;-><init>()V

    .line 323
    .line 324
    .line 325
    new-instance v8, Lco/nstant/in/cbor/model/UnsignedInteger;

    .line 326
    .line 327
    const-wide/16 v9, 0x1

    .line 328
    .line 329
    invoke-direct {v8, v9, v10}, Lco/nstant/in/cbor/model/UnsignedInteger;-><init>(J)V

    .line 330
    .line 331
    .line 332
    new-instance v9, Lco/nstant/in/cbor/model/UnsignedInteger;

    .line 333
    .line 334
    const-wide/16 v10, 0x5

    .line 335
    .line 336
    invoke-direct {v9, v10, v11}, Lco/nstant/in/cbor/model/UnsignedInteger;-><init>(J)V

    .line 337
    .line 338
    .line 339
    iget-object v10, v7, Lco/nstant/in/cbor/model/Map;->map:Ljava/util/HashMap;

    .line 340
    .line 341
    invoke-virtual {v10, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v9

    .line 345
    if-nez v9, :cond_9

    .line 346
    .line 347
    iget-object v9, v7, Lco/nstant/in/cbor/model/Map;->keys:Ljava/util/List;

    .line 348
    .line 349
    check-cast v9, Ljava/util/LinkedList;

    .line 350
    .line 351
    invoke-virtual {v9, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 352
    .line 353
    .line 354
    :cond_9
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    .line 355
    .line 356
    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 357
    .line 358
    .line 359
    new-instance v9, Lco/nstant/in/cbor/CborEncoder;

    .line 360
    .line 361
    invoke-direct {v9, v8}, Lco/nstant/in/cbor/CborEncoder;-><init>(Ljava/io/OutputStream;)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v9, v7}, Lco/nstant/in/cbor/CborEncoder;->encode(Lco/nstant/in/cbor/model/DataItem;)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 368
    .line 369
    .line 370
    move-result-object v7

    .line 371
    invoke-direct {v5, v7}, Lco/nstant/in/cbor/model/ByteString;-><init>([B)V

    .line 372
    .line 373
    .line 374
    iget-object v7, v3, Lco/nstant/in/cbor/model/Array;->objects:Ljava/util/ArrayList;

    .line 375
    .line 376
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    .line 378
    .line 379
    new-instance v5, Lco/nstant/in/cbor/model/Map;

    .line 380
    .line 381
    invoke-direct {v5}, Lco/nstant/in/cbor/model/Map;-><init>()V

    .line 382
    .line 383
    .line 384
    iget-object v7, v3, Lco/nstant/in/cbor/model/Array;->objects:Ljava/util/ArrayList;

    .line 385
    .line 386
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    .line 388
    .line 389
    sget-object v5, Lco/nstant/in/cbor/model/SimpleValue;->NULL:Lco/nstant/in/cbor/model/SimpleValue;

    .line 390
    .line 391
    iget-object v7, v3, Lco/nstant/in/cbor/model/Array;->objects:Ljava/util/ArrayList;

    .line 392
    .line 393
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    .line 395
    .line 396
    new-instance v5, Lco/nstant/in/cbor/model/ByteString;

    .line 397
    .line 398
    invoke-direct {v5, v2}, Lco/nstant/in/cbor/model/ByteString;-><init>([B)V

    .line 399
    .line 400
    .line 401
    iget-object v2, v3, Lco/nstant/in/cbor/model/Array;->objects:Ljava/util/ArrayList;

    .line 402
    .line 403
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    .line 405
    .line 406
    new-instance v2, Lco/nstant/in/cbor/model/Array;

    .line 407
    .line 408
    invoke-direct {v2}, Lco/nstant/in/cbor/model/Array;-><init>()V

    .line 409
    .line 410
    .line 411
    iget-object v5, v2, Lco/nstant/in/cbor/model/Array;->objects:Ljava/util/ArrayList;

    .line 412
    .line 413
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    .line 415
    .line 416
    new-instance v4, Lco/nstant/in/cbor/model/ByteString;

    .line 417
    .line 418
    invoke-direct {v4, v1}, Lco/nstant/in/cbor/model/ByteString;-><init>([B)V

    .line 419
    .line 420
    .line 421
    iget-object v1, v2, Lco/nstant/in/cbor/model/Array;->objects:Ljava/util/ArrayList;

    .line 422
    .line 423
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    .line 425
    .line 426
    iget-object v1, v6, Landroid/hardware/security/keymint/ProtectedData;->protectedData:[B

    .line 427
    .line 428
    new-instance v4, Ljava/io/ByteArrayInputStream;

    .line 429
    .line 430
    invoke-direct {v4, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 431
    .line 432
    .line 433
    new-instance v1, Lco/nstant/in/cbor/CborDecoder;

    .line 434
    .line 435
    invoke-direct {v1, v4}, Lco/nstant/in/cbor/CborDecoder;-><init>(Ljava/io/InputStream;)V

    .line 436
    .line 437
    .line 438
    invoke-virtual {v1}, Lco/nstant/in/cbor/CborDecoder;->decodeNext()Lco/nstant/in/cbor/model/DataItem;

    .line 439
    .line 440
    .line 441
    move-result-object v1

    .line 442
    iget-object v4, v2, Lco/nstant/in/cbor/model/Array;->objects:Ljava/util/ArrayList;

    .line 443
    .line 444
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    .line 446
    .line 447
    iget-object v1, v2, Lco/nstant/in/cbor/model/Array;->objects:Ljava/util/ArrayList;

    .line 448
    .line 449
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    .line 451
    .line 452
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 453
    .line 454
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 455
    .line 456
    .line 457
    new-instance v3, Lco/nstant/in/cbor/CborEncoder;

    .line 458
    .line 459
    invoke-direct {v3, v1}, Lco/nstant/in/cbor/CborEncoder;-><init>(Ljava/io/OutputStream;)V

    .line 460
    .line 461
    .line 462
    invoke-virtual {v3, v2}, Lco/nstant/in/cbor/CborEncoder;->encode(Lco/nstant/in/cbor/model/DataItem;)V

    .line 463
    .line 464
    .line 465
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 466
    .line 467
    .line 468
    move-result-object v1

    .line 469
    :goto_4
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 470
    .line 471
    .line 472
    move-result-object p0

    .line 473
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    .line 474
    .line 475
    .line 476
    move-result-object v2

    .line 477
    invoke-virtual {v2, v1}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v1

    .line 481
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 482
    .line 483
    .line 484
    return v0

    .line 485
    :cond_a
    :try_start_3
    new-instance p0, Landroid/os/RemoteException;

    .line 486
    .line 487
    const-string v0, "Method generateCertificateRequest is unimplemented."

    .line 488
    .line 489
    invoke-direct {p0, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 490
    .line 491
    .line 492
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 493
    :goto_5
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 494
    .line 495
    .line 496
    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    .line 497
    .line 498
    .line 499
    throw p0
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 7

    .line 1
    :try_start_0
    new-instance v0, Landroid/util/IndentingPrintWriter;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand;->mInjector:Lcom/android/server/security/rkp/RemoteProvisioningShellCommand$Injector;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    sget-object v1, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent;->DESCRIPTOR:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v1}, Landroid/os/ServiceManager;->getDeclaredInstances(Ljava/lang/String;)[Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    array-length v2, v1

    .line 18
    const/4 v3, 0x0

    .line 19
    :goto_0
    if-ge v3, v2, :cond_0

    .line 20
    .line 21
    aget-object v4, v1, v3

    .line 22
    .line 23
    new-instance v5, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v6, ":"

    .line 32
    .line 33
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-virtual {v0, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v0, v4}, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand;->dumpRpcInstance(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    add-int/lit8 v3, v3, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catch_0
    move-exception p0

    .line 56
    invoke-virtual {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 57
    .line 58
    .line 59
    :cond_0
    return-void
.end method

.method public final dumpRpcInstance(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand;->mInjector:Lcom/android/server/security/rkp/RemoteProvisioningShellCommand$Injector;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand$Injector;->getIrpcBinder(Ljava/lang/String;)Landroid/hardware/security/keymint/IRemotelyProvisionedComponent;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent$Stub$Proxy;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent$Stub$Proxy;->getHardwareInfo()Landroid/hardware/security/keymint/RpcHardwareInfo;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    new-instance p2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v0, "hwVersion="

    .line 19
    .line 20
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget v0, p0, Landroid/hardware/security/keymint/RpcHardwareInfo;->versionNumber:I

    .line 24
    .line 25
    const-string/jumbo v1, "rpcAuthorName="

    .line 26
    .line 27
    .line 28
    invoke-static {p2, v0, p1, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    iget-object v0, p0, Landroid/hardware/security/keymint/RpcHardwareInfo;->rpcAuthorName:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {p2, v0, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 35
    .line 36
    .line 37
    iget p2, p0, Landroid/hardware/security/keymint/RpcHardwareInfo;->versionNumber:I

    .line 38
    .line 39
    const/4 v0, 0x3

    .line 40
    if-ge p2, v0, :cond_0

    .line 41
    .line 42
    new-instance p2, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string/jumbo v1, "supportedEekCurve="

    .line 45
    .line 46
    .line 47
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget v1, p0, Landroid/hardware/security/keymint/RpcHardwareInfo;->supportedEekCurve:I

    .line 51
    .line 52
    invoke-static {p2, v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string/jumbo v1, "uniqueId="

    .line 58
    .line 59
    .line 60
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Landroid/hardware/security/keymint/RpcHardwareInfo;->uniqueId:Ljava/lang/String;

    .line 64
    .line 65
    invoke-static {p2, v1, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 66
    .line 67
    .line 68
    iget p2, p0, Landroid/hardware/security/keymint/RpcHardwareInfo;->versionNumber:I

    .line 69
    .line 70
    if-lt p2, v0, :cond_1

    .line 71
    .line 72
    new-instance p2, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string/jumbo v0, "supportedNumKeysInCsr="

    .line 75
    .line 76
    .line 77
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iget p0, p0, Landroid/hardware/security/keymint/RpcHardwareInfo;->supportedNumKeysInCsr:I

    .line 81
    .line 82
    invoke-static {p2, p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 83
    .line 84
    .line 85
    :cond_1
    return-void
.end method

.method public final onCommand(Ljava/lang/String;)I
    .locals 6

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0

    .line 8
    :cond_0
    const/4 v0, -0x1

    .line 9
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x1

    .line 14
    const v3, 0x18202

    .line 15
    .line 16
    .line 17
    const/4 v4, 0x2

    .line 18
    const/4 v5, 0x0

    .line 19
    if-eq v1, v3, :cond_3

    .line 20
    .line 21
    const v3, 0x32b09e

    .line 22
    .line 23
    .line 24
    if-eq v1, v3, :cond_2

    .line 25
    .line 26
    const v3, 0x27df2a58

    .line 27
    .line 28
    .line 29
    if-eq v1, v3, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const-string v1, "certify"

    .line 33
    .line 34
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_4

    .line 39
    .line 40
    move v1, v4

    .line 41
    goto :goto_1

    .line 42
    :catch_0
    move-exception p1

    .line 43
    goto :goto_3

    .line 44
    :cond_2
    const-string v1, "list"

    .line 45
    .line 46
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_4

    .line 51
    .line 52
    move v1, v5

    .line 53
    goto :goto_1

    .line 54
    :cond_3
    const-string v1, "csr"

    .line 55
    .line 56
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_4

    .line 61
    .line 62
    move v1, v2

    .line 63
    goto :goto_1

    .line 64
    :cond_4
    :goto_0
    move v1, v0

    .line 65
    :goto_1
    if-eqz v1, :cond_7

    .line 66
    .line 67
    if-eq v1, v2, :cond_6

    .line 68
    .line 69
    if-eq v1, v4, :cond_5

    .line 70
    .line 71
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    return p0

    .line 76
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand;->certify()V

    .line 77
    .line 78
    .line 79
    return v5

    .line 80
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand;->csr()I

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    return p0

    .line 85
    :cond_7
    iget-object p1, p0, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand;->mInjector:Lcom/android/server/security/rkp/RemoteProvisioningShellCommand$Injector;

    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    sget-object p1, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent;->DESCRIPTOR:Ljava/lang/String;

    .line 91
    .line 92
    invoke-static {p1}, Landroid/os/ServiceManager;->getDeclaredInstances(Ljava/lang/String;)[Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    array-length v1, p1

    .line 97
    move v2, v5

    .line 98
    :goto_2
    if-ge v2, v1, :cond_8

    .line 99
    .line 100
    aget-object v3, p1, v2

    .line 101
    .line 102
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .line 108
    .line 109
    add-int/lit8 v2, v2, 0x1

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_8
    return v5

    .line 113
    :goto_3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    invoke-virtual {p1, p0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 118
    .line 119
    .line 120
    return v0
.end method

.method public final onHelp()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string/jumbo v0, "usage: cmd remote_provisioning SUBCOMMAND [ARGS]\nhelp\n  Show this message.\ndump\n  Dump service diagnostics.\nlist\n  List the names of the IRemotelyProvisionedComponent instances.\ncsr [--challenge CHALLENGE] NAME\n  Generate and print a base64-encoded CSR from the named\n  IRemotelyProvisionedComponent. A base64-encoded challenge can be provided,\n  or else it defaults to an empty challenge.\ncertify NAME\n  Output the PEM-encoded certificate chain provisioned for the named\n  IRemotelyProvisionedComponent.\n"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
