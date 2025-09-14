.class public abstract Lcom/android/server/SystemService;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->SYSTEM_SERVER:Landroid/annotation/SystemApi$Client;
.end annotation


# static fields
.field protected static final DEBUG_USER:Z = false

.field public static final PHASE_ACTIVITY_MANAGER_READY:I = 0x226

.field public static final PHASE_BOOT_COMPLETED:I = 0x3e8

.field public static final PHASE_DEVICE_SPECIFIC_SERVICES_READY:I = 0x208

.field public static final PHASE_LOCK_SETTINGS_READY:I = 0x1e0

.field public static final PHASE_SYSTEM_SERVICES_READY:I = 0x1f4

.field public static final PHASE_THIRD_PARTY_APPS_CAN_START:I = 0x258

.field public static final PHASE_WAIT_FOR_DEFAULT_DISPLAY:I = 0x64

.field public static final PHASE_WAIT_FOR_SENSOR_SERVICE:I = 0xc8


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDependencies:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/android/server/SystemService;->mContext:Landroid/content/Context;

    .line 4
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lcom/android/server/SystemService;->mDependencies:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public dumpSupportedUsers(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/SystemService;->mContext:Landroid/content/Context;

    .line 3
    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 16
    move-result v2

    .line 17
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    const/4 v2, 0x0

    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 24
    move-result v3

    .line 25
    if-ge v2, v3, :cond_1

    .line 27
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Landroid/content/pm/UserInfo;

    .line 33
    new-instance v4, Lcom/android/server/SystemService$TargetUser;

    .line 35
    invoke-direct {v4, v3}, Lcom/android/server/SystemService$TargetUser;-><init>(Landroid/content/pm/UserInfo;)V

    .line 38
    invoke-virtual {p0, v4}, Lcom/android/server/SystemService;->isUserSupported(Lcom/android/server/SystemService$TargetUser;)Z

    .line 41
    move-result v4

    .line 42
    if-eqz v4, :cond_0

    .line 44
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    .line 46
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 59
    move-result p0

    .line 60
    if-eqz p0, :cond_2

    .line 62
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 65
    const-string p0, "No supported users"

    .line 67
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 70
    return-void

    .line 71
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 74
    move-result p0

    .line 75
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(I)V

    .line 81
    const-string p2, " supported user"

    .line 83
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 86
    const/4 p2, 0x1

    .line 87
    if-le p0, p2, :cond_3

    .line 89
    const-string/jumbo p0, "s"

    .line 92
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 95
    :cond_3
    const-string p0, ": "

    .line 97
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 103
    return-void
.end method

.method public final getBinderService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/SystemService;->mContext:Landroid/content/Context;

    .line 3
    return-object p0
.end method

.method public final getDependencies()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/SystemService;->mDependencies:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public final getLocalService(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final getManager()Lcom/android/server/SystemServiceManager;
    .locals 0

    .line 1
    const-class p0, Lcom/android/server/SystemServiceManager;

    .line 3
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/SystemServiceManager;

    .line 9
    return-object p0
.end method

.method public final getUiContext()Landroid/content/Context;
    .locals 0

    .line 1
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final isSafeMode()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getManager()Lcom/android/server/SystemServiceManager;

    .line 4
    move-result-object p0

    .line 5
    iget-boolean p0, p0, Lcom/android/server/SystemServiceManager;->mSafeMode:Z

    .line 7
    return p0
.end method

.method public isUserSupported(Lcom/android/server/SystemService$TargetUser;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public onBootPhase(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract onStart()V
.end method

.method public onUserCompletedEvent(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$UserCompletedEventType;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onUserStopped(Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onUserUnlocked(Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    return-void
.end method

.method public final publishBinderService(Ljava/lang/String;Landroid/os/IBinder;Z)V
    .locals 1

    const/16 v0, 0x8

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    return-void
.end method

.method public final publishBinderService(Ljava/lang/String;Landroid/os/IBinder;ZI)V
    .locals 0

    .line 3
    invoke-static {p1, p2, p3, p4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    return-void
.end method

.method public final publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 4
    return-void
.end method
