.class public final synthetic Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/TaskFragment;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/io/PrintWriter;

.field public final synthetic f$3:Ljava/lang/Runnable;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Z

.field public final synthetic f$6:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TaskFragment;Ljava/io/PrintWriter;Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda15;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda15;->f$0:Lcom/android/server/wm/TaskFragment;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda15;->f$1:Z

    .line 8
    .line 9
    iput-object p2, p0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda15;->f$2:Ljava/io/PrintWriter;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda15;->f$3:Ljava/lang/Runnable;

    .line 12
    .line 13
    iput-object p4, p0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda15;->f$4:Ljava/lang/String;

    .line 14
    .line 15
    iput-boolean p5, p0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda15;->f$5:Z

    .line 16
    .line 17
    iput-object p6, p0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda15;->f$6:Ljava/lang/String;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda15;->f$0:Lcom/android/server/wm/TaskFragment;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda15;->f$1:Z

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda15;->f$2:Ljava/io/PrintWriter;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda15;->f$3:Ljava/lang/Runnable;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda15;->f$4:Ljava/lang/String;

    .line 10
    .line 11
    iget-boolean v5, p0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda15;->f$5:Z

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda15;->f$6:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 21
    .line 22
    .line 23
    :cond_0
    if-eqz v3, :cond_1

    .line 24
    .line 25
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-virtual {v0, v2, v4, p0, v5}, Lcom/android/server/wm/TaskFragment;->dumpInner(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
