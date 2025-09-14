.class Lcom/android/server/adb/AdbDebuggingManager$PairingThread;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/net/nsd/NsdManager$RegistrationListener;


# static fields
.field static final SERVICE_PROTOCOL:Ljava/lang/String; = "adb-tls-pairing"


# instance fields
.field public final mGuid:Ljava/lang/String;

.field public final mNsdManager:Landroid/net/nsd/NsdManager;

.field public final mPairingCode:Ljava/lang/String;

.field public mPort:I

.field public final mPublicKey:Ljava/lang/String;

.field public final mServiceName:Ljava/lang/String;

.field public final mServiceType:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/adb/AdbDebuggingManager;


# direct methods
.method public constructor <init>(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 2
    .line 3
    sget-object v0, Lcom/android/server/adb/AdbDebuggingManager;->SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    const-string v0, "AdbDebuggingManager"

    .line 6
    .line 7
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "_adb-tls-pairing._tcp."

    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->mServiceType:Ljava/lang/String;

    .line 13
    .line 14
    const-string v0, ""

    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->mPublicKey:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p2, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->mPairingCode:Ljava/lang/String;

    .line 19
    .line 20
    const-string/jumbo p2, "persist.adb.wifi.guid"

    .line 21
    .line 22
    .line 23
    invoke-static {p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    iput-object p2, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->mGuid:Ljava/lang/String;

    .line 28
    .line 29
    iput-object p3, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->mServiceName:Ljava/lang/String;

    .line 30
    .line 31
    if-eqz p3, :cond_0

    .line 32
    .line 33
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result p3

    .line 37
    if-eqz p3, :cond_1

    .line 38
    .line 39
    :cond_0
    iput-object p2, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->mServiceName:Ljava/lang/String;

    .line 40
    .line 41
    :cond_1
    const/4 p2, -0x1

    .line 42
    iput p2, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->mPort:I

    .line 43
    .line 44
    iget-object p1, p1, Lcom/android/server/adb/AdbDebuggingManager;->mContext:Landroid/content/Context;

    .line 45
    .line 46
    const-string/jumbo p2, "servicediscovery"

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Landroid/net/nsd/NsdManager;

    .line 54
    .line 55
    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->mNsdManager:Landroid/net/nsd/NsdManager;

    .line 56
    .line 57
    return-void
.end method

.method private native native_pairing_cancel()V
.end method

.method private native native_pairing_start(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native native_pairing_wait()Z
.end method


# virtual methods
.method public final cancelPairing()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->native_pairing_cancel()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onRegistrationFailed(Landroid/net/nsd/NsdServiceInfo;I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/adb/AdbDebuggingManager;->SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v1, "Failed to register pairing service(err="

    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string p2, "): "

    .line 14
    .line 15
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string p2, "AdbDebuggingManager"

    .line 26
    .line 27
    invoke-static {p2, p1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->native_pairing_cancel()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final onServiceRegistered(Landroid/net/nsd/NsdServiceInfo;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onServiceUnregistered(Landroid/net/nsd/NsdServiceInfo;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onUnregistrationFailed(Landroid/net/nsd/NsdServiceInfo;I)V
    .locals 1

    .line 1
    sget-object p0, Lcom/android/server/adb/AdbDebuggingManager;->SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v0, "Failed to unregister pairing service(err="

    .line 6
    .line 7
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string p2, "): "

    .line 14
    .line 15
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const-string p1, "AdbDebuggingManager"

    .line 26
    .line 27
    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final run()V
    .locals 4

    .line 1
    new-instance v0, Landroid/net/nsd/NsdServiceInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/net/nsd/NsdServiceInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->mServiceName:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/net/nsd/NsdServiceInfo;->setServiceName(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->mServiceType:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/net/nsd/NsdServiceInfo;->setServiceType(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget v1, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->mPort:I

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/net/nsd/NsdServiceInfo;->setPort(I)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->mNsdManager:Landroid/net/nsd/NsdManager;

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    invoke-virtual {v1, v0, v2, p0}, Landroid/net/nsd/NsdManager;->registerService(Landroid/net/nsd/NsdServiceInfo;ILandroid/net/nsd/NsdManager$RegistrationListener;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    .line 30
    .line 31
    const/16 v1, 0x15

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget v1, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->mPort:I

    .line 38
    .line 39
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 46
    .line 47
    iget-object v1, v1, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    .line 48
    .line 49
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 50
    .line 51
    .line 52
    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->native_pairing_wait()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->mPublicKey:Ljava/lang/String;

    .line 57
    .line 58
    const-string v2, "AdbDebuggingManager"

    .line 59
    .line 60
    if-eqz v1, :cond_0

    .line 61
    .line 62
    sget-object v1, Lcom/android/server/adb/AdbDebuggingManager;->SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda0;

    .line 63
    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v3, "Pairing succeeded key="

    .line 67
    .line 68
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object v3, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->mPublicKey:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-static {v2, v1}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_0
    sget-object v1, Lcom/android/server/adb/AdbDebuggingManager;->SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda0;

    .line 85
    .line 86
    const-string v1, "Pairing failed"

    .line 87
    .line 88
    invoke-static {v2, v1}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    :goto_0
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->mNsdManager:Landroid/net/nsd/NsdManager;

    .line 92
    .line 93
    invoke-virtual {v1, p0}, Landroid/net/nsd/NsdManager;->unregisterService(Landroid/net/nsd/NsdManager$RegistrationListener;)V

    .line 94
    .line 95
    .line 96
    new-instance v1, Landroid/os/Bundle;

    .line 97
    .line 98
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 99
    .line 100
    .line 101
    if-eqz v0, :cond_1

    .line 102
    .line 103
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->mPublicKey:Ljava/lang/String;

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_1
    const/4 v0, 0x0

    .line 107
    :goto_1
    const-string/jumbo v2, "publicKey"

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 114
    .line 115
    iget-object v0, v0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    .line 116
    .line 117
    const/16 v2, 0x14

    .line 118
    .line 119
    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 124
    .line 125
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    .line 126
    .line 127
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 128
    .line 129
    .line 130
    return-void
.end method

.method public final start()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->mGuid:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "AdbDebuggingManager"

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object p0, Lcom/android/server/adb/AdbDebuggingManager;->SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda0;

    .line 12
    .line 13
    const-string p0, "adbwifi guid was not set"

    .line 14
    .line 15
    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->mGuid:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->mPairingCode:Ljava/lang/String;

    .line 22
    .line 23
    invoke-direct {p0, v0, v2}, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->native_pairing_start(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iput v0, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->mPort:I

    .line 28
    .line 29
    if-gtz v0, :cond_1

    .line 30
    .line 31
    sget-object p0, Lcom/android/server/adb/AdbDebuggingManager;->SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda0;

    .line 32
    .line 33
    const-string p0, "Unable to start pairing server"

    .line 34
    .line 35
    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    invoke-super {p0}, Ljava/lang/Thread;->start()V

    .line 40
    .line 41
    .line 42
    return-void
.end method
