.class public final Lcom/android/server/am/ActivityManagerService$6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic val$app:Lcom/android/server/am/ProcessRecord;

.field public final synthetic val$cpuTime:J

.field public final synthetic val$dyingTime:J

.field public final synthetic val$pid:I


# direct methods
.method public constructor <init>(JILcom/android/server/am/ProcessRecord;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/android/server/am/ActivityManagerService$6;->val$dyingTime:J

    .line 5
    .line 6
    iput p3, p0, Lcom/android/server/am/ActivityManagerService$6;->val$pid:I

    .line 7
    .line 8
    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$6;->val$app:Lcom/android/server/am/ProcessRecord;

    .line 9
    .line 10
    iput-wide p5, p0, Lcom/android/server/am/ActivityManagerService$6;->val$cpuTime:J

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    invoke-static {}, Lcom/android/server/knox/zt/devicetrust/AppMonitor;->get()Lcom/android/server/knox/zt/devicetrust/AppMonitor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-wide v1, p0, Lcom/android/server/am/ActivityManagerService$6;->val$dyingTime:J

    .line 6
    .line 7
    iget v3, p0, Lcom/android/server/am/ActivityManagerService$6;->val$pid:I

    .line 8
    .line 9
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$6;->val$app:Lcom/android/server/am/ProcessRecord;

    .line 10
    .line 11
    iget v5, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 12
    .line 13
    iget-object v6, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 14
    .line 15
    iget-wide v7, p0, Lcom/android/server/am/ActivityManagerService$6;->val$cpuTime:J

    .line 16
    .line 17
    move v4, v5

    .line 18
    move-object v5, v6

    .line 19
    move-wide v6, v7

    .line 20
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/knox/zt/devicetrust/AppMonitor;->reportApplicationDying(JIILjava/lang/String;J)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
