.class public final Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$LocalService;
.super Lcom/android/server/knox/zt/devicetrust/EndpointMonitorInternal;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$LocalService;->this$0:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorInternal;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final reportApplicationBinding(JIILjava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    new-instance v8, Lcom/android/server/knox/zt/devicetrust/data/AppBindingData;

    .line 2
    .line 3
    const-wide/32 v0, 0xf4240

    .line 4
    .line 5
    .line 6
    mul-long v2, p1, v0

    .line 7
    .line 8
    const/16 v1, 0x259

    .line 9
    .line 10
    move-object v0, v8

    .line 11
    move v4, p3

    .line 12
    move v5, p4

    .line 13
    move-object v6, p5

    .line 14
    move-object v7, p6

    .line 15
    invoke-direct/range {v0 .. v7}, Lcom/android/server/knox/zt/devicetrust/data/AppBindingData;-><init>(IJIILjava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$LocalService;->this$0:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;

    .line 19
    .line 20
    iget-wide p1, p1, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mBootTimeNanos:J

    .line 21
    .line 22
    invoke-virtual {v8, p1, p2}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->adjustTime(J)Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$LocalService;->this$0:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mSession:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;

    .line 29
    .line 30
    const/4 p2, 0x7

    .line 31
    invoke-virtual {p0, p2, p1}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;->findAndHandle(ILcom/android/server/knox/zt/devicetrust/data/EndpointData;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final reportApplicationDying(JIILjava/lang/String;J)V
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    new-instance v10, Lcom/android/server/knox/zt/devicetrust/data/AppDyingData;

    .line 3
    .line 4
    const-wide/32 v1, 0xf4240

    .line 5
    .line 6
    .line 7
    mul-long v3, p1, v1

    .line 8
    .line 9
    const/16 v2, 0x25a

    .line 10
    .line 11
    move-object v1, v10

    .line 12
    move v5, p3

    .line 13
    move v6, p4

    .line 14
    move-object/from16 v7, p5

    .line 15
    .line 16
    move-wide/from16 v8, p6

    .line 17
    .line 18
    invoke-direct/range {v1 .. v9}, Lcom/android/server/knox/zt/devicetrust/data/AppDyingData;-><init>(IJIILjava/lang/String;J)V

    .line 19
    .line 20
    .line 21
    iget-object v1, v0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$LocalService;->this$0:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;

    .line 22
    .line 23
    iget-wide v1, v1, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mBootTimeNanos:J

    .line 24
    .line 25
    invoke-virtual {v10, v1, v2}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->adjustTime(J)Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object v0, v0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$LocalService;->this$0:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mSession:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;

    .line 32
    .line 33
    const/4 v2, 0x7

    .line 34
    invoke-virtual {v0, v2, v1}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;->findAndHandle(ILcom/android/server/knox/zt/devicetrust/data/EndpointData;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
