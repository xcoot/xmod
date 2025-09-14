.class public final synthetic Lcom/android/server/wm/Task$$ExternalSyntheticLambda54;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/Task;

.field public final synthetic f$1:Lcom/android/server/wm/ActivityRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda54;->f$0:Lcom/android/server/wm/Task;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda54;->f$1:Lcom/android/server/wm/ActivityRecord;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda54;->f$0:Lcom/android/server/wm/Task;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda54;->f$1:Lcom/android/server/wm/ActivityRecord;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string/jumbo v2, "updateOomAdjProcess "

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-wide/16 v2, 0x20

    .line 26
    .line 27
    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, v0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v0, p0}, Landroid/app/ActivityManagerInternal;->updateOomAdjProcess(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 40
    .line 41
    .line 42
    return-void
.end method
