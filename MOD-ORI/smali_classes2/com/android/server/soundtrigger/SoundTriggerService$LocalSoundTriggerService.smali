.class public final Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/soundtrigger/SoundTriggerService;


# direct methods
.method public constructor <init>(Lcom/android/server/soundtrigger/SoundTriggerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final attach(Landroid/os/IBinder;Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;Z)Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService$SessionImpl;
    .locals 8

    .line 1
    invoke-static {}, Landroid/media/permission/IdentityContext;->getNonNull()Landroid/media/permission/Identity;

    .line 2
    .line 3
    .line 4
    move-result-object v5

    .line 5
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/android/server/soundtrigger/SoundTriggerService;->mSessionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    .line 14
    .line 15
    sget-object v3, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent$Type;->ATTACH:Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent$Type;

    .line 16
    .line 17
    new-instance v4, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-object v6, v5, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v6, "#"

    .line 28
    .line 29
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    const/4 v7, 0x0

    .line 40
    invoke-direct {v2, v3, v4, v7}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent$Type;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v3, v0, Lcom/android/server/soundtrigger/SoundTriggerService;->mServiceEventLogger:Lcom/android/server/utils/EventLogger;

    .line 44
    .line 45
    invoke-virtual {v3, v2}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 46
    .line 47
    .line 48
    new-instance v4, Lcom/android/server/utils/EventLogger;

    .line 49
    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v3, "LocalSoundTriggerEventLogger for package: "

    .line 53
    .line 54
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object v3, v5, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    .line 58
    .line 59
    const-string v7, " - "

    .line 60
    .line 61
    invoke-static {v1, v3, v6, v7, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 62
    .line 63
    .line 64
    iget v1, v5, Landroid/media/permission/Identity;->uid:I

    .line 65
    .line 66
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string/jumbo v1, "|"

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget v1, v5, Landroid/media/permission/Identity;->pid:I

    .line 76
    .line 77
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    const/16 v2, 0x80

    .line 85
    .line 86
    invoke-direct {v4, v2, v1}, Lcom/android/server/utils/EventLogger;-><init>(ILjava/lang/String;)V

    .line 87
    .line 88
    .line 89
    new-instance v6, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService$SessionImpl;

    .line 90
    .line 91
    invoke-virtual {v0, p2, v4, p3}, Lcom/android/server/soundtrigger/SoundTriggerService;->newSoundTriggerHelper(Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;Lcom/android/server/utils/EventLogger;Z)Lcom/android/server/soundtrigger/SoundTriggerHelper;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    move-object v0, v6

    .line 96
    move-object v1, p0

    .line 97
    move-object v3, p1

    .line 98
    invoke-direct/range {v0 .. v5}, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService$SessionImpl;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;Lcom/android/server/soundtrigger/SoundTriggerHelper;Landroid/os/IBinder;Lcom/android/server/utils/EventLogger;Landroid/media/permission/Identity;)V

    .line 99
    .line 100
    .line 101
    return-object v6
.end method
