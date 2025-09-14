.class public Lcom/android/server/SerialService;
.super Landroid/hardware/ISerialManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mInternal:Lcom/android/server/SerialService$1;

.field public final mSerialPorts:Ljava/util/LinkedHashMap;


# direct methods
.method public static synthetic $r8$lambda$890bigx2NlJpRPl5icDsjvKnAIY(Lcom/android/server/SerialService;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SerialService;->native_open(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-static {p1}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Landroid/hardware/ISerialManager$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 8
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 10
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 13
    iput-object v0, p0, Lcom/android/server/SerialService;->mSerialPorts:Ljava/util/LinkedHashMap;

    .line 15
    new-instance v1, Lcom/android/server/SerialService$1;

    .line 17
    invoke-direct {v1, p0}, Lcom/android/server/SerialService$1;-><init>(Lcom/android/server/SerialService;)V

    .line 20
    iput-object v1, p0, Lcom/android/server/SerialService;->mInternal:Lcom/android/server/SerialService$1;

    .line 22
    monitor-enter v0

    .line 23
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 26
    move-result-object p1

    .line 27
    const v1, 0x107015e

    .line 30
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    array-length v1, p1

    .line 35
    const/4 v2, 0x0

    .line 36
    :goto_0
    if-ge v2, v1, :cond_0

    .line 38
    aget-object v3, p1, v2

    .line 40
    iget-object v4, p0, Lcom/android/server/SerialService;->mSerialPorts:Ljava/util/LinkedHashMap;

    .line 42
    new-instance v5, Lcom/android/server/SerialService$$ExternalSyntheticLambda0;

    .line 44
    invoke-direct {v5, p0, v3}, Lcom/android/server/SerialService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/SerialService;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v4, v3, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    add-int/lit8 v2, v2, 0x1

    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    goto :goto_1

    .line 55
    :cond_0
    monitor-exit v0

    .line 56
    return-void

    .line 57
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    throw p0
.end method

.method private native native_open(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
.end method


# virtual methods
.method public final getSerialPorts()[Ljava/lang/String;
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/hardware/ISerialManager$Stub;->getSerialPorts_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/SerialService;->mSerialPorts:Ljava/util/LinkedHashMap;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    iget-object p0, p0, Lcom/android/server/SerialService;->mSerialPorts:Ljava/util/LinkedHashMap;

    .line 14
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 17
    move-result-object p0

    .line 18
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object p0

    .line 22
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_2

    .line 28
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Ljava/lang/String;

    .line 34
    const-string/jumbo v3, "virtual:"

    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 40
    move-result v3

    .line 41
    if-nez v3, :cond_1

    .line 43
    new-instance v3, Ljava/io/File;

    .line 45
    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_0

    .line 54
    goto :goto_1

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto :goto_2

    .line 57
    :cond_1
    :goto_1
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    goto :goto_0

    .line 61
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 64
    move-result p0

    .line 65
    new-array p0, p0, [Ljava/lang/String;

    .line 67
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 70
    move-result-object p0

    .line 71
    check-cast p0, [Ljava/lang/String;

    .line 73
    monitor-exit v0

    .line 74
    return-object p0

    .line 75
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    throw p0
.end method

.method public final openSerialPort(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 3

    .line 1
    const-string v0, "Invalid serial port "

    .line 3
    invoke-super {p0}, Landroid/hardware/ISerialManager$Stub;->openSerialPort_enforcePermission()V

    .line 6
    iget-object v1, p0, Lcom/android/server/SerialService;->mSerialPorts:Ljava/util/LinkedHashMap;

    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/android/server/SerialService;->mSerialPorts:Ljava/util/LinkedHashMap;

    .line 11
    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Ljava/util/function/Supplier;

    .line 17
    if-eqz p0, :cond_0

    .line 19
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Landroid/os/ParcelFileDescriptor;

    .line 25
    monitor-exit v1

    .line 26
    return-object p0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    .line 33
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 46
    throw p0

    .line 47
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    throw p0
.end method
