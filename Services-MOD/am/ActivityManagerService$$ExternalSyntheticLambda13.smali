.class public final synthetic Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda13;->f$0:I

    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda13;->f$0:I

    .line 3
    check-cast p1, Lcom/android/server/am/ProcessRecord;

    .line 5
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    .line 11
    if-eqz v0, :cond_0

    .line 13
    iget p1, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 15
    invoke-static {p1, p0}, Landroid/os/Process;->sendSignal(II)V

    .line 18
    :cond_0
    return-void
.end method
