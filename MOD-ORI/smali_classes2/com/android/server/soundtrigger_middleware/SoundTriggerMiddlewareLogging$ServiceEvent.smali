.class public final Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent;
.super Lcom/android/server/utils/EventLogger$Event;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mException:Ljava/lang/Exception;

.field public final mPackageName:Ljava/lang/String;

.field public final mParams:[Ljava/lang/Object;

.field public final mReturnValue:Ljava/lang/Object;

.field public final mType:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent$Type;


# direct methods
.method public varargs constructor <init>(Ljava/lang/Exception;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent$Type;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/server/utils/EventLogger$Event;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent;->mException:Ljava/lang/Exception;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent;->mType:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent$Type;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent;->mPackageName:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent;->mReturnValue:Ljava/lang/Object;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent;->mParams:[Ljava/lang/Object;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final eventToString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent;->mType:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent$Type;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v1, " [client= "

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent;->mPackageName:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/android/server/soundtrigger_middleware/ObjectPrinter;->print$1(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    const-string v1, "] ("

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    :goto_0
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent;->mParams:[Ljava/lang/Object;

    .line 29
    .line 30
    array-length v3, v2

    .line 31
    if-ge v1, v3, :cond_1

    .line 32
    .line 33
    if-lez v1, :cond_0

    .line 34
    .line 35
    const-string v3, ", "

    .line 36
    .line 37
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    :cond_0
    aget-object v2, v2, v1

    .line 41
    .line 42
    invoke-static {v0, v2}, Lcom/android/server/soundtrigger_middleware/ObjectPrinter;->print$1(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    add-int/lit8 v1, v1, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const-string v1, ") -> "

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent;->mException:Ljava/lang/Exception;

    .line 54
    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    const-string v1, "ERROR: "

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent;->mException:Ljava/lang/Exception;

    .line 63
    .line 64
    invoke-static {v0, p0}, Lcom/android/server/soundtrigger_middleware/ObjectPrinter;->print$1(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent;->mReturnValue:Ljava/lang/Object;

    .line 69
    .line 70
    invoke-static {v0, p0}, Lcom/android/server/soundtrigger_middleware/ObjectPrinter;->print$1(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    return-object p0
.end method

.method public final printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent;->eventToString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent;->mException:Ljava/lang/Exception;

    .line 6
    .line 7
    if-eqz p1, :cond_2

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-eq p1, v2, :cond_1

    .line 11
    .line 12
    const/4 v2, 0x2

    .line 13
    if-eq p1, v2, :cond_0

    .line 14
    .line 15
    invoke-static {p2, v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-static {p2, v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-static {p2, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    invoke-static {p2, v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28
    .line 29
    .line 30
    :goto_0
    return-object p0
.end method
