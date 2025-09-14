.class public final synthetic Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(ILjava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession$$ExternalSyntheticLambda0;->f$0:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession$$ExternalSyntheticLambda0;->f$0:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    .line 4
    .line 5
    check-cast p1, Ljava/lang/Integer;

    .line 6
    .line 7
    check-cast p2, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;

    .line 8
    .line 9
    invoke-static {v0, p0, p1, p2}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;->lambda$findByUid$0(ILjava/util/List;Ljava/lang/Integer;Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
