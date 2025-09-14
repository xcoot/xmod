.class public abstract Lcom/android/server/wm/LegacyTransitionTracer$LogAndPrintln;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static -$$Nest$sme(Ljava/io/PrintWriter;)V
    .locals 2

    .line 1
    const-string v0, "TransitionTracer"

    .line 2
    .line 3
    const-string v1, "Tracing is not supported on user builds."

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    const-string v0, "ERROR: Tracing is not supported on user builds."

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
