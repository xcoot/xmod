.class public final synthetic Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Lcom/android/server/wm/WindowProcessController;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda2;->f$1:Lcom/android/server/wm/WindowProcessController;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda2;->f$1:Lcom/android/server/wm/WindowProcessController;

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    .line 6
    .line 7
    invoke-static {p0, v0}, Lcom/android/server/am/AppStateBroadcaster;->sendApplicationStart(ILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
