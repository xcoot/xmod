.class public final synthetic Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DisplayPolicy;

.field public final synthetic f$1:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayPolicy;Ljava/util/function/Consumer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/wm/DisplayPolicy;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda14;->f$1:Ljava/util/function/Consumer;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/wm/DisplayPolicy;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda14;->f$1:Ljava/util/function/Consumer;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
