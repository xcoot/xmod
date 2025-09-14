.class public final Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;
.implements Lcom/android/server/soundtrigger_middleware/Dumpable;


# instance fields
.field public final mBatteryStatsInternalSupplier:Ljava/util/function/Supplier;

.field public final mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;

.field public final mDetachedSessionEventLoggers:Ljava/util/Deque;

.field public final mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

.field public final mServiceEventLogger:Lcom/android/server/utils/EventLogger;

.field public final mSessionCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mSessionEventLoggers:Ljava/util/Set;


# direct methods
.method public static -$$Nest$mstartKeyphraseEventLatencyTracking(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;Landroid/media/soundtrigger/PhraseRecognitionEvent;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Landroid/media/soundtrigger/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger/RecognitionEvent;

    .line 5
    .line 6
    iget v0, v0, Landroid/media/soundtrigger/RecognitionEvent;->status:I

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p1, Landroid/media/soundtrigger/PhraseRecognitionEvent;->phraseExtras:[Landroid/media/soundtrigger/PhraseRecognitionExtra;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v1, "KeyphraseId="

    .line 22
    .line 23
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p1, Landroid/media/soundtrigger/PhraseRecognitionEvent;->phraseExtras:[Landroid/media/soundtrigger/PhraseRecognitionExtra;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    aget-object p1, p1, v1

    .line 30
    .line 31
    iget p1, p1, Landroid/media/soundtrigger/PhraseRecognitionExtra;->id:I

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 41
    .line 42
    const/16 v1, 0x13

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionCancel(I)V

    .line 45
    .line 46
    .line 47
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 48
    .line 49
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/util/LatencyTracker;->onActionStart(ILjava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/util/LatencyTracker;Ljava/util/function/Supplier;Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/utils/EventLogger;

    .line 5
    .line 6
    const/16 v1, 0x100

    .line 7
    .line 8
    const-string v2, "Service Events"

    .line 9
    .line 10
    invoke-direct {v0, v1, v2}, Lcom/android/server/utils/EventLogger;-><init>(ILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->mServiceEventLogger:Lcom/android/server/utils/EventLogger;

    .line 14
    .line 15
    const/4 v0, 0x4

    .line 16
    invoke-static {v0}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet(I)Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iput-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->mSessionEventLoggers:Ljava/util/Set;

    .line 21
    .line 22
    new-instance v1, Ljava/util/concurrent/LinkedBlockingDeque;

    .line 23
    .line 24
    invoke-direct {v1, v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->mDetachedSessionEventLoggers:Ljava/util/Deque;

    .line 28
    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->mSessionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 36
    .line 37
    iput-object p3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;

    .line 38
    .line 39
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 40
    .line 41
    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->mBatteryStatsInternalSupplier:Ljava/util/function/Supplier;

    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public final attach(ILandroid/media/soundtrigger_middleware/ISoundTriggerCallback;Z)Landroid/media/soundtrigger_middleware/ISoundTriggerModule;
    .locals 11

    .line 1
    const-string v0, "SoundTriggerMiddlewareLogging"

    .line 2
    .line 3
    sget-object v7, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent$Type;->ATTACH:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent$Type;

    .line 4
    .line 5
    iget-object v8, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->mServiceEventLogger:Lcom/android/server/utils/EventLogger;

    .line 6
    .line 7
    const-string v1, "Session logger for: "

    .line 8
    .line 9
    :try_start_0
    invoke-static {}, Landroid/media/permission/IdentityContext;->getNonNull()Landroid/media/permission/Identity;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-object v4, v2, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-object v4, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->mSessionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 24
    .line 25
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    if-eqz p3, :cond_0

    .line 33
    .line 34
    const-string/jumbo v4, "trusted"

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception p0

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    const-string v4, ""

    .line 41
    .line 42
    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    new-instance v9, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;

    .line 50
    .line 51
    invoke-direct {v9, p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;)V

    .line 52
    .line 53
    .line 54
    new-instance v10, Lcom/android/server/utils/EventLogger;

    .line 55
    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    const/16 v3, 0x80

    .line 69
    .line 70
    invoke-direct {v10, v3, v1}, Lcom/android/server/utils/EventLogger;-><init>(ILjava/lang/String;)V

    .line 71
    .line 72
    .line 73
    new-instance v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;

    .line 74
    .line 75
    invoke-direct {v1, p0, p2, v10, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;Lcom/android/server/utils/EventLogger;Landroid/media/permission/Identity;)V

    .line 76
    .line 77
    .line 78
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;

    .line 79
    .line 80
    invoke-interface {v2, p1, v1, p3}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;->attach(ILandroid/media/soundtrigger_middleware/ISoundTriggerCallback;Z)Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    iput-object v1, v9, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    .line 85
    .line 86
    iput-object v10, v9, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 87
    .line 88
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 93
    .line 94
    .line 95
    move-result-object p3

    .line 96
    filled-new-array {v1, p2, p3}, [Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    new-instance p3, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent;

    .line 101
    .line 102
    const/4 v2, 0x0

    .line 103
    move-object v1, p3

    .line 104
    move-object v3, v7

    .line 105
    move-object v5, v9

    .line 106
    invoke-direct/range {v1 .. v6}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent;-><init>(Ljava/lang/Exception;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent$Type;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    const/4 v1, 0x0

    .line 110
    invoke-virtual {p3, v1, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v8, p3}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 114
    .line 115
    .line 116
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->mSessionEventLoggers:Ljava/util/Set;

    .line 117
    .line 118
    invoke-interface {p0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .line 120
    .line 121
    return-object v9

    .line 122
    :goto_1
    invoke-static {}, Landroid/media/permission/IdentityContext;->get()Landroid/media/permission/Identity;

    .line 123
    .line 124
    .line 125
    move-result-object p3

    .line 126
    iget-object v4, p3, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    .line 127
    .line 128
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    new-instance p1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent;

    .line 137
    .line 138
    const/4 v5, 0x0

    .line 139
    move-object v1, p1

    .line 140
    move-object v2, p0

    .line 141
    move-object v3, v7

    .line 142
    invoke-direct/range {v1 .. v6}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent;-><init>(Ljava/lang/Exception;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent$Type;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    const/4 p2, 0x2

    .line 146
    invoke-virtual {p1, p2, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v8, p1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 150
    .line 151
    .line 152
    throw p0
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 4

    .line 1
    const-string v0, "##Service-Wide logs:"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->mServiceEventLogger:Lcom/android/server/utils/EventLogger;

    .line 7
    .line 8
    const-string v1, "  "

    .line 9
    .line 10
    invoke-virtual {v0, p1, v1}, Lcom/android/server/utils/EventLogger;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v0, "\n##Active Session dumps:\n"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->mSessionEventLoggers:Ljava/util/Set;

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    const-string v3, ""

    .line 29
    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Lcom/android/server/utils/EventLogger;

    .line 37
    .line 38
    invoke-virtual {v2, p1, v1}, Lcom/android/server/utils/EventLogger;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const-string v0, "##Detached Session dumps:\n"

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->mDetachedSessionEventLoggers:Ljava/util/Deque;

    .line 51
    .line 52
    check-cast v0, Ljava/util/concurrent/LinkedBlockingDeque;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_1

    .line 63
    .line 64
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    check-cast v2, Lcom/android/server/utils/EventLogger;

    .line 69
    .line 70
    invoke-virtual {v2, p1, v1}, Lcom/android/server/utils/EventLogger;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_1
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;

    .line 78
    .line 79
    instance-of v0, p0, Lcom/android/server/soundtrigger_middleware/Dumpable;

    .line 80
    .line 81
    if-eqz v0, :cond_2

    .line 82
    .line 83
    check-cast p0, Lcom/android/server/soundtrigger_middleware/Dumpable;

    .line 84
    .line 85
    invoke-interface {p0, p1}, Lcom/android/server/soundtrigger_middleware/Dumpable;->dump(Ljava/io/PrintWriter;)V

    .line 86
    .line 87
    .line 88
    :cond_2
    return-void
.end method

.method public final listModules()[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;
    .locals 11

    .line 1
    const-string v0, "SoundTriggerMiddlewareLogging"

    .line 2
    .line 3
    sget-object v7, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent$Type;->LIST_MODULE:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent$Type;

    .line 4
    .line 5
    iget-object v8, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->mServiceEventLogger:Lcom/android/server/utils/EventLogger;

    .line 6
    .line 7
    const/4 v9, 0x0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;

    .line 9
    .line 10
    invoke-interface {p0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;->listModules()[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$$ExternalSyntheticLambda1;

    .line 19
    .line 20
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    new-instance v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$$ExternalSyntheticLambda2;

    .line 28
    .line 29
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    move-object v5, v1

    .line 37
    check-cast v5, [Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModulePropertySummary;

    .line 38
    .line 39
    invoke-static {}, Landroid/media/permission/IdentityContext;->get()Landroid/media/permission/Identity;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iget-object v4, v1, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    .line 44
    .line 45
    new-array v6, v9, [Ljava/lang/Object;

    .line 46
    .line 47
    new-instance v10, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent;

    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    move-object v1, v10

    .line 51
    move-object v3, v7

    .line 52
    invoke-direct/range {v1 .. v6}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent;-><init>(Ljava/lang/Exception;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent$Type;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v10, v9, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v8, v10}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    .line 61
    return-object p0

    .line 62
    :catch_0
    move-exception p0

    .line 63
    invoke-static {}, Landroid/media/permission/IdentityContext;->get()Landroid/media/permission/Identity;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    iget-object v4, v1, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    .line 68
    .line 69
    new-array v6, v9, [Ljava/lang/Object;

    .line 70
    .line 71
    new-instance v9, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent;

    .line 72
    .line 73
    const/4 v5, 0x0

    .line 74
    move-object v1, v9

    .line 75
    move-object v2, p0

    .line 76
    move-object v3, v7

    .line 77
    invoke-direct/range {v1 .. v6}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent;-><init>(Ljava/lang/Exception;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent$Type;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    const/4 v1, 0x2

    .line 81
    invoke-virtual {v9, v1, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v8, v9}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 85
    .line 86
    .line 87
    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
