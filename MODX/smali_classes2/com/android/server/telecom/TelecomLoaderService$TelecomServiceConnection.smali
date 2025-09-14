.class public final Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/server/telecom/TelecomLoaderService;


# direct methods
.method public constructor <init>(Lcom/android/server/telecom/TelecomLoaderService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    .line 1
    :try_start_0
    invoke-static {p2}, Lcom/android/internal/telecom/ITelecomLoader$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/ITelecomLoader;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    .line 6
    .line 7
    iget-object p2, p2, Lcom/android/server/telecom/TelecomLoaderService;->mServiceRepo:Lcom/android/server/telecom/InternalServiceRepository;

    .line 8
    .line 9
    invoke-interface {p1, p2}, Lcom/android/internal/telecom/ITelecomLoader;->createTelecomService(Lcom/android/internal/telecom/IInternalServiceRetriever;)Lcom/android/internal/telecom/ITelecomService;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object p2, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    .line 14
    .line 15
    iget-object p2, p2, Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-static {p2, v0}, Lcom/android/internal/telephony/SmsApplication;->getDefaultMmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    .line 19
    .line 20
    .line 21
    const-string/jumbo p2, "telecom"

    .line 22
    .line 23
    .line 24
    invoke-interface {p1}, Lcom/android/internal/telecom/ITelecomService;->asBinder()Landroid/os/IBinder;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p2, p1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    .line 32
    .line 33
    iget-object p1, p1, Lcom/android/server/telecom/TelecomLoaderService;->mLock:Ljava/lang/Object;

    .line 34
    .line 35
    monitor-enter p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :try_start_1
    const-class p2, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;

    .line 37
    .line 38
    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    check-cast p2, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;

    .line 43
    .line 44
    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    .line 45
    .line 46
    iget-object v1, v0, Lcom/android/server/telecom/TelecomLoaderService;->mDefaultSimCallManagerRequests:Landroid/util/IntArray;

    .line 47
    .line 48
    if-eqz v1, :cond_0

    .line 49
    .line 50
    iget-object v0, v0, Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;

    .line 51
    .line 52
    const-string/jumbo v1, "telecom"

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Landroid/telecom/TelecomManager;

    .line 60
    .line 61
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getSimCallManager()Landroid/telecom/PhoneAccountHandle;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    if-eqz v0, :cond_0

    .line 66
    .line 67
    iget-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    .line 68
    .line 69
    iget-object v1, v1, Lcom/android/server/telecom/TelecomLoaderService;->mDefaultSimCallManagerRequests:Landroid/util/IntArray;

    .line 70
    .line 71
    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    invoke-virtual {v0}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    add-int/lit8 v1, v1, -0x1

    .line 84
    .line 85
    :goto_0
    if-ltz v1, :cond_0

    .line 86
    .line 87
    iget-object v2, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    .line 88
    .line 89
    iget-object v2, v2, Lcom/android/server/telecom/TelecomLoaderService;->mDefaultSimCallManagerRequests:Landroid/util/IntArray;

    .line 90
    .line 91
    invoke-virtual {v2, v1}, Landroid/util/IntArray;->get(I)I

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    iget-object v3, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    .line 96
    .line 97
    iget-object v3, v3, Lcom/android/server/telecom/TelecomLoaderService;->mDefaultSimCallManagerRequests:Landroid/util/IntArray;

    .line 98
    .line 99
    invoke-virtual {v3, v1}, Landroid/util/IntArray;->remove(I)V

    .line 100
    .line 101
    .line 102
    iget-object v3, p2, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;->this$0:Lcom/android/server/pm/permission/LegacyPermissionManagerService;

    .line 103
    .line 104
    iget-object v3, v3, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 105
    .line 106
    iget-object v4, v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;

    .line 107
    .line 108
    invoke-virtual {v3, v4, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSimCallManager(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)V

    .line 109
    .line 110
    .line 111
    add-int/lit8 v1, v1, -0x1

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :catchall_0
    move-exception p0

    .line 115
    goto :goto_1

    .line 116
    :cond_0
    monitor-exit p1

    .line 117
    goto :goto_2

    .line 118
    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    :try_start_2
    throw p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 120
    :catch_0
    const-string p0, "TelecomLoaderService"

    .line 121
    .line 122
    const-string p1, "Failed linking to death."

    .line 123
    .line 124
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    :goto_2
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/telecom/TelecomLoaderService;->connectToTelecom()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
