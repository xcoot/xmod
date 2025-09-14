.class public Landroid/os/epic/ObjectFactory;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field private static final EPIC_AIDL_CLASS:Ljava/lang/String; = "vendor.samsung_slsi.hardware.epic.IEpicRequest/default"

.field private static final EPIC_HIDL_CLASS:Ljava/lang/String; = "vendor.samsung_slsi.hardware.epic.V1_0.IEpicRequest"

.field private static m_has_load:Z = false

.field private static m_hidl_epic_getService_func:Ljava/lang/reflect/Method;

.field private static m_hidl_epic_request_cls:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static create(I)Landroid/os/epic/IEpicObject;
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/epic/ObjectFactory;->loadAIDL()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/os/epic/EpicAIDLObject;

    invoke-direct {v0, p0}, Landroid/os/epic/EpicAIDLObject;-><init>(I)V

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Landroid/os/epic/ObjectFactory;->loadHIDL()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Landroid/os/epic/EpicHIDLObject;

    invoke-direct {v0, p0}, Landroid/os/epic/EpicHIDLObject;-><init>(I)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static create([I)Landroid/os/epic/IEpicObject;
    .locals 1

    .line 5
    invoke-static {}, Landroid/os/epic/ObjectFactory;->loadAIDL()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Landroid/os/epic/EpicAIDLObject;

    invoke-direct {v0, p0}, Landroid/os/epic/EpicAIDLObject;-><init>([I)V

    return-object v0

    .line 7
    :cond_0
    invoke-static {}, Landroid/os/epic/ObjectFactory;->loadHIDL()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    new-instance v0, Landroid/os/epic/EpicHIDLObject;

    invoke-direct {v0, p0}, Landroid/os/epic/EpicHIDLObject;-><init>([I)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static loadAIDL()Z
    .locals 1

    .line 1
    const-string/jumbo v0, "vendor.samsung_slsi.hardware.epic.IEpicRequest/default"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return v0
.end method

.method public static loadHIDL()Z
    .locals 6

    .line 1
    const-class v0, Landroid/os/epic/ObjectFactory;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    :try_start_0
    sget-object v4, Landroid/os/epic/ObjectFactory;->m_hidl_epic_request_cls:Ljava/lang/Class;

    .line 8
    .line 9
    if-nez v4, :cond_0

    .line 10
    .line 11
    sget-boolean v4, Landroid/os/epic/ObjectFactory;->m_has_load:Z

    .line 12
    .line 13
    if-nez v4, :cond_0

    .line 14
    .line 15
    sput-boolean v1, Landroid/os/epic/ObjectFactory;->m_has_load:Z

    .line 16
    .line 17
    new-array v4, v3, [Ljava/lang/Class;

    .line 18
    .line 19
    const-string/jumbo v4, "vendor.samsung_slsi.hardware.epic.V1_0.IEpicRequest"

    .line 20
    .line 21
    .line 22
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    sput-object v4, Landroid/os/epic/ObjectFactory;->m_hidl_epic_request_cls:Ljava/lang/Class;

    .line 27
    .line 28
    const-string/jumbo v5, "getService"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v4, v5, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    sput-object v4, Landroid/os/epic/ObjectFactory;->m_hidl_epic_getService_func:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception v1

    .line 39
    goto :goto_3

    .line 40
    :catch_0
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    :try_start_2
    sget-object v0, Landroid/os/epic/ObjectFactory;->m_hidl_epic_getService_func:Ljava/lang/reflect/Method;

    .line 42
    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_1
    invoke-virtual {v0, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    move v1, v3

    .line 54
    :goto_1
    move v3, v1

    .line 55
    goto :goto_2

    .line 56
    :catch_1
    const-string v0, "ObjectFactory"

    .line 57
    .line 58
    const-string/jumbo v1, "failed to get HIDL request"

    .line 59
    .line 60
    .line 61
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    :goto_2
    return v3

    .line 65
    :goto_3
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 66
    throw v1
.end method
