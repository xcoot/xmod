.class public final Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$1;
.super Landroid/app/IProcessObserver$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$1;->this$0:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onForegroundActivitiesChanged(IIZ)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onForegroundServicesChanged(III)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onProcessDied(II)V
    .locals 1

    .line 1
    const/16 v0, 0x3e8

    .line 2
    .line 3
    if-ne p2, v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$1;->this$0:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mSession:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;

    .line 8
    .line 9
    invoke-virtual {v0, p2}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;->containsWithUid(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$1;->this$0:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;

    .line 16
    .line 17
    iget v0, v0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mKztFrameworkPid:I

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$1;->this$0:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;

    .line 22
    .line 23
    iget v0, v0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mKztFrameworkPid:I

    .line 24
    .line 25
    if-ne v0, p1, :cond_0

    .line 26
    .line 27
    iget-object p1, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$1;->this$0:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;

    .line 28
    .line 29
    invoke-virtual {p1, p2}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->stopMonitoring(I)V

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$1;->this$0:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;

    .line 33
    .line 34
    const/4 p1, 0x0

    .line 35
    iput p1, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mKztFrameworkPid:I

    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public final onProcessStarted(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method
