.class public interface abstract Lcom/android/server/wm/TransitionTracer;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public abstract isTracing()Z
.end method

.method public abstract logAbortedTransition(Lcom/android/server/wm/Transition;)V
.end method

.method public abstract logFinishedTransition(Lcom/android/server/wm/Transition;)V
.end method

.method public abstract logRemovingStartingWindow(Lcom/android/server/wm/StartingData;)V
.end method

.method public abstract logSentTransition(Lcom/android/server/wm/Transition;Ljava/util/ArrayList;)V
.end method

.method public abstract saveForBugreport(Ljava/io/PrintWriter;)V
.end method

.method public abstract startTrace(Ljava/io/PrintWriter;)V
.end method

.method public abstract stopTrace(Ljava/io/PrintWriter;)V
.end method
