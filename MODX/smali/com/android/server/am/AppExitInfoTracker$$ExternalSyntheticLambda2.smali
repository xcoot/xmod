.class public final synthetic Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/am/AppExitInfoTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/AppExitInfoTracker;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/AppExitInfoTracker;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 3
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/AppExitInfoTracker;

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    const-string/jumbo v0, "sys.lmk.reportkills"

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 18
    move-result v0

    .line 19
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    const-string/jumbo v1, "persist.sys.lmk.reportkills"

    .line 26
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Lcom/android/server/am/AppExitInfoTracker;->loadExistingProcessExitInfo()V

    .line 32
    return-void

    .line 33
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/am/AppExitInfoTracker;->persistProcessExitInfo()V

    .line 36
    return-void

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
