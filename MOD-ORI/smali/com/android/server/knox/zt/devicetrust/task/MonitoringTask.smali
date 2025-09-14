.class public abstract Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mBootTimeNanos:J

.field public final mExtras:I

.field public volatile mFilter:Ljava/util/function/Predicate;

.field public final mFlags:I

.field public volatile mListener:Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;

.field public final mMode:I

.field public final mNative:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;

.field public final mType:I

.field public final mUid:I


# direct methods
.method public constructor <init>(IIIIILcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;Ljava/util/function/Predicate;Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mType:I

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mUid:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mMode:I

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mFlags:I

    .line 11
    .line 12
    iput p5, p0, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mExtras:I

    .line 13
    .line 14
    iget-wide p1, p8, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mBootTimeNanos:J

    .line 15
    .line 16
    iput-wide p1, p0, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mBootTimeNanos:J

    .line 17
    .line 18
    iget-object p1, p8, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mNative:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;

    .line 19
    .line 20
    iput-object p1, p0, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mNative:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;

    .line 21
    .line 22
    invoke-virtual {p0, p6}, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->ensureListener(Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;)Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mListener:Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;

    .line 27
    .line 28
    invoke-virtual {p0, p7}, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->ensureFilter(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mFilter:Ljava/util/function/Predicate;

    .line 33
    .line 34
    return-void
.end method

.method public static synthetic lambda$ensureFilter$0(Lcom/android/server/knox/zt/devicetrust/data/EndpointData;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method


# virtual methods
.method public final checkPermission(I)Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mUid:I

    .line 2
    .line 3
    if-ne p0, p1, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
.end method

.method public final ensureFilter(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask$$ExternalSyntheticLambda0;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    :goto_0
    return-object p1
.end method

.method public final ensureListener(Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;)Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener$Default;

    .line 5
    .line 6
    invoke-direct {p1}, Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener$Default;-><init>()V

    .line 7
    .line 8
    .line 9
    :goto_0
    return-object p1
.end method

.method public final getBootTimeNanos()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mBootTimeNanos:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getExtras()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mExtras:I

    .line 2
    .line 3
    return p0
.end method

.method public final getFilter()Ljava/util/function/Predicate;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mFilter:Ljava/util/function/Predicate;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getFlags()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mFlags:I

    .line 2
    .line 3
    return p0
.end method

.method public final getListener()Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mListener:Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getMode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mMode:I

    .line 2
    .line 3
    return p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->getTag()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final getNative()Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mNative:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final getType()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mType:I

    .line 2
    .line 3
    return p0
.end method

.method public final getUid()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mUid:I

    .line 2
    .line 3
    return p0
.end method

.method public final onEvent(Lcom/android/server/knox/zt/devicetrust/data/EndpointData;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mFilter:Ljava/util/function/Predicate;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mListener:Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mMode:I

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    if-eq v1, v2, :cond_4

    .line 19
    .line 20
    const/4 v2, 0x2

    .line 21
    if-eq v1, v2, :cond_3

    .line 22
    .line 23
    const/4 v2, 0x3

    .line 24
    if-eq v1, v2, :cond_2

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mType:I

    .line 28
    .line 29
    iget-wide v2, p0, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mBootTimeNanos:J

    .line 30
    .line 31
    invoke-virtual {p1, v2, v3}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->adjustTime(J)Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iget p0, p0, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mExtras:I

    .line 36
    .line 37
    invoke-virtual {p1, p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->updateExtras(I)Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->toBundle()Landroid/os/Bundle;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-interface {v0, v1, p0}, Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;->onEvent(ILandroid/os/Bundle;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mType:I

    .line 50
    .line 51
    iget-wide v2, p0, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mBootTimeNanos:J

    .line 52
    .line 53
    invoke-virtual {p1, v2, v3}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->adjustTime(J)Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iget p0, p0, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mExtras:I

    .line 58
    .line 59
    invoke-virtual {p1, p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->updateExtras(I)Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->toJson()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-interface {v0, v1, p0}, Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;->onEventGeneralized(ILjava/lang/String;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_4
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mType:I

    .line 72
    .line 73
    iget-wide v2, p0, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mBootTimeNanos:J

    .line 74
    .line 75
    invoke-virtual {p1, v2, v3}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->adjustTime(J)Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    iget p0, p0, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mExtras:I

    .line 80
    .line 81
    invoke-virtual {p1, p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->updateExtras(I)Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->toLine()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-interface {v0, v1, p0}, Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;->onEventSimplified(ILjava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :goto_0
    return-void
.end method

.method public abstract onMonitored()V
.end method

.method public onTransactionFailure(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->getTag()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final run()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->onMonitored()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
