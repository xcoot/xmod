.class public final synthetic Lcom/android/server/knox/zt/devicetrust/task/SchedulableMonitoringTask$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field public final synthetic f$0:Lcom/android/server/knox/zt/devicetrust/task/SchedulableMonitoringTask;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/knox/zt/devicetrust/task/SchedulableMonitoringTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/knox/zt/devicetrust/task/SchedulableMonitoringTask$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/knox/zt/devicetrust/task/SchedulableMonitoringTask;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/task/SchedulableMonitoringTask$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/knox/zt/devicetrust/task/SchedulableMonitoringTask;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/knox/zt/devicetrust/task/SchedulableMonitoringTask;->lambda$createThreadFactory$1(Ljava/lang/Runnable;)Ljava/lang/Thread;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
