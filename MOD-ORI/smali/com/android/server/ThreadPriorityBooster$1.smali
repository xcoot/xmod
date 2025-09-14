.class public final Lcom/android/server/ThreadPriorityBooster$1;
.super Ljava/lang/ThreadLocal;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final initialValue()Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/server/ThreadPriorityBooster$PriorityState;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/server/ThreadPriorityBooster$PriorityState;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method
