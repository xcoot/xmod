.class public interface abstract Lcom/android/server/job/controllers/idle/IdlenessTracker;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public abstract dump(Landroid/util/proto/ProtoOutputStream;)V
.end method

.method public abstract dump(Ljava/io/PrintWriter;)V
.end method

.method public abstract dumpConstants(Landroid/util/IndentingPrintWriter;)V
.end method

.method public abstract isIdle()Z
.end method

.method public abstract onBatteryStateChanged(ZZ)V
.end method

.method public abstract processConstant(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;)V
.end method

.method public abstract startTracking(Landroid/content/Context;Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/IdleController;)V
.end method
