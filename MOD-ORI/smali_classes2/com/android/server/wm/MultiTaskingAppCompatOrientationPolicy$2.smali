.class public final Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/PackagesChange$PackagesTaskChangeCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy$2;->this$0:Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDumpInTask(Lcom/android/server/wm/Task;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget p0, p1, Lcom/android/server/wm/Task;->mRespectOrientationRequestOverride:I

    .line 2
    .line 3
    const/4 v0, -0x1

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string/jumbo p0, "mRespectOrientationRequestOverride="

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance p0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string p3, "0x"

    .line 19
    .line 20
    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget p1, p1, Lcom/android/server/wm/Task;->mRespectOrientationRequestOverride:I

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final updateValueToTask(Lcom/android/server/wm/Task;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy$2;->this$0:Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->onOverridesChangedIfNeededInTask(Lcom/android/server/wm/Task;Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
