.class public final Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;


# instance fields
.field public final mModules:[Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;


# direct methods
.method public constructor <init>([Lcom/android/server/soundtrigger_middleware/HalFactory;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    array-length v1, p1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    .line 9
    .line 10
    array-length v1, p1

    .line 11
    const/4 v2, 0x0

    .line 12
    move v3, v2

    .line 13
    :goto_0
    if-ge v3, v1, :cond_0

    .line 14
    .line 15
    aget-object v4, p1, v3

    .line 16
    .line 17
    :try_start_0
    new-instance v5, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    .line 18
    .line 19
    invoke-direct {v5, v4, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;-><init>(Lcom/android/server/soundtrigger_middleware/HalFactory;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :catch_0
    move-exception v4

    .line 27
    const-string v5, "SoundTriggerMiddlewareImpl"

    .line 28
    .line 29
    const-string v6, "Failed to add a SoundTriggerModule instance"

    .line 30
    .line 31
    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32
    .line 33
    .line 34
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    new-array p1, v2, [Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    .line 38
    .line 39
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, [Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    .line 44
    .line 45
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl;->mModules:[Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    .line 46
    .line 47
    return-void
.end method


# virtual methods
.method public final attach(ILandroid/media/soundtrigger_middleware/ISoundTriggerCallback;Z)Landroid/media/soundtrigger_middleware/ISoundTriggerModule;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl;->mModules:[Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    .line 2
    .line 3
    aget-object p0, p0, p1

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    new-instance p1, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    .line 7
    .line 8
    invoke-direct {p1, p0, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mActiveSessions:Ljava/util/Set;

    .line 12
    .line 13
    check-cast p2, Ljava/util/HashSet;

    .line 14
    .line 15
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    monitor-exit p0

    .line 19
    return-object p1

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    monitor-exit p0

    .line 22
    throw p1
.end method

.method public final listModules()[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl;->mModules:[Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    new-array v0, v0, [Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl;->mModules:[Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    .line 8
    .line 9
    array-length v2, v2

    .line 10
    if-ge v1, v2, :cond_0

    .line 11
    .line 12
    new-instance v2, Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;

    .line 13
    .line 14
    invoke-direct {v2}, Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;-><init>()V

    .line 15
    .line 16
    .line 17
    iput v1, v2, Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;->handle:I

    .line 18
    .line 19
    iget-object v3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl;->mModules:[Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    .line 20
    .line 21
    aget-object v3, v3, v1

    .line 22
    .line 23
    monitor-enter v3

    .line 24
    :try_start_0
    iget-object v4, v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mProperties:Landroid/media/soundtrigger/Properties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    monitor-exit v3

    .line 27
    iput-object v4, v2, Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;->properties:Landroid/media/soundtrigger/Properties;

    .line 28
    .line 29
    aput-object v2, v0, v1

    .line 30
    .line 31
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    monitor-exit v3

    .line 36
    throw p0

    .line 37
    :cond_0
    return-object v0
.end method
