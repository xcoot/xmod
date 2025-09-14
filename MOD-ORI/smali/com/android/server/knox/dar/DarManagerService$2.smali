.class public final Lcom/android/server/knox/dar/DarManagerService$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic val$bindingTime:J

.field public final synthetic val$label:Ljava/lang/String;

.field public final synthetic val$pid:I

.field public final synthetic val$procName:Ljava/lang/String;

.field public final synthetic val$uid:I


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p5, p0, Lcom/android/server/knox/dar/DarManagerService$2;->val$bindingTime:J

    .line 5
    .line 6
    iput p1, p0, Lcom/android/server/knox/dar/DarManagerService$2;->val$pid:I

    .line 7
    .line 8
    iput p2, p0, Lcom/android/server/knox/dar/DarManagerService$2;->val$uid:I

    .line 9
    .line 10
    iput-object p3, p0, Lcom/android/server/knox/dar/DarManagerService$2;->val$procName:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p4, p0, Lcom/android/server/knox/dar/DarManagerService$2;->val$label:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    invoke-static {}, Lcom/android/server/knox/zt/devicetrust/AppMonitor;->get()Lcom/android/server/knox/zt/devicetrust/AppMonitor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-wide v1, p0, Lcom/android/server/knox/dar/DarManagerService$2;->val$bindingTime:J

    .line 6
    .line 7
    iget v3, p0, Lcom/android/server/knox/dar/DarManagerService$2;->val$pid:I

    .line 8
    .line 9
    iget v4, p0, Lcom/android/server/knox/dar/DarManagerService$2;->val$uid:I

    .line 10
    .line 11
    iget-object v5, p0, Lcom/android/server/knox/dar/DarManagerService$2;->val$procName:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v6, p0, Lcom/android/server/knox/dar/DarManagerService$2;->val$label:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/knox/zt/devicetrust/AppMonitor;->reportApplicationBinding(JIILjava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
