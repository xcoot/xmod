.class public final Lcom/android/server/recoverysystem/RecoverySystemService$Injector;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mPrefs:Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    new-instance v0, Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->mPrefs:Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;

    .line 12
    .line 13
    return-void
.end method

.method public static connectService()Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;
    .locals 7

    .line 1
    new-instance v0, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/net/LocalSocket;

    .line 7
    .line 8
    invoke-direct {v1}, Landroid/net/LocalSocket;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v1, v0, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->mLocalSocket:Landroid/net/LocalSocket;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    const/16 v2, 0x1e

    .line 15
    .line 16
    const-string v3, "RecoverySystemService"

    .line 17
    .line 18
    if-ge v1, v2, :cond_0

    .line 19
    .line 20
    :try_start_0
    iget-object v2, v0, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->mLocalSocket:Landroid/net/LocalSocket;

    .line 21
    .line 22
    new-instance v4, Landroid/net/LocalSocketAddress;

    .line 23
    .line 24
    const-string/jumbo v5, "uncrypt"

    .line 25
    .line 26
    .line 27
    sget-object v6, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    .line 28
    .line 29
    invoke-direct {v4, v5, v6}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v4}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 33
    .line 34
    .line 35
    :try_start_1
    new-instance v1, Ljava/io/DataInputStream;

    .line 36
    .line 37
    iget-object v2, v0, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->mLocalSocket:Landroid/net/LocalSocket;

    .line 38
    .line 39
    invoke-virtual {v2}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 44
    .line 45
    .line 46
    iput-object v1, v0, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->mInputStream:Ljava/io/DataInputStream;

    .line 47
    .line 48
    new-instance v1, Ljava/io/DataOutputStream;

    .line 49
    .line 50
    iget-object v2, v0, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->mLocalSocket:Landroid/net/LocalSocket;

    .line 51
    .line 52
    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 57
    .line 58
    .line 59
    iput-object v1, v0, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->mOutputStream:Ljava/io/DataOutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 60
    .line 61
    return-object v0

    .line 62
    :catch_0
    invoke-virtual {v0}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->close()V

    .line 63
    .line 64
    .line 65
    goto :goto_2

    .line 66
    :catch_1
    const-wide/16 v4, 0x3e8

    .line 67
    .line 68
    :try_start_2
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :catch_2
    move-exception v2

    .line 73
    const-string v4, "Interrupted:"

    .line 74
    .line 75
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    .line 77
    .line 78
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_0
    const-string v1, "Timed out connecting to uncrypt socket"

    .line 82
    .line 83
    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->close()V

    .line 87
    .line 88
    .line 89
    :goto_2
    invoke-virtual {v0}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->close()V

    .line 90
    .line 91
    .line 92
    const/4 v0, 0x0

    .line 93
    return-object v0
.end method

.method public static getBootControl()Landroid/hardware/boot/IBootControl;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Landroid/hardware/boot/IBootControl;->DESCRIPTOR:Ljava/lang/String;

    .line 7
    .line 8
    const-string v2, "/default"

    .line 9
    .line 10
    invoke-static {v0, v1, v2}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const-string v3, "RecoverySystemService"

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v5, "AIDL version of BootControl HAL present, using instance "

    .line 26
    .line 27
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    sget v2, Landroid/hardware/boot/IBootControl$Stub;->$r8$clinit:I

    .line 45
    .line 46
    if-nez v0, :cond_0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    invoke-interface {v0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    if-eqz v1, :cond_1

    .line 54
    .line 55
    instance-of v2, v1, Landroid/hardware/boot/IBootControl;

    .line 56
    .line 57
    if-eqz v2, :cond_1

    .line 58
    .line 59
    move-object v4, v1

    .line 60
    check-cast v4, Landroid/hardware/boot/IBootControl;

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    new-instance v4, Landroid/hardware/boot/IBootControl$Stub$Proxy;

    .line 64
    .line 65
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 66
    .line 67
    .line 68
    iput-object v0, v4, Landroid/hardware/boot/IBootControl$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 69
    .line 70
    :goto_0
    return-object v4

    .line 71
    :cond_2
    invoke-static {}, Landroid/hardware/boot/V1_0/IBootControl;->getService()Landroid/hardware/boot/V1_0/IBootControl;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    if-nez v0, :cond_4

    .line 76
    .line 77
    :catch_0
    :cond_3
    :goto_1
    move-object v5, v4

    .line 78
    goto :goto_2

    .line 79
    :cond_4
    invoke-interface {v0}, Landroid/os/IHwInterface;->asBinder()Landroid/os/IHwBinder;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    if-nez v1, :cond_5

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_5
    const-string v2, "android.hardware.boot@1.1::IBootControl"

    .line 87
    .line 88
    invoke-interface {v1, v2}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    if-eqz v5, :cond_6

    .line 93
    .line 94
    instance-of v6, v5, Landroid/hardware/boot/V1_1/IBootControl;

    .line 95
    .line 96
    if-eqz v6, :cond_6

    .line 97
    .line 98
    check-cast v5, Landroid/hardware/boot/V1_1/IBootControl;

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_6
    new-instance v5, Landroid/hardware/boot/V1_1/IBootControl$Proxy;

    .line 102
    .line 103
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 104
    .line 105
    .line 106
    iput-object v1, v5, Landroid/hardware/boot/V1_1/IBootControl$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 107
    .line 108
    :try_start_0
    invoke-virtual {v5}, Landroid/hardware/boot/V1_1/IBootControl$Proxy;->interfaceChain()Ljava/util/ArrayList;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 117
    .line 118
    .line 119
    move-result v6

    .line 120
    if-eqz v6, :cond_3

    .line 121
    .line 122
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v6

    .line 126
    check-cast v6, Ljava/lang/String;

    .line 127
    .line 128
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    if-eqz v6, :cond_7

    .line 133
    .line 134
    :goto_2
    if-nez v0, :cond_8

    .line 135
    .line 136
    move-object v1, v4

    .line 137
    goto :goto_3

    .line 138
    :cond_8
    invoke-interface {v0}, Landroid/os/IHwInterface;->asBinder()Landroid/os/IHwBinder;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-static {v1}, Landroid/hardware/boot/V1_2/IBootControl$Proxy;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/boot/V1_2/IBootControl$Proxy;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    :goto_3
    new-instance v2, Lcom/android/server/recoverysystem/hal/BootControlHIDL;

    .line 147
    .line 148
    invoke-direct {v2, v0, v5, v1}, Lcom/android/server/recoverysystem/hal/BootControlHIDL;-><init>(Landroid/hardware/boot/V1_0/IBootControl;Landroid/hardware/boot/V1_1/IBootControl;Landroid/hardware/boot/V1_2/IBootControl$Proxy;)V

    .line 149
    .line 150
    .line 151
    :try_start_1
    invoke-static {}, Landroid/hardware/boot/V1_0/IBootControl;->getService()Landroid/hardware/boot/V1_0/IBootControl;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_2

    .line 152
    .line 153
    .line 154
    :try_start_2
    const-string v0, "android.hardware.boot@1.2::IBootControl"

    .line 155
    .line 156
    const-string v1, "default"

    .line 157
    .line 158
    const/4 v5, 0x1

    .line 159
    invoke-static {v0, v1, v5}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/IHwBinder;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-static {v0}, Landroid/hardware/boot/V1_2/IBootControl$Proxy;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/boot/V1_2/IBootControl$Proxy;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_1

    .line 164
    .line 165
    .line 166
    return-object v2

    .line 167
    :catch_1
    const-string v0, "Device doesn\'t implement boot control HAL V1_2."

    .line 168
    .line 169
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .line 171
    .line 172
    return-object v4

    .line 173
    :catch_2
    const-string v0, "Neither AIDL nor HIDL version of the BootControl HAL is present."

    .line 174
    .line 175
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    .line 177
    .line 178
    return-object v4
.end method


# virtual methods
.method public final getUidFromPackageName(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    return p0

    .line 13
    :catch_0
    const-string p0, "Failed to find uid for "

    .line 14
    .line 15
    const-string v0, "RecoverySystemService"

    .line 16
    .line 17
    invoke-static {p0, p1, v0}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 p0, -0x1

    .line 21
    return p0
.end method
