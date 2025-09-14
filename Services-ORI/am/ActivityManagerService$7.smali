.class public final Lcom/android/server/am/ActivityManagerService$7;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field public final synthetic val$app:Lcom/android/server/am/ProcessRecord;

.field public final synthetic val$pid:I


# direct methods
.method public constructor <init>(ILcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$7;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 5
    .line 6
    iput p1, p0, Lcom/android/server/am/ActivityManagerService$7;->val$pid:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$7;->val$app:Lcom/android/server/am/ProcessRecord;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$7;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mBinderStatsService:Lcom/android/server/BinderCallsStatsService$Internal;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    const-class v1, Lcom/android/server/BinderCallsStatsService$Internal;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/android/server/BinderCallsStatsService$Internal;

    .line 14
    .line 15
    iput-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mBinderStatsService:Lcom/android/server/BinderCallsStatsService$Internal;

    .line 16
    .line 17
    :cond_0
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBinderStatsService:Lcom/android/server/BinderCallsStatsService$Internal;

    .line 18
    .line 19
    iget v1, p0, Lcom/android/server/am/ActivityManagerService$7;->val$pid:I

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$7;->val$app:Lcom/android/server/am/ProcessRecord;

    .line 22
    .line 23
    iget v2, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/BinderCallsStatsService$Internal;->reportProcessDied(IILjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
