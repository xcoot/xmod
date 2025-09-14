.class public final Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onStart()V
    .locals 9

    .line 1
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/android/server/soundtrigger_middleware/DefaultHalFactory;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Lcom/android/server/soundtrigger_middleware/FakeHalFactory;

    .line 12
    .line 13
    invoke-direct {v2, v0}, Lcom/android/server/soundtrigger_middleware/FakeHalFactory;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;)V

    .line 14
    .line 15
    .line 16
    filled-new-array {v1, v2}, [Lcom/android/server/soundtrigger_middleware/HalFactory;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    new-instance v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService;

    .line 21
    .line 22
    new-instance v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    new-instance v5, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;

    .line 29
    .line 30
    new-instance v6, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;

    .line 31
    .line 32
    new-instance v7, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl;

    .line 33
    .line 34
    new-instance v8, Lcom/android/server/soundtrigger_middleware/AudioSessionProviderImpl;

    .line 35
    .line 36
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-direct {v7, v1, v8}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl;-><init>([Lcom/android/server/soundtrigger_middleware/HalFactory;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider;)V

    .line 40
    .line 41
    .line 42
    invoke-direct {v6, v7}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-direct {v5, v6, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;Landroid/content/Context;)V

    .line 50
    .line 51
    .line 52
    invoke-static {v4}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    new-instance v4, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$$ExternalSyntheticLambda0;

    .line 57
    .line 58
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-direct {v3, v1, v4, v5}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;-><init>(Lcom/android/internal/util/LatencyTracker;Ljava/util/function/Supplier;Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-direct {v2, v3, v1, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;Landroid/content/Context;Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;)V

    .line 69
    .line 70
    .line 71
    const-string/jumbo v0, "soundtrigger_middleware"

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v0, v2}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 75
    .line 76
    .line 77
    return-void
.end method
